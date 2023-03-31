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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
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

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/application_header_crc32.S mcc_generated_files/boot/user_interrupt_table.S mcc_generated_files/memory/flash.s mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/uart2.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/slave1.o.d ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/readADC.o.d ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d ${OBJECTDIR}/firinit.o.d ${OBJECTDIR}/firlms.o.d ${OBJECTDIR}/FIR_Filter.o.d ${OBJECTDIR}/IIRT_Filter.o.d ${OBJECTDIR}/filters.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 

# Source Files
SOURCEFILES=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/application_header_crc32.S mcc_generated_files/boot/user_interrupt_table.S mcc_generated_files/memory/flash.s mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/uart2.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 



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

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=dsPIC33CH512MP205
ProjectDir="C:\Work_space_emotiv\Bootloader_Base_Active_dsPIC\Bootloader_code\Flex2_Master.X"
ProjectName=Flex2_Master
ConfName=default
ImagePath="${DISTDIR}\Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [cd mcc_generated_files/boot && postBuild.bat $(MP_CC_DIR) ${ProjectDir} ${ImageDir} ${ImageName} ${IsDebug} && combineAppAndBootloaderHex.bat]"
	@cd mcc_generated_files/boot && postBuild.bat $(MP_CC_DIR) ${ProjectDir} ${ImageDir} ${ImageName} ${IsDebug} && combineAppAndBootloaderHex.bat
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=33CH512MP205
MP_LINKER_FILE_OPTION=,--script=p33CH512MP205.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/f191ed27732a034a9191922e3bdc8c8234e40002 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/fd4c3c209cbf173341788295d17a0f4f5a740e68 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/e123c0c46d549015afb9d31ee6be7f79260425df .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/de9e919c46f63c4cfb78d6905b944d8740c04502 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/983c3d787dd60583b1277a0888d86ccf52fdaaba .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/default/5eb80a1c6c5db5e484153d5ed0a41a1bb683e10e .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/a19be566e854947c54ae9278dd6c81212031d03b .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/2ec56766bc9b20e3ad4d187d52f2318c730344bc .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/a0cef331654fcb1b774643d527eea55f877c8f98 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/36ceb2c1f822a401521d22839b3d55cbe76a801c .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/b5e9dfc46e61ea9c9c6398f5b3950975e12fc08 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/57241543cf78a3327ff2529e56555cc02a2cf859 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/e1f243988bb1bfbf3a3356a37e41809f0a6c5865 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/13a5a697de1fa85c344c366688a52fb75c0c559d .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/default/fca68e12013f2f41920bdf3e30d57241905c3dd1 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/default/39032bd6f1fcb49862c97cfaeade45c86b3c8492 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/b7d915d9e843814a55ab731e41271f5bbf3cb14f .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/8a86fb2277ce849629c53a888d38730b4b9a5b7 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/c570a6844cb36512fa0a912c09ab48fcc81031f5 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/14e8b85b3854484a27a7d5d3d6cdcb5318437e98 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/b2f57b2b2c509fdb12740454b3d4135cefd3d987 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/default/8b19fc2285ae339dd6eecc52572d6bdecfb2f8c .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/b1e158e4a5216f7cebcab31cc9e0cf89f08419fb .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/18d81b33b890884858f61ff8bd82329a3b03d35 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/16936135bf73a1ef14b0cf8ae4709e875a8e6a9a .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/17c34a14061df286d7e50407a3b51c78ac8a9341 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/a12674936efa375341767c31962739e0e3609ec2 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/ffc2a3294f239e49ead2300a90e6fd5745648f18 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/1a724934da3ab9081894c230cd87823614d48ab7 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f71ac5195a8c91b2779b1877c71345d077d406bc .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/default/31d9cc0891aea23564b1ae2552d4b522a5dbc09f .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/default/c01cf1e17284b9f6c7fe89d6fe7bc044957b8118 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/fade8a9a7cbf76ff9c4ec8abef2bc80279026646 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/default/4f8c1e682708af2dd415872e78621792bb4e3528 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/default/a7e9fe6d2fd3c0a85cd7c9c7e77c49aee1fbeaf9 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/default/83f1685f34ea87bfaf6301ef221bcb55edf2b15 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/default/7a3e3024683ca87b156b868c28757bc03224fb29 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/default/efaefac46fd316b8d718b9740e8ae032eec2f518 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/default/42befd5c46015d2271e385c1bb50a34c289b016c .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/3dcc1ab6b04007269f60e0002a4630e4b47db97a .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/default/7202eabdb050d9335e6dffcff1e8a3027b244b7a .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/default/b9890b3d2bcf17e799ef741c6bbb8b13fa129213 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/default/a3361b8bde3180c1356601e841babbc902dc23a8 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/default/fd121ae5be7bc48d8e76836a826258b04930a97f .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/default/1d2671470ad34fb5461b21e526c186706970d8db .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/default/8cf116babbf504868812faf5dbfbbcb0d1b4d6d5 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/fb3e956234a962c3e7b7543d79a4bd2ae7c54437 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/44d25d2b1077c581eeaf85a2a008b0853696daa9 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/2e72935849e51c6f07e95b15364b802c9e9fe83f .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o: mcc_generated_files/boot/application_header_crc32.S  .generated_files/flags/default/e28d25edd58294fd174337d78c7e0bde21a6c421 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/application_header_crc32.S  -o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o: mcc_generated_files/boot/user_interrupt_table.S  .generated_files/flags/default/f97623033b380ebba9d305b8050254dca5da8cd4 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/user_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d"  -D__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
else
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/b96bedb7c727f5bc6f2da3168c8695d9d16325dc .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/8b18aa89f2525ecf78a35642487e5ebc77f52942 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/d75fd241e5b4859aed5ea92c424317726abef5c6 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o: mcc_generated_files/boot/application_header_crc32.S  .generated_files/flags/default/744a08286cd8b2a422682623f70791cc4c38db83 .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/application_header_crc32.S  -o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o: mcc_generated_files/boot/user_interrupt_table.S  .generated_files/flags/default/f07fcd25f2048bc994c21f8c09122f62ad4d62ed .generated_files/flags/default/7dab310884e5de58b737751714b62c5515706f0f
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/user_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble_subordinate
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Flex2_Slave.o: C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)    C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
else
${OBJECTDIR}/Flex2_Slave.o: C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)    C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Dspic_205\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   
	
endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd C:/Work_space_emotiv/Dspic_205/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
	cd C:/Work_space_emotiv/Dspic_205/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
else
	cd C:/Work_space_emotiv/Dspic_205/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default
	cd C:/Work_space_emotiv/Dspic_205/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
endif


# Subprojects
.clean-subprojects:
	cd C:/Work_space_emotiv/Dspic_205/Flex2_Slave.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
