/*
 * File:   nrfinterface.c
 * Author: vinh
 *
 * Created on February 23, 2023, 4:49 PM
 */
#include "nrfinterface.h"
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/pin_manager.h"
#define FCY 100000000 // This is the instruction clock speed, not the frequency of Osc. Currently, it's 180Mhz, and FCY = 90 MIPS
#include <libpic30.h>


uint8_t NRF_REQ_DATA[5];
uint8_t NRF_Data_ready = 0;
void GetDataFromNRF(void)
{
    //static uint8_t dummy[5]={0xFF,0xFF,0xFF,0xFF,0xFF};
    //__delay_us(1);
    //dummy[0] = dummy[0] +1;
    S1SS1_SetLow();
    SPI1_Exchange8bitBuffer(NULL,5,NRF_REQ_DATA);
    S1SS1_SetHigh();
    //printf("D:%x %x %x %x %x\r\n",NRF_REQ_DATA[0],NRF_REQ_DATA[1],NRF_REQ_DATA[2],NRF_REQ_DATA[3],NRF_REQ_DATA[4]);
    //NRF_Data_ready =1;
}