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
        Device            :  dsPIC33CH512MP205S1
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
#include "mcc_generated_files/pin_manager.h"
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/mcc.h"
#include "p33ch512mp205S1.h"
#include "FIR_Filter.h"
#define FCY 100000000 // This is the instruction clock speed, not the frequency of Osc. Currently, it's 180Mhz, and FCY = 90 MIPS
#include <libpic30.h>

#define NUM_EEG_MAX_BUFF 8 // this is the same buffer with Master
#define EEG_HEADER_1 0x55AA
#define EEG_HEADER_2 0x55AA
#define SEND_DATA_RQ 0x06
#define ACK_CMD      0x88
#define NACK_CMD     0x89

#define EEG_10224_PREFIX_1 0x6868
#define EEG_10224_PREFIX_2 0x6868

#define SAMPLE_RATE 4

#define DEBUG_VINH
/*
                         Main application
 */
uint16_t EEG_BUFFER[NUM_EEG_MAX_BUFF][36];
uint16_t EEG_1024HZ[NUM_EEG_MAX_BUFF][36];
uint16_t LAST_SW_DATA[32];

extern uint8_t NRF_Data_ready;
extern uint8_t NRF_REQ_DATA[5];
uint8_t EEG_head =0;
uint8_t EEG_tail =0;
        
uint8_t EEG_1024_head =0;
uint8_t EEG_1024_tail =0;        

uint8_t NRF_request_to_send =0;

uint16_t current_count;
uint16_t past_count;
uint8_t eeg_cnt,eeg_cnt_prv;

uint16_t Real_EEG_Counter;

