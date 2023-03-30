/**********************************************************************
* © 2005 Microchip Technology Inc.*
* FileName:        filters.c
* Dependencies:    p33FJ256GP510.h
*                  system.h
* Processor:       dsPIC33F
* Compiler:        MPLAB® C30 v1.32.00 or higher
*
* SOFTWARE LICENSE AGREEMENT:
* Microchip Technology Inc. (“Microchip”) licenses this software to you
* solely for use with Microchip dsPIC® digital signal controller
* products. The software is owned by Microchip and is protected under
* applicable copyright laws.  All rights reserved.
*
* SOFTWARE IS PROVIDED “AS IS.”  MICROCHIP EXPRESSLY DISCLAIMS ANY
* WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
* PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP
* BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
* DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
* PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
* BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
* ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
*
* REVISION HISTORY:
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Author       Date(DD/MM/YY)      Comments on this revision
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* H Vasuki       14/07/05       Initial release (Explorer 16 Demo)
* T Clark        30/10/06       Initial release (eMotiv S/W)
* T Clark        01/02/07       Modified to work with H/W SPI
* V Gerasimov    19/02/07       Inertial sensor support
* B Ziady        09/07/07       Added digital filter 
* B Ziady        10/09/07       Split the code into smaller files
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*
* ADDITIONAL NOTES:
*
**********************************************************************/
#include "FIR_Filter.h"
//#include "IIR_Filter.h"


extern FIRFilterStructure FIR_1Filter;
extern FIRFilterStructure FIR_2Filter;
extern FIRFilterStructure FIR_3Filter;
extern FIRFilterStructure FIR_4Filter;
extern FIRFilterStructure FIR_5Filter;
extern FIRFilterStructure FIR_6Filter;
extern FIRFilterStructure FIR_7Filter;
extern FIRFilterStructure FIR_8Filter;
extern FIRFilterStructure FIR_9Filter;
extern FIRFilterStructure FIR_10Filter;
extern FIRFilterStructure FIR_11Filter;
extern FIRFilterStructure FIR_12Filter;
extern FIRFilterStructure FIR_13Filter;
extern FIRFilterStructure FIR_14Filter;
extern FIRFilterStructure FIR_15Filter;
extern FIRFilterStructure FIR_16Filter;

extern FIRFilterStructure FIR_17Filter;
extern FIRFilterStructure FIR_18Filter;
extern FIRFilterStructure FIR_19Filter;
extern FIRFilterStructure FIR_20Filter;
extern FIRFilterStructure FIR_21Filter;
extern FIRFilterStructure FIR_22Filter;
extern FIRFilterStructure FIR_23Filter;
extern FIRFilterStructure FIR_24Filter;
extern FIRFilterStructure FIR_25Filter;
extern FIRFilterStructure FIR_26Filter;
extern FIRFilterStructure FIR_27Filter;
extern FIRFilterStructure FIR_28Filter;
extern FIRFilterStructure FIR_29Filter;
extern FIRFilterStructure FIR_30Filter;
extern FIRFilterStructure FIR_31Filter;
extern FIRFilterStructure FIR_32Filter;

FIRFilterStructure* FIRFilts[32] = {&FIR_1Filter,  &FIR_2Filter,  &FIR_3Filter,  &FIR_4Filter, 
                                    &FIR_5Filter,  &FIR_6Filter,  &FIR_7Filter,  &FIR_8Filter, 
                                    &FIR_9Filter,  &FIR_10Filter, &FIR_11Filter, &FIR_12Filter,
                                    &FIR_13Filter, &FIR_14Filter, &FIR_15Filter, &FIR_16Filter
                                    
                                    ,&FIR_17Filter,  &FIR_18Filter,  &FIR_19Filter,  &FIR_20Filter, 
                                    &FIR_21Filter,  &FIR_22Filter,  &FIR_23Filter,  &FIR_24Filter, 
                                    &FIR_25Filter,  &FIR_26Filter, &FIR_27Filter, &FIR_28Filter,
                                    &FIR_29Filter, &FIR_30Filter, &FIR_31Filter, &FIR_32Filter


};

void FilterInit(void)
{
    unsigned char i;
    for (i = 0; i < 32; i++)
    {
        FIRFilterInit(FIRFilts[i]);
    }
    
    
}



