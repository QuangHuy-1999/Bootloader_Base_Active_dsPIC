/**
  Generated main.c file from MPLAB Code Configurator

  @Company
    Microchip Technology Inc.

  @File Name
    main.c

  @Summary
    This is the generated main.c using PIC24 / dsPIC33 / PIC32MM MCUs.

  @Description
    This source file provides main entry point for system initialization and application code development.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.171.1
        Device            :  dsPIC33CH512MP205
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.70
        MPLAB 	          :  MPLAB X v5.50
*/

/*
    (c) 2020 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
  Section: Included Files
*/
#include "mcc_generated_files/system.h"
#include "mcc_generated_files/slave1.h"
#define FCY 90000000 // This is the instruction clock speed, not the frequency of Osc. Currently, it's 180Mhz, and FCY = 90 MIPS
#include <libpic30.h>
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/memory/flash.h"
#include "response_packet.h"
#include "readADC.h"
#include "FIR_Filter.h"
#include "IIR_Filter.h"
#include <stdio.h>
#include <string.h>

#define ADRESSFLASH             0x4000
#define ADRESSFLASHSAMPLERATE   0x4800
#define CHECKVALUE              0x00112233
#define ACK_CMD      0x88
#define NACK_CMD     0x89

extern unsigned char ADCdataHead;
extern unsigned char ADCdataTail;
extern volatile uint16_t EEG_2SEND[ADCMAXBUFFER][36];

extern volatile uint16_t EEG_BUF_1024HZ[ADCMAXBUFFER][36]; 
extern unsigned char BUF_1024_Head;
extern unsigned char BUF_1024_Tail;
extern uint8_t Uart2_ready;
uint8_t DATA_FROM_NRF_BUF[10];
uint8_t count_data_from_nrf = 0;
uint16_t Read_Sample_Rate;
uint16_t update_setting[2];

enum APP_TOKEN_AND_COMMAND
{
    TOKEN_1 = 0x55,
    TOKEN_2 = 0xAA,
    DSPIC_DATA_FWD = 0x20,
    REQUEST_HEADSET_INFO = 0xEE,
    RESPONSE_HEADSET_INFO = 0xAD,
    DFU_REQUEST = 0x11,
    RESPONSE_ACK = 0xC1,
    NRF_DSPIC_UPDATE_SETTING = 0xE8,
    BLE_EEG_NOTIF_EN = 0x06,
    BLE_EEG_NOTIF_DIS = 0x07
};

struct DFU_STRUCT_RESPONSE response_dfu = {
    .token1 = TOKEN_1,
    .token2 = TOKEN_2,
    .function = DSPIC_DATA_FWD,
    .total_length = 0x0D,
    .function_in_data = 0x11,
    .dataLength = 0x2,
    .unlockSequence = 0,
    .address = 0,

    .cmd = RESPONSE_ACK,
    .status = ACK_CMD               
}; 

struct HEADSET_INFO_RESPONSE response_headset = {
    .token1 = TOKEN_1,
    .token2 = TOKEN_2,
    .function = RESPONSE_HEADSET_INFO,
    .total_length = 0x23,
    .type = 1, 
    .app_version_major = 0x2F,
    .app_version_minor = 0x1,
    .EEG_rate = 0x10,
    .filter = 0,  
};

struct BLE_EEG_NOTIF_OR_UPDATE_SETTING response_eeg_notif_or_update_setting = {
    .token1 = TOKEN_1,
    .token2 = TOKEN_2,
    .total_length = 2,
    .function = RESPONSE_ACK
};
/*
                         Main application
 */

void WriteFlash(void){
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    FLASH_ErasePage(ADRESSFLASH);
    FLASH_WriteDoubleWord24(ADRESSFLASH, CHECKVALUE, CHECKVALUE);
    FLASH_Lock();
    
}

void APP_UART2_Write(uint8_t* data, uint16_t length)
{
    while(length)
    {
        if (UART2_IsTxReady())
        {
            UART2_Write(*data++);
            length--;
        }
    }
    while (UART2_IsTxDone()==false);  
}