uint16_t SineWaveCount =0;
uint16_t SineWave[1024]={
5000,5031,5061,5092,5123,5153,5184,5215,
5245,5276,5307,5337,5368,5398,5429,5460,
5490,5521,5551,5582,5612,5642,5673,5703,
5734,5764,5794,5825,5855,5885,5915,5945,
5975,6006,6036,6066,6096,6125,6155,6185,
6215,6245,6274,6304,6334,6363,6393,6422,
6451,6481,6510,6539,6568,6598,6627,6656,
6684,6713,6742,6771,6799,6828,6857,6885,
6913,6942,6970,6998,7026,7054,7082,7110,
7138,7165,7193,7221,7248,7275,7303,7330,
7357,7384,7411,7438,7464,7491,7518,7544,
7571,7597,7623,7649,7675,7701,7727,7752,
7778,7803,7829,7854,7879,7904,7929,7954,
7978,8003,8028,8052,8076,8100,8124,8148,
8172,8196,8219,8243,8266,8289,8312,8335,
8358,8380,8403,8425,8448,8470,8492,8514,
8536,8557,8579,8600,8621,8642,8663,8684,
8705,8725,8746,8766,8786,8806,8826,8846,
8865,8884,8904,8923,8942,8961,8979,8998,
9016,9034,9052,9070,9088,9106,9123,9140,
9157,9174,9191,9208,9224,9241,9257,9273,
9289,9304,9320,9335,9350,9365,9380,9395,
9410,9424,9438,9452,9466,9480,9493,9507,
9520,9533,9546,9559,9571,9583,9596,9608,
9619,9631,9643,9654,9665,9676,9687,9697,
9708,9718,9728,9738,9748,9757,9767,9776,
9785,9794,9802,9811,9819,9827,9835,9843,
9850,9858,9865,9872,9879,9885,9892,9898,
9904,9910,9916,9921,9926,9932,9937,9941,
9946,9950,9955,9959,9962,9966,9970,9973,
9976,9979,9982,9984,9986,9989,9991,9992,
9994,9995,9997,9998,9998,9999,10000,10000,
10000,10000,10000,9999,9998,9998,9997,9995,
9994,9992,9991,9989,9986,9984,9982,9979,
9976,9973,9970,9966,9962,9959,9955,9950,
9946,9941,9937,9932,9926,9921,9916,9910,
9904,9898,9892,9885,9879,9872,9865,9858,
9850,9843,9835,9827,9819,9811,9802,9794,
9785,9776,9767,9757,9748,9738,9728,9718,
9708,9697,9687,9676,9665,9654,9643,9631,
9619,9608,9596,9583,9571,9559,9546,9533,
9520,9507,9493,9480,9466,9452,9438,9424,
9410,9395,9380,9365,9350,9335,9320,9304,
9289,9273,9257,9241,9224,9208,9191,9174,
9157,9140,9123,9106,9088,9070,9052,9034,
9016,8998,8979,8961,8942,8923,8904,8884,
8865,8846,8826,8806,8786,8766,8746,8725,
8705,8684,8663,8642,8621,8600,8579,8557,
8536,8514,8492,8470,8448,8425,8403,8380,
8358,8335,8312,8289,8266,8243,8219,8196,
8172,8148,8124,8100,8076,8052,8028,8003,
7978,7954,7929,7904,7879,7854,7829,7803,
7778,7752,7727,7701,7675,7649,7623,7597,
7571,7544,7518,7491,7464,7438,7411,7384,
7357,7330,7303,7275,7248,7221,7193,7165,
7138,7110,7082,7054,7026,6998,6970,6942,
6913,6885,6857,6828,6799,6771,6742,6713,
6684,6656,6627,6598,6568,6539,6510,6481,
6451,6422,6393,6363,6334,6304,6274,6245,
6215,6185,6155,6125,6096,6066,6036,6006,
5975,5945,5915,5885,5855,5825,5794,5764,
5734,5703,5673,5642,5612,5582,5551,5521,
5490,5460,5429,5398,5368,5337,5307,5276,
5245,5215,5184,5153,5123,5092,5061,5031,
5000,4969,4939,4908,4877,4847,4816,4785,
4755,4724,4693,4663,4632,4602,4571,4540,
4510,4479,4449,4418,4388,4358,4327,4297,
4266,4236,4206,4175,4145,4115,4085,4055,
4025,3994,3964,3934,3904,3875,3845,3815,
3785,3755,3726,3696,3666,3637,3607,3578,
3549,3519,3490,3461,3432,3402,3373,3344,
3316,3287,3258,3229,3201,3172,3143,3115,
3087,3058,3030,3002,2974,2946,2918,2890,
2862,2835,2807,2779,2752,2725,2697,2670,
2643,2616,2589,2562,2536,2509,2482,2456,
2429,2403,2377,2351,2325,2299,2273,2248,
2222,2197,2171,2146,2121,2096,2071,2046,
2022,1997,1972,1948,1924,1900,1876,1852,
1828,1804,1781,1757,1734,1711,1688,1665,
1642,1620,1597,1575,1552,1530,1508,1486,
1464,1443,1421,1400,1379,1358,1337,1316,
1295,1275,1254,1234,1214,1194,1174,1154,
1135,1116,1096,1077,1058,1039,1021,1002,
984,966,948,930,912,894,877,860,
843,826,809,792,776,759,743,727,
711,696,680,665,650,635,620,605,
590,576,562,548,534,520,507,493,
480,467,454,441,429,417,404,392,
381,369,357,346,335,324,313,303,
292,282,272,262,252,243,233,224,
215,206,198,189,181,173,165,157,
150,142,135,128,121,115,108,102,
96,90,84,79,74,68,63,59,
54,50,45,41,38,34,30,27,
24,21,18,16,14,11,9,8,
6,5,3,2,2,1,0,0,
0,0,0,1,2,2,3,5,
6,8,9,11,14,16,18,21,
24,27,30,34,38,41,45,50,
54,59,63,68,74,79,84,90,
96,102,108,115,121,128,135,142,
150,157,165,173,181,189,198,206,
215,224,233,243,252,262,272,282,
292,303,313,324,335,346,357,369,
381,392,404,417,429,441,454,467,
480,493,507,520,534,548,562,576,
590,605,620,635,650,665,680,696,
711,727,743,759,776,792,809,826,
843,860,877,894,912,930,948,966,
984,1002,1021,1039,1058,1077,1096,1116,
1135,1154,1174,1194,1214,1234,1254,1275,
1295,1316,1337,1358,1379,1400,1421,1443,
1464,1486,1508,1530,1552,1575,1597,1620,
1642,1665,1688,1711,1734,1757,1781,1804,
1828,1852,1876,1900,1924,1948,1972,1997,
2022,2046,2071,2096,2121,2146,2171,2197,
2222,2248,2273,2299,2325,2351,2377,2403,
2429,2456,2482,2509,2536,2562,2589,2616,
2643,2670,2697,2725,2752,2779,2807,2835,
2862,2890,2918,2946,2974,3002,3030,3058,
3087,3115,3143,3172,3201,3229,3258,3287,
3316,3344,3373,3402,3432,3461,3490,3519,
3549,3578,3607,3637,3666,3696,3726,3755,
3785,3815,3845,3875,3904,3934,3964,3994,
4025,4055,4085,4115,4145,4175,4206,4236,
4266,4297,4327,4358,4388,4418,4449,4479,
4510,4540,4571,4602,4632,4663,4693,4724,
4755,4785,4816,4847,4877,4908,4939,4969
};

