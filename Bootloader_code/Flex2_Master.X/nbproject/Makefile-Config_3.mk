#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-Config_3.mk)" "nbproject/Makefile-local-Config_3.mk"
include nbproject/Makefile-local-Config_3.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Config_3
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s 

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/slave1.o.d ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/readADC.o.d ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d ${OBJECTDIR}/firinit.o.d ${OBJECTDIR}/firlms.o.d ${OBJECTDIR}/FIR_Filter.o.d ${OBJECTDIR}/IIRT_Filter.o.d ${OBJECTDIR}/filters.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 

# Source Files
SOURCEFILES=mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s 



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-Config_3.mk ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CH512MP205
MP_LINKER_FILE_OPTION=,--script=p33CH512MP205.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/Config_3/9af5fcc205ffcca0b5840c9f9b40f7db3f9fd93a .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/Config_3/c2519fe183b89a02c51ab8861aa57b3745d993d5 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/Config_3/c7dbfc9ec0bf7cb5827a944fd9ca7ce6abb139ed .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/Config_3/a4780798353a58a2360ffda3e9ed5430e502835c .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/Config_3/b3dab0dadb557f2fa5de96fe8afab825c533fdbc .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/Config_3/c39777541866f7a1f513695a099f1ad84af9a2dd .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/Config_3/d41ee279966372775b31c5f238cb5fed64ecbdb3 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/Config_3/ca4d8f8db09390cc1ed14541bbfcc52d24ab7780 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/Config_3/f063754682341f42bfcdaa00d060328a40570a6b .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/Config_3/c68791e5d5cf9773d45eff80df48e2dbabc2a772 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/Config_3/2026820f1a2002872c44090a0035b937737fdfd5 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/Config_3/e5734bdb27769791436ed5d8012408461d5b3acf .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Config_3/3ba3b10a5903464ebfd2c23a3ec01be65d042311 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/Config_3/15299dea05b09d98faac086271a0083e5309a6da .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/Config_3/b8fd0d46fc1ecc87828c39ba83ed70562be77460 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/Config_3/9a565c7b1cc9273e4a87e0ef00c9333973ab7609 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/Config_3/a4407fa4c8c2308c1e9465d3950051e7c0747080 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/Config_3/be3a69805fd4f587d6db6d61cf1b9c6fd868432 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/Config_3/e57e344b806fda2e44b223b11e37ded074be79e2 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/Config_3/e41270e46d3f60aa54d21445aaf49d9a409fd228 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/Config_3/d38fb9fac525507c8d055a794784a5595e7cef09 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/Config_3/b90fd057b76dada4412e9d80404d2ce35567db82 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/Config_3/d8b159c5e0fde0b3ca7ee310e4ba77996146e7e1 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/Config_3/5e20b2b113d5ad5168a03af5c274c59c069978a0 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/Config_3/412dcb720ad9d257e2523f7c69b6c203e499c191 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/Config_3/2c1dbb2766f13378ba193281acfef26cd335a24d .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/Config_3/37a0974b5e992983150d8eccb7e2978a576ab1e7 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Config_3/8960c49b10ca47568e11ae0d5fe6a63823e46a2 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/Config_3/87ad3782cbcd08735543d36c7895f37c25fa37e7 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/Config_3/5dce3534e49c456ee0e80288919077cb588434c9 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -mlarge-data -msmall-scalar -O1 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/Config_3/fb33d2a59be7d5ce1285432670edf440773c2db5 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/Config_3/4f2da3af6eecd97856ed30a2d70e6429ca5984a2 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/Config_3/d67dea3dd32a8b191655acf2e3c9a4219249ccd7 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/Config_3/4043330b249e67f9f21f48137db8f4f16fd52db8 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/Config_3/85af4e82755b916176300046e735dd630bd93d5e .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/Config_3/9699797fb3f6332f9e8dafb2d156bcc9367285f6 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/Config_3/e2682c37245e544dfb46c45d66bf4639c45ffd3b .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/Config_3/2ae95dec4b036a89767b1fbb5578ce3dcc962a6c .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/Config_3/f15016f53002d47e0c7e94a9695517009a175a35 .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/Config_3/98a0fef4cf0540ec89a9a889d6b303d6be56beab .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/Config_3/2a14923178ec95eb392cfa5f895c6edadfeea2cf .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/Config_3/79f66860b1db975f6aa8dff3135849dd377e70b .generated_files/flags/Config_3/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Config_3=$(CND_CONF)     -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble_subordinate
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Flex2_Slave.o: /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)   -mdfp="${DFP_DIR}/xc16"  /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
else
${OBJECTDIR}/Flex2_Slave.o: /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)   -mdfp="${DFP_DIR}/xc16"  /Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}/Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_Config_3=$(CND_CONF)    $(COMPARISON_BUILD)   -I"/Users/vinh/flex2_dspic/Flex2_Slave.X/dist/default/${IMAGE_TYPE}"  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
	cd ../Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
else
	cd ../Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default
	cd ../Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
endif


# Subprojects
.clean-subprojects:
	cd ../Flex2_Slave.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