int main(void)
{
    // initialize the device
    uint16_t EEG_send[36];
    SYSTEM_Initialize();
    SLAVE1_Program();
    SLAVE1_Start();
    SS1_SetHigh();
    SS2_SetHigh();
    MUX_SEL1_SetLow();
    MUX_SEL2_SetLow();
    MUX_SEL3_SetLow();
    MUX_EN1_SetHigh(); // Mux chip activate low to select
    MUX_EN2_SetLow();
    
    FilterInit();
    __delay_ms(1);
    SCCP2_TMR_Start();
    
    EEG_Data_DATA dataSend;
    EEG_Data_DATA dataSend1;
    
    Read_Sample_Rate = (uint16_t)FLASH_ReadWord24(ADRESSFLASHSAMPLERATE);
    if(Read_Sample_Rate != 0x00000080 || Read_Sample_Rate != 0x00000100)
    {
        FLASH_Unlock(FLASH_UNLOCK_KEY);
        FLASH_ErasePage(ADRESSFLASHSAMPLERATE);
        FLASH_WriteDoubleWord24(ADRESSFLASHSAMPLERATE, 0x00000100, 0x00000100);
        FLASH_Lock();
        Read_Sample_Rate = (uint16_t)FLASH_ReadWord24(ADRESSFLASHSAMPLERATE);
    }
    
    dataSend.ProtocolA[0] = ((uint16_t)Read_Sample_Rate & 0xFFFF);
    // Send RATE SAMPLE
    SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend);
    SLAVE1_InterruptRequestGenerate();
    while(!SLAVE1_IsInterruptRequestAcknowledged());
    SLAVE1_InterruptRequestComplete();
    while(SLAVE1_IsInterruptRequestAcknowledged());
    
    while (1)
    {
        if(BUF_1024_Head != BUF_1024_Tail)
        {
            //uint16_t check_Counter;
            unsigned char localTail = BUF_1024_Tail;  // make read process atomic
            
            memcpy(dataSend.ProtocolA,&EEG_BUF_1024HZ[localTail][0],sizeof(dataSend));
            SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend);
            SLAVE1_InterruptRequestGenerate();
            while(!SLAVE1_IsInterruptRequestAcknowledged());
            SLAVE1_InterruptRequestComplete();
            while(SLAVE1_IsInterruptRequestAcknowledged());
            
            memcpy(dataSend.ProtocolA,&EEG_BUF_1024HZ[localTail][12],sizeof(dataSend));
            SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend);
            //Issue interrupt to slave
            SLAVE1_InterruptRequestGenerate();
            while(!SLAVE1_IsInterruptRequestAcknowledged());
            SLAVE1_InterruptRequestComplete();
            while(SLAVE1_IsInterruptRequestAcknowledged());
            
            memcpy(dataSend.ProtocolA,&EEG_BUF_1024HZ[localTail][24],sizeof(dataSend));
            SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend);
            SLAVE1_InterruptRequestGenerate();
            while(!SLAVE1_IsInterruptRequestAcknowledged());
            SLAVE1_InterruptRequestComplete();
            while(SLAVE1_IsInterruptRequestAcknowledged());
            
            BUF_1024_Tail = (localTail + 1) % ADCMAXBUFFER;
            
