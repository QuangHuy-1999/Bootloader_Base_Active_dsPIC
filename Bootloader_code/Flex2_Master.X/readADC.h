// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef readADC_H
#define	readADC_H
#include "mcc_generated_files/spi1.h"
#include "mcc_generated_files/spi2.h"
#include "mcc_generated_files/pin_manager.h"
#define  ADCMAXBUFFER 8
#define   N_DIVIDER 4

void FilterInit(void);
void Mux_Select_Channel(uint8_t channel);
void readADC_oneChannel(void);
unsigned int getADCdata(void);

#endif

