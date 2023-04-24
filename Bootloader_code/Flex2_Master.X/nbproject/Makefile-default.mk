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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/application_header_crc32.S mcc_generated_files/boot/user_interrupt_table.S mcc_generated_files/memory/flash.s mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/uart2.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/slave1.o.d ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/readADC.o.d ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d ${OBJECTDIR}/firinit.o.d ${OBJECTDIR}/firlms.o.d ${OBJECTDIR}/FIR_Filter.o.d ${OBJECTDIR}/IIRT_Filter.o.d ${OBJECTDIR}/filters.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/main.o ${OBJECTDIR}/readADC.o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o ${OBJECTDIR}/firinit.o ${OBJECTDIR}/firlms.o ${OBJECTDIR}/FIR_Filter.o ${OBJECTDIR}/IIRT_Filter.o ${OBJECTDIR}/filters.o ${OBJECTDIR}/Flex2_Slave.o 

# Source Files
SOURCEFILES=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/application_header_crc32.S mcc_generated_files/boot/user_interrupt_table.S mcc_generated_files/memory/flash.s mcc_generated_files/uart1.c mcc_generated_files/clock.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/spi1.c mcc_generated_files/spi2.c mcc_generated_files/pin_manager.c mcc_generated_files/reset.c mcc_generated_files/interrupt_manager.c mcc_generated_files/slave1.c mcc_generated_files/sccp2_tmr.c mcc_generated_files/uart2.c main.c readADC.c iir_2048_45_48_0.05_60dB_10ord_Butterworth.s fir_1024_38.2_48.3_2dB_40dB_95ord.s firinit.s firlms.s FIR_Filter.s IIRT_Filter.s filters.c C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 



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
ProjectDir="C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Master.X"
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
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/25aae2d35d987a980dffce0b5562bc800d09206f .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/f64454d1cd6933a8ee0e4ac2df79d06e815ca8ec .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/637ac7c6cdcc964055d693ac0250921779bfaf46 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/15dc912c8e10af6974451d99fd6efc22c1720379 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/3353d861465b8eab860ed7a9779a6e7338da259e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/default/841d44a188317ff2294d0e9a096b7914f708f1df .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/36c38ef5984af041a52afcdfad00b4264a42458c .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/db495a719b1f10c086f8830824b4e76f43bbfc8f .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/af1778c8bb1e3b81d7fb4e1eb6905240643c7d7b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/5cea3cb076597ee9dfcbb4aa44c814b41b767cb9 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/22e2dca1d02a9af88f0d9ba4cfb8777b07061be3 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/f40de3ec53359770101ee42aa0f4cf2c602309cd .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/3b32d68f017aa9058e17a4c4aa50e704cc032548 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ef50d9a6e149f0f2e69f186bf37e0f8bbedac5e8 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/default/b14d9fa1be7d6efebd4d8ca0c3b31f78ceea6af9 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/default/4174ba6dc291c6d01ce24950bf9fd3069d390f4 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/9d52f2c9e63b08bdac53c50de91211e2e743e41 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/1baac287018bea4143c916953c6da8f4d144bf7 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/8f945cb7071c6e8fe5964382ad39cf3edb8dbf97 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/e289e4f0d89853f0d7e6deb463ec5ef6578e4ba9 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/59be6c9c2a3c7c6b8e277ff3447fb23b11d00bee .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  .generated_files/flags/default/4a065e98a193b08d0a7b1bfe214ab4e9872fb879 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1.c  -o ${OBJECTDIR}/mcc_generated_files/spi1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  .generated_files/flags/default/1209c28adedf9fa3c27a41514b0179d2e90f0828 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi2.c  -o ${OBJECTDIR}/mcc_generated_files/spi2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/a334b1aa955c8374d96d329d816bc66bb02abe8e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/2b82216baa769f4a3b3a1e8cc290174190e759ad .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/f3f4179733b97b32eaf6998067772cea5cdf42ac .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/6b00e3ef8c2462ed07dabc4cdfab122d6cae63b0 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o: mcc_generated_files/sccp2_tmr.c  .generated_files/flags/default/fc49c7260bc739f462f6bd506068c8bed30462fd .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sccp2_tmr.c  -o ${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sccp2_tmr.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/93550b4f885bbd7f6f020eb160e9958c3d2cbc56 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ff2e11c07d8d0139cce35e26c08c64143fdea1a4 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/readADC.o: readADC.c  .generated_files/flags/default/b0a6953b5662e3e0539ae88b67d833ddc5bd3ad5 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readADC.o.d 
	@${RM} ${OBJECTDIR}/readADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  readADC.c  -o ${OBJECTDIR}/readADC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/readADC.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/filters.o: filters.c  .generated_files/flags/default/a74a2f415458ea42d3307e89c2074557091be96f .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/filters.o.d 
	@${RM} ${OBJECTDIR}/filters.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  filters.c  -o ${OBJECTDIR}/filters.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/filters.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -mlarge-data -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/7a96ae209e74e1cf052b7ace9757467d2723edc .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/default/f7873e49e6043adf2ffd924fd233de614b71c4a6 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/default/c6904375337148db82d1dd88d4fdb6934a0b36c0 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/default/34375eb7c127b97982c19cfbbb200991ef292ce2 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/default/303d11a2d3ea44d0334fdbf6adf990d84c893848 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/default/7dbbba71b9968c8cfb341b4f6254274994493daf .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/default/97e160cfc6974c5fc2ab72a61de6a1c06b63b08b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/3b0d2614e8499410077552f8b4abf698852167e6 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o: iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  .generated_files/flags/default/570e8ae81cbb78c91cb1cfa1b121de0ada3fb381 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d 
	@${RM} ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  iir_2048_45_48_0.05_60dB_10ord_Butterworth.s  -o ${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/iir_2048_45_48_0.05_60dB_10ord_Butterworth.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o: fir_1024_38.2_48.3_2dB_40dB_95ord.s  .generated_files/flags/default/e3083c565a3dc2683ec7bc35a6eaf5fc8dbe716b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d 
	@${RM} ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  fir_1024_38.2_48.3_2dB_40dB_95ord.s  -o ${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/fir_1024_38.2_48.3_2dB_40dB_95ord.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firinit.o: firinit.s  .generated_files/flags/default/5bc45549946ca1a9267119c4c36b1bd8a7652934 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firinit.o.d 
	@${RM} ${OBJECTDIR}/firinit.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firinit.s  -o ${OBJECTDIR}/firinit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firinit.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/firlms.o: firlms.s  .generated_files/flags/default/8183ffc1014ce7d39b29a58586df1b698985064d .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/firlms.o.d 
	@${RM} ${OBJECTDIR}/firlms.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  firlms.s  -o ${OBJECTDIR}/firlms.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/firlms.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/FIR_Filter.o: FIR_Filter.s  .generated_files/flags/default/81d7069951f48ead2ad54399d74767d68b81a90b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FIR_Filter.o.d 
	@${RM} ${OBJECTDIR}/FIR_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  FIR_Filter.s  -o ${OBJECTDIR}/FIR_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/FIR_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/IIRT_Filter.o: IIRT_Filter.s  .generated_files/flags/default/ecc61bbf8f802f6ecc903e8505645e21f37e439c .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o.d 
	@${RM} ${OBJECTDIR}/IIRT_Filter.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  IIRT_Filter.s  -o ${OBJECTDIR}/IIRT_Filter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/IIRT_Filter.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/7aae4c1c224a22067345105f783ff0ed1e89c50a .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/e91773ff9212571c1756bc53e8480c5bb4b03b26 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/80e702e40c151625b6b595b071583efe4496dc65 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o: mcc_generated_files/boot/application_header_crc32.S  .generated_files/flags/default/cc57bf4a6d29ac23fe7dfe41cbdef02370303381 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/application_header_crc32.S  -o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o: mcc_generated_files/boot/user_interrupt_table.S  .generated_files/flags/default/22f6c4494da792a7f0f857ef01d730d2f9d5d37f .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/user_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/2ce112c90dc75fd15f623d2176c6cc3dba7e6564 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/98a3c57d85e93079ad9125be2574e550eb95462e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/18b9fbdf87ee11b063216fab47f92caa43e12490 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o: mcc_generated_files/boot/application_header_crc32.S  .generated_files/flags/default/ad41604aa34ab2170e20644a0cd7d12a6bd65aa3 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/application_header_crc32.S  -o ${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/application_header_crc32.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o: mcc_generated_files/boot/user_interrupt_table.S  .generated_files/flags/default/7b44ad633d39c40bf70020dca831156a2fa3fe6e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/user_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/user_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble_subordinate
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Flex2_Slave.o: C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)   -mdfp="${DFP_DIR}/xc16"  C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
else
${OBJECTDIR}/Flex2_Slave.o: C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  nbproject/Makefile-${CND_CONF}.mk
	${MP_CC} -c -mcpu=$(MP_PROCESSOR_OPTION)   -mdfp="${DFP_DIR}/xc16"  C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s  -o ${OBJECTDIR}/Flex2_Slave.o
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/Flex2_Master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd C:/Work_space_emotiv/Pair_code/Flex2/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
	cd C:/Work_space_emotiv/Pair_code/Flex2/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
else
	cd C:/Work_space_emotiv/Pair_code/Flex2/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default
	cd C:/Work_space_emotiv/Pair_code/Flex2/Flex2_Slave.X && ${MAKE}  -f Makefile CONF=default SUB_IMAGE_NAME=Flex2_Slave .build-sub-images-impl
endif


# Subprojects
.clean-subprojects:
	cd C:/Work_space_emotiv/Pair_code/Flex2/Flex2_Slave.X && rm -rf "build/default" "dist/default"

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
