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
#include "IIR_Filter.h"


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
                                    
//                                    ,&FIR_17Filter,  &FIR_18Filter,  &FIR_19Filter,  &FIR_20Filter, 
//                                    &FIR_21Filter,  &FIR_22Filter,  &FIR_23Filter,  &FIR_24Filter, 
//                                    &FIR_25Filter,  &FIR_26Filter, &FIR_27Filter, &FIR_28Filter,
//                                    &FIR_29Filter, &FIR_30Filter, &FIR_31Filter, &FIR_32Filter


};


extern IIRTransposeFilter IIR_post1Filter;
extern IIRTransposeFilter IIR_post2Filter;
extern IIRTransposeFilter IIR_post3Filter;
extern IIRTransposeFilter IIR_post4Filter;
extern IIRTransposeFilter IIR_post5Filter;
extern IIRTransposeFilter IIR_post6Filter;
extern IIRTransposeFilter IIR_post7Filter;
extern IIRTransposeFilter IIR_post8Filter;
extern IIRTransposeFilter IIR_post9Filter;
extern IIRTransposeFilter IIR_post10Filter;
extern IIRTransposeFilter IIR_post11Filter;
extern IIRTransposeFilter IIR_post12Filter;
extern IIRTransposeFilter IIR_post13Filter;
extern IIRTransposeFilter IIR_post14Filter;
extern IIRTransposeFilter IIR_post15Filter;
extern IIRTransposeFilter IIR_post16Filter;

extern IIRTransposeFilter IIR_post17Filter;
extern IIRTransposeFilter IIR_post18Filter;
extern IIRTransposeFilter IIR_post19Filter;
extern IIRTransposeFilter IIR_post20Filter;
extern IIRTransposeFilter IIR_post21Filter;
extern IIRTransposeFilter IIR_post22Filter;
extern IIRTransposeFilter IIR_post23Filter;
extern IIRTransposeFilter IIR_post24Filter;
extern IIRTransposeFilter IIR_post25Filter;
extern IIRTransposeFilter IIR_post26Filter;
extern IIRTransposeFilter IIR_post27Filter;
extern IIRTransposeFilter IIR_post28Filter;
extern IIRTransposeFilter IIR_post29Filter;
extern IIRTransposeFilter IIR_post30Filter;
extern IIRTransposeFilter IIR_post31Filter;
extern IIRTransposeFilter IIR_post32Filter;

IIRTransposeFilter* IIRPostFilts[32] = {&IIR_post1Filter,  &IIR_post2Filter,  &IIR_post3Filter,  &IIR_post4Filter,
                                        &IIR_post5Filter,  &IIR_post6Filter,  &IIR_post7Filter,  &IIR_post8Filter,
                                        &IIR_post9Filter,  &IIR_post10Filter, &IIR_post11Filter, &IIR_post12Filter,
                                        &IIR_post13Filter, &IIR_post14Filter, &IIR_post15Filter, &IIR_post16Filter,
        
                                        &IIR_post17Filter,  &IIR_post18Filter,  &IIR_post19Filter,  &IIR_post20Filter,
                                        &IIR_post21Filter,  &IIR_post22Filter,  &IIR_post23Filter,  &IIR_post24Filter,
                                        &IIR_post25Filter,  &IIR_post26Filter, &IIR_post27Filter, &IIR_post28Filter,
                                        &IIR_post29Filter, &IIR_post30Filter, &IIR_post31Filter, &IIR_post32Filter

};
