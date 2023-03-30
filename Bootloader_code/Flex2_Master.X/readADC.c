/*
 * File:   readADC.c
 * Author: vinh
 *
 * Created on February 20, 2023, 11:39 AM
 */

#include "readADC.h"
#include "mcc_generated_files/pin_manager.h"
#include "FIR_Filter.h"
#include "IIR_Filter.h"

#define CQCHANNELS 32
/**** Global constants: Time constants *****/
#define cq_TC 16
#define pt_TC 32
#define SQUARE_WAVE_BIT _LATA4

#define EEG_10224_PREFIX_1 0x6868
#define EEG_10224_PREFIX_2 0x6868

int peak_trough[CQCHANNELS] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
                               0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int signalQuality[CQCHANNELS];
static const unsigned char sqwv_order[32]
        = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31}; // the order of which things are to enter square wave algorithm
const unsigned char sqwv_order_unpack[32]
       // = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 0};
        = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31}; // the order of which things are to enter square wave algorithm
volatile unsigned int LastSample[32];

uint16_t Counter_1024 =0;
volatile uint16_t EEG_2SEND[ADCMAXBUFFER][36]={0};// 32 EEG data + 1 square wave data  + counter + 2 header
volatile uint16_t EEG_BUF_1024HZ[ADCMAXBUFFER][36]; // 32 EEG data + 1 square wave data
unsigned char ADCdataHead =0;
unsigned char ADCdataTail =0;
unsigned char BUF_1024_Head =0;
unsigned char BUF_1024_Tail = 0;

extern IIRTransposeFilter* IIRPostFilts[32];

void toggleSquareWave(unsigned int * samples)
{
    char i;
    int  *sigqptr = signalQuality;
    int  *PTptr = peak_trough;
    
    SQUARE_WAVE_BIT ^= 1; // toggle
    if (SQUARE_WAVE_BIT == 1) // assume this is after the trough
    {
        for (i = CQCHANNELS; i > 0; i -= 8)
        {
            //run once
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run twice
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run thrice
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run fourth
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run fifth
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run sixth
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run seventh
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
            //run eighth
            *PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) >> 5;// / pt_TC;
            //*PTptr = ((long)(*PTptr) * (pt_TC - 1) - *samples) / pt_TC;
            *sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) >> 4;// / cq_TC;
            //*sigqptr = ( (long)(*sigqptr) * (cq_TC - 1) + *PTptr ) / cq_TC;
            if (*sigqptr < 0)
            {
                *sigqptr = 0;
            }
        #if ((defined DYNAMICADAPT) && (defined USE_ADAPTIV))
            if (*sigqptr < CONNECTEDTHRESH)
            {
                dcounter = 0;
            }
        #endif
            sigqptr++;
            PTptr++;
            samples++;
            
        }
    }
    else
    {
        for(i = CQCHANNELS; --i >= 0;)
        {
            //*PTptr = ( (long)(*PTptr) * (pt_TC - 1) + *samples ) / pt_TC;
            *PTptr = ( (long)(*PTptr) * (pt_TC - 1) + *samples ) >> 5;
            PTptr++;
            samples ++;
        }
    }
}

///////Filter init funtion
void FilterInit(void)
{
    uint8_t i;
    for (i = 0; i < 32; i++)
    {
        //FIRFilterInit(FIRFilts[i]);
        IIRTransposeFilterInit(IIRPostFilts[i]);
    }    
    
}

void Mux_Select_Channel(uint8_t channel)
{
            switch(channel)
            {
                case 0:
                        MUX_SEL1_SetLow();
                        MUX_SEL2_SetLow();
                        MUX_SEL3_SetLow();
                        break;
                case 1:
                        MUX_SEL1_SetHigh();
                        MUX_SEL2_SetLow();
                        MUX_SEL3_SetLow();
                        break;
                case 2:
                        MUX_SEL1_SetLow();
                        MUX_SEL2_SetHigh();
                        MUX_SEL3_SetLow();
                        break;
                case 3:
                        MUX_SEL1_SetHigh();
                        MUX_SEL2_SetHigh();
                        MUX_SEL3_SetLow();
                        break;
                case 4:
                        MUX_SEL1_SetLow();
                        MUX_SEL2_SetLow();
                        MUX_SEL3_SetHigh();
                        break;
                case 5:
                        MUX_SEL1_SetHigh();
                        MUX_SEL2_SetLow();
                        MUX_SEL3_SetHigh();
                        break;
                case 6:
                        MUX_SEL1_SetLow();
                        MUX_SEL2_SetHigh();
                        MUX_SEL3_SetHigh();
                        break;
                case 7:
                        MUX_SEL1_SetHigh();
                        MUX_SEL2_SetHigh();
                        MUX_SEL3_SetHigh();
                        break;
                default :
                    break;

            }
}