//            memcpy(dataSend1.ProtocolA,&update_setting,sizeof(update_setting));
//            SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend1);
//            SLAVE1_InterruptRequestGenerate();
//            while(!SLAVE1_IsInterruptRequestAcknowledged());
//            SLAVE1_InterruptRequestComplete();
//            while(SLAVE1_IsInterruptRequestAcknowledged());
            
        }
    
        if(Uart2_ready == 1)
        {
            while(UART2_IsRxReady())
            {
                DATA_FROM_NRF_BUF[count_data_from_nrf] = UART2_Read();
                count_data_from_nrf = count_data_from_nrf + 1;
                if(DATA_FROM_NRF_BUF[0] == TOKEN_1)
                {
                    if(DATA_FROM_NRF_BUF[1] == TOKEN_2)
                    {
                        if(count_data_from_nrf == DATA_FROM_NRF_BUF[3] + 4)
                        {
                            switch(DATA_FROM_NRF_BUF[2])
                            {
                                case DSPIC_DATA_FWD:
                                    WriteFlash();
                                    count_data_from_nrf = 0;
                                    APP_UART2_Write((uint8_t*) & response_dfu, sizeof (struct DFU_STRUCT_RESPONSE ) / sizeof (uint8_t));
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    asm("reset");
                                    break;

                                case REQUEST_HEADSET_INFO:
                                    count_data_from_nrf = 0;
                                    memset(response_headset.build_date_time,0,sizeof(response_headset.build_date_time));
                                    strcpy(response_headset.build_date_time, __DATE__);
                                    strcat(response_headset.build_date_time, " ");
                                    strcat(response_headset.build_date_time, __TIME__);
                                    response_headset.EEG_rate = (Read_Sample_Rate);
                                    printf("Build date time: %s\n", response_headset.build_date_time);
                                    printf("EEG rate: 0x%02x\n", response_headset.EEG_rate);
                                    APP_UART2_Write((uint8_t*) & response_headset, sizeof (struct HEADSET_INFO_RESPONSE ) / sizeof (uint8_t));
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    break;

                                case BLE_EEG_NOTIF_EN:
                                    count_data_from_nrf = 0; 
                                    response_eeg_notif_or_update_setting.cmd = BLE_EEG_NOTIF_EN;
                                    response_eeg_notif_or_update_setting.status = ACK_CMD;
                                    printf("Response: 0x%02x\n", response_eeg_notif_or_update_setting.status);
                                    memset(dataSend.ProtocolA,0, sizeof(dataSend));
                                    dataSend.ProtocolA[0] = 0x0001;
                                    dataSend.ProtocolA[1] = 0x0002;
                                    APP_UART2_Write((uint8_t*) & response_eeg_notif_or_update_setting, sizeof (struct BLE_EEG_NOTIF_OR_UPDATE_SETTING ) / sizeof (uint8_t));
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    break;

                                case BLE_EEG_NOTIF_DIS:
                                    count_data_from_nrf = 0; 
                                    response_eeg_notif_or_update_setting.cmd = BLE_EEG_NOTIF_DIS;
                                    response_eeg_notif_or_update_setting.status = ACK_CMD;
                                    printf("Response: 0x%02x\n", response_eeg_notif_or_update_setting.status);
                                    memset(dataSend.ProtocolA,0, sizeof(dataSend));
                                    dataSend.ProtocolA[0] = 0x0007;
                                    dataSend.ProtocolA[1] = 0x0008;
                                    APP_UART2_Write((uint8_t*) & response_eeg_notif_or_update_setting, sizeof (struct BLE_EEG_NOTIF_OR_UPDATE_SETTING ) / sizeof (uint8_t));
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    break;

                                case NRF_DSPIC_UPDATE_SETTING:
                                    count_data_from_nrf = 0; 
                                    response_eeg_notif_or_update_setting.cmd = NRF_DSPIC_UPDATE_SETTING;
                                    printf("Response: 0x%02x\n", response_eeg_notif_or_update_setting.status);
                                    if((DATA_FROM_NRF_BUF[5] | (DATA_FROM_NRF_BUF[4] << 8))== 0x0080 || (DATA_FROM_NRF_BUF[5] | (DATA_FROM_NRF_BUF[4] << 8)) == 0x0100)
                                    {
                                        response_eeg_notif_or_update_setting.status = ACK_CMD;
                                        APP_UART2_Write((uint8_t*) & response_eeg_notif_or_update_setting, sizeof (struct BLE_EEG_NOTIF_OR_UPDATE_SETTING ) / sizeof (uint8_t));
                                        // update SAMPLE RATE ()
                                        uint16_t New_Sample_Rate = ((uint16_t)DATA_FROM_NRF_BUF[4] << 8) | DATA_FROM_NRF_BUF[5];
                                        if(New_Sample_Rate != Read_Sample_Rate)
                                        {
                                            Read_Sample_Rate = New_Sample_Rate;
                                            FLASH_Unlock(FLASH_UNLOCK_KEY);
                                            FLASH_ErasePage(ADRESSFLASHSAMPLERATE);
                                            FLASH_WriteDoubleWord24(ADRESSFLASHSAMPLERATE, (uint32_t)Read_Sample_Rate, (uint32_t)Read_Sample_Rate);
                                            FLASH_Lock();
                                            asm("reset");
                                        }
                                    }

                                    else
                                    {
                                        response_eeg_notif_or_update_setting.status = NACK_CMD;
                                        APP_UART2_Write((uint8_t*) & response_eeg_notif_or_update_setting, sizeof (struct BLE_EEG_NOTIF_OR_UPDATE_SETTING ) / sizeof (uint8_t));
                                    }
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    break;

                                default :
                                    count_data_from_nrf = 0;
                                    memset(DATA_FROM_NRF_BUF,0,sizeof(DATA_FROM_NRF_BUF));
                                    break;

                            }
                        }
                    }

                    else
                    {
                        if(count_data_from_nrf == 2)
                        {
                            count_data_from_nrf = 0;
                        }
                    }
                }

                else if(DATA_FROM_NRF_BUF[0] != TOKEN_1)
                {
                    count_data_from_nrf = 0;
                }
            }

//            SLAVE1_EEG_DataWrite((EEG_Data_DATA*)&dataSend);
//            SLAVE1_InterruptRequestGenerate();
//            while(!SLAVE1_IsInterruptRequestAcknowledged());
//            SLAVE1_InterruptRequestComplete();
//            while(SLAVE1_IsInterruptRequestAcknowledged());
            Uart2_ready = 0;
        }
    }
    return 1; 
}
/**
 End of File
*/

