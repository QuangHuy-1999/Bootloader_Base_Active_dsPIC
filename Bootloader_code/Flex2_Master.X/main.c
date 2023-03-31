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
#include "readADC.h"
#include "FIR_Filter.h"
#include "IIR_Filter.h"
#include <stdio.h>
#include <string.h>

#define ADRESSFLASH         0x4000
#define CHECKVALUE          0x00112233

extern unsigned char ADCdataHead;
extern unsigned char ADCdataTail;
extern volatile uint16_t EEG_2SEND[ADCMAXBUFFER][36];

extern volatile uint16_t EEG_BUF_1024HZ[ADCMAXBUFFER][36]; 
extern unsigned char BUF_1024_Head;
extern unsigned char BUF_1024_Tail;

/*
                         Main application
 */

void WriteFlash(){
    uint32_t write_data[2];
    
    FLASH_Unlock(FLASH_UNLOCK_KEY);
    FLASH_ErasePage(ADRESSFLASH);
    write_data[0] = 0x00112233;
    write_data[1] = 0x00112233;
    FLASH_WriteDoubleWord24(ADRESSFLASH, write_data[0], write_data[1]);
    FLASH_Lock();
    
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
    
    
    while (1)
    {
        printf("Hello a Lam\n");
        __delay_ms(100);
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
            
        }

        uint8_t data, data1 = 0xAA;
        
        if(UART1_IsRxReady())
        {
            data = UART1_Read();
            if(data == data1){
                WriteFlash();
                asm("reset");       
            }
        }
        
    }
    return 1; 
}
/**
 End of File
*/