void ProcessADCandFilter(void)
{
    //SQ_GEN_SetHigh();
    uint8_t nextChannelSelect;
    uint8_t tempADC1[3];
    uint8_t tempADC2[3];
    uint16_t ADC_value1, ADC_value2,ADC_filter1,ADC_filter2;
    int16_t rawData1, rawData2,iirData1,iirData2;
    static int16_t filtData1, filtData2;
    static uint8_t oneRoundEEGCounter=0;
    static uint8_t nSample2Send = 0;
    static uint8_t EEGcounter=0;
    static uint8_t countOdd = 0;
    static unsigned char sqwvCounter;
    //memset(dummySend,0xFF,sizeof(dummySend));
    //Start reading first ADC
    SS1_SetLow();
    SPI1_Exchange8bitBuffer(NULL,3,tempADC1);
    SS1_SetHigh();
    //Start reading the second ADC
    SS2_SetLow();
    SPI2_Exchange8bitBuffer(NULL,3,tempADC2);
    SS2_SetHigh();
    //After reading 2 SPI , need to switch to next MUX code
    oneRoundEEGCounter++;
    if(oneRoundEEGCounter == 16) // We get 32 channels at 2048Hz
    {
        oneRoundEEGCounter =0;
        countOdd++;
    }
    nextChannelSelect = (oneRoundEEGCounter+1)%16;
    if(nextChannelSelect<8)
    { 
            MUX_EN1_SetHigh(); // Mux chip activate low to select
            MUX_EN2_SetLow();
            Mux_Select_Channel(nextChannelSelect);

    } else if(nextChannelSelect <16)
    {
            MUX_EN1_SetLow(); // Mux chip activate low to select
            MUX_EN2_SetHigh();
            Mux_Select_Channel(nextChannelSelect%8);
            
    }
    
    ////////////////////////////////////////////////////////    
    ADC_value1 = (unsigned int)(((tempADC1[0] & 0x03) << 14)
                            + ((tempADC1[1] & 0xFF) << 6)
                            + ((tempADC1[2] & 0xFF) >> 2));
    
    ADC_value2 = (unsigned int)(((tempADC2[0] & 0x03) << 14)
                            + ((tempADC2[1] & 0xFF) << 6)
                            + ((tempADC2[2] & 0xFF) >> 2));
    
    ////=========== Contact quality ==============================================
    if(oneRoundEEGCounter<8)
    {
            LastSample[sqwv_order[oneRoundEEGCounter]] = ADC_value1;
            LastSample[sqwv_order[oneRoundEEGCounter+8]] = ADC_value2;
    } else // 8 - 15
    {
            LastSample[sqwv_order[oneRoundEEGCounter+8]] = ADC_value1;
            LastSample[sqwv_order[oneRoundEEGCounter+8+8]] = ADC_value2;
    }
    
    if (oneRoundEEGCounter == 15)
    {
        if (++sqwvCounter == 8)
        {
            sqwvCounter = 0;
            toggleSquareWave((unsigned int *)LastSample);
        }
    }
    //============================================================================
    //After get rawEEG data, we need filter it. Filter 1:1
    // Code filter need to be added here, 32 channels, each channel has a separated 
    
    //ADC_filter1 = ADC_value1;
    //ADC_filter2 = ADC_value2;
    ///====== This part is IIR filter =======
    rawData1 = ADC_value1 - 0x8000;
    rawData2 = ADC_value2 - 0x8000;
    if(oneRoundEEGCounter<8)
    {
        BlockIIRTransposeFilter(IIRPostFilts[oneRoundEEGCounter], &rawData1, &iirData1, 1);
        BlockIIRTransposeFilter(IIRPostFilts[oneRoundEEGCounter+8], &rawData2, &iirData2, 1);
    } else // 8 - 15
    {
        BlockIIRTransposeFilter(IIRPostFilts[oneRoundEEGCounter+8], &rawData1, &iirData1, 1);
        BlockIIRTransposeFilter(IIRPostFilts[oneRoundEEGCounter+8+8], &rawData2, &iirData2, 1);
    }
     
     //ADC_filter1 = iirData1 + 0x8000;
     //ADC_filter2 = iirData2 + 0x8000;
    //////////=========================
    //==== Second is FIR filter
     if((countOdd %2)  == 0)  /// In this, 1024 Hz to run FIR
     {
        
         filtData1 = iirData1;
         filtData2 = iirData2;
         
        ADC_filter1 = filtData1 + 0x8000;
        ADC_filter2 = filtData2 + 0x8000;
        if(oneRoundEEGCounter<8)
        {
            EEG_BUF_1024HZ[BUF_1024_Head][oneRoundEEGCounter+3] = ADC_filter1;
            EEG_BUF_1024HZ[BUF_1024_Head][oneRoundEEGCounter+3+8] = ADC_filter2;
        } else // 8-15
        {
            EEG_BUF_1024HZ[BUF_1024_Head][oneRoundEEGCounter+3+8] = ADC_filter1;
            EEG_BUF_1024HZ[BUF_1024_Head][oneRoundEEGCounter+3+8+8] = ADC_filter2;
        }
        
        
        
        if(oneRoundEEGCounter == 15)
        {
                EEG_BUF_1024HZ[BUF_1024_Head][0] = EEG_10224_PREFIX_1;
                EEG_BUF_1024HZ[BUF_1024_Head][1] = EEG_10224_PREFIX_2;
                EEG_BUF_1024HZ[BUF_1024_Head][2] = Counter_1024;
                Counter_1024++;
                if(Counter_1024 == 1024)
                {
                    Counter_1024 =0;
                }
                //EEG_BUF_1024HZ[BUF_1024_Head][35] = 0x6969; //square wave data
                EEG_BUF_1024HZ[BUF_1024_Head][35] = signalQuality[sqwv_order_unpack[Counter_1024%32]]; //square wave data


                BUF_1024_Head = (BUF_1024_Head + 1) % ADCMAXBUFFER;
                // Check for wrap-around of circular buffer. If so, drop the oldest data
                 if (BUF_1024_Head == BUF_1024_Tail)
                {
                        BUF_1024_Tail = (BUF_1024_Tail + 1) % ADCMAXBUFFER;
                }
        }
        
   }
 
    //SQ_GEN_SetLow();
}