int main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    S1SS1_SetHigh();
    //uint8_t testSPI =0;
    uint8_t count =0;
    EEG_Data_DATA dataGet;
    EEG_Data_DATA dataGet1;
    EEG_Data_DATA dataGet2;
    printf("SLAVE Start \n\r");
    
    FilterInit();
    
    while (1)
    {
            //Wait for interrupt from master    
            while(!MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledge();
            while(MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledgeComplete();  
            MASTER_EEG_DataRead((EEG_Data_DATA *)&dataGet);
            
            while(!MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledge();
            while(MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledgeComplete();  
            MASTER_EEG_DataRead((EEG_Data_DATA *)&dataGet1);
            
            while(!MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledge();
            while(MASTER_IsInterruptRequested());
            MASTER_InterruptRequestAcknowledgeComplete();  
            MASTER_EEG_DataRead((EEG_Data_DATA *)&dataGet2);
            
            
            if((dataGet.ProtocolA[0] == EEG_10224_PREFIX_1) &&(dataGet.ProtocolA[1] == EEG_10224_PREFIX_2))
            {
                memcpy(&EEG_1024HZ[EEG_1024_head][0],dataGet.ProtocolA,sizeof(dataGet));
                memcpy(&EEG_1024HZ[EEG_1024_head][12],dataGet1.ProtocolA,sizeof(dataGet1));
                memcpy(&EEG_1024HZ[EEG_1024_head][24],dataGet2.ProtocolA,sizeof(dataGet2));
 
                EEG_1024_head = (EEG_1024_head +1) % NUM_EEG_MAX_BUFF;
                if(EEG_1024_head == EEG_1024_tail)
                {
                    EEG_1024_tail = (EEG_1024_tail +1) %  NUM_EEG_MAX_BUFF;
                }
            }
            
            if(EEG_1024_head != EEG_1024_tail)
            {
                             //BlockFIRFilter(FIRFilts[oneRoundEEGCounter], &iirData1, &filtData1, 1);
                
                uint8_t localEEGTail = EEG_1024_tail;
                
                uint16_t counter_1024 = EEG_1024HZ[localEEGTail][2];
                LAST_SW_DATA[counter_1024%32] = EEG_1024HZ[localEEGTail][35];
                
                uint8_t i =0;
                for(i=0;i<32;i++)
                {
                    int16_t iirData,filtData;
                    iirData = EEG_1024HZ[localEEGTail][i+3] - 0x8000;
                    BlockFIRFilter(FIRFilts[i], &iirData, &filtData, 1);
                    //filtData = iirData;
                    EEG_1024HZ[localEEGTail][i+3] = filtData + 0x8000;
                }
                
                
#ifdef DEBUG_VINH
//                for(i=0;i<32;i++)
//                {
//                                EEG_1024HZ[localEEGTail][i+3] = 32768 + SineWave[SineWaveCount];
//                }
//                SineWaveCount++;
//                if(SineWaveCount==1024)
//                {
//                    SineWaveCount =0;
//                }
                
                NRF_request_to_send =1;
//                current_count = EEG_1024HZ[localEEGTail][2];
//                if(((current_count-1)!=past_count)&&(current_count >=1))
//                {
//                    printf("Lost 1\r\n");
//                }
//                if((current_count == 0)&&(past_count !=  1023))
//                {
//                    printf("Lost 2 \r\n");
//                }
//                    
//                past_count = current_count;
                        
#endif
                if (NRF_request_to_send == 1)
                {
                        if((EEG_1024HZ[localEEGTail][2] % SAMPLE_RATE) == 0)
                        {
                            EEG_1024HZ[localEEGTail][0] = 0x55AA;
                            EEG_1024HZ[localEEGTail][1] = 0x55AA;
                            Real_EEG_Counter++;                     
                            EEG_1024HZ[localEEGTail][2] = Real_EEG_Counter;
                            EEG_1024HZ[localEEGTail][35] = LAST_SW_DATA[Real_EEG_Counter%32];
                            
#ifdef DEBUG_VINH  
//                            uint8_t i =0;
//                            for(i=0;i<32;i++)
//                            {
//                                EEG_1024HZ[localEEGTail][i+3] = 32768 + SineWave[SineWaveCount];
//                            }
//                            SineWaveCount++;
//                            printf("%u %u\r\n",EEG_1024HZ[localEEGTail][2],EEG_1024HZ[localEEGTail][3+31]);

#endif
                            S1SS1_SetLow();
                            SPI1_Exchange8bitBuffer(&EEG_1024HZ[localEEGTail][0],sizeof(EEG_1024HZ[localEEGTail]),NULL);
                            S1SS1_SetHigh();  
                        }
                 }
                
                EEG_1024_tail = (localEEGTail + 1) % NUM_EEG_MAX_BUFF;
                        
            }            
            
            

            if(NRF_Data_ready ==1)
            {
                // Process the received data from nRF chip in NRF_BUF;
                uint8_t ReponseNRF[5];
                ReponseNRF[0] = 0x55; // fixed header
                ReponseNRF[1] = 0xAA;
                
                GetDataFromNRF();
                
                if((NRF_REQ_DATA[0] == 0x55) &&(NRF_REQ_DATA[1] == 0xAA))
                {
                    if(NRF_REQ_DATA[2] == SEND_DATA_RQ)
                    {
                        __delay_ms(1);
                        ReponseNRF[2] = ACK_CMD;
                        ReponseNRF[3] = SEND_DATA_RQ;
                        S1SS1_SetLow();
                        SPI1_Exchange8bitBuffer(ReponseNRF,5,NULL);
                        S1SS1_SetHigh();
                        EEG_tail = EEG_head;
                        NRF_request_to_send =1; // Start sending data command
                    }
                }
                NRF_Data_ready =0;
            }
    }
    return 1; 
}
/**
 End of File
*/