void readADC_oneChannel(void)
{
    SS1_SetLow();
    uint8_t dataSend[3];
    uint8_t dataGet[3]={0};
    uint8_t dataIN[3]={0};
    unsigned int adc_value =0, adc_value2 =0 ;
    dataSend[0] =0xFF;
    dataSend[1] =0xFF;
    dataSend[2] =0xFF;
    SPI1_Exchange8bitBuffer(dataSend,3,dataGet);
    SS1_SetHigh();
    
    SS2_SetLow();
    SPI2_Exchange8bitBuffer(dataSend,3,dataIN);
    SS2_SetHigh();
    
    printf("Data Get 0: %d \n\r", dataGet[0]);
    printf("Data Get 1: %d \n\r", dataGet[1]);
    printf("Data Get 2: %d \n\r", dataGet[2]);
    adc_value = (unsigned int)(((dataGet[0] & 0x03) << 14)
                            + ((dataGet[1] & 0xFF) << 6)
                            + ((dataGet[2] & 0xFF) >> 2));
//    adc_value = (unsigned int)(((dataGet[0] & 0x01) << 15)
//                            + ((dataGet[1] & 0xFF) << 7)
//                            + ((dataGet[2] & 0xFF) >> 1));
//    unsigned int test = dataGet[0];
//    adc_value = (unsigned int)((test & 0x03) << 14);// + (unsigned int)((dataGet[1] & 0xFF) << 6) + (unsigned int)((dataGet[2] & 0xFF) >> 2); 
//    adc_value = (unsigned int)(
//                              ((dataGet[1] & 0xFF) << 8)
//                            + ((dataGet[2] & 0xFF)));
    printf("ADC 1: %x %u \n\r", adc_value, adc_value);
    //if(dataIN[0] == 251) printf("VINH");
    
    printf("Data IN 0: %d \n\r", dataIN[0]);
    printf("Data IN 1: %d \n\r", dataIN[1]);
    printf("Data IN 2: %d \n\r", dataIN[2]);
    adc_value2 = (unsigned int)(((dataIN[0] & 0x03) << 14)
                            + ((dataIN[1] & 0xFF) << 6)
                            + ((dataIN[2] & 0xFF) >> 2));
    printf("ADC 2: %x %u \n\r", adc_value2, adc_value2);
    
}
