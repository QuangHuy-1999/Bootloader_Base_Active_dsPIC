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
FINAL_IMAGE=${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/com_adaptor_uart.c mcc_generated_files/boot/boot_demo.c mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/boot_application_header.c mcc_generated_files/boot/boot_image.c mcc_generated_files/boot/boot_process.c mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/crc32_asm.S mcc_generated_files/boot/boot_verify_crc32.c mcc_generated_files/memory/flash.s mcc_generated_files/reset.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/pin_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/slave1.c mcc_generated_files/uart2.c mcc_generated_files/uart1.c main.c C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/Flex2_Slave.o 
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o.d ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o.d ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o.d ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o.d ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o.d ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.d ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o.d ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/slave1.o.d ${OBJECTDIR}/mcc_generated_files/uart2.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/boot/interrupts.o ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o ${OBJECTDIR}/mcc_generated_files/memory/flash.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/slave1.o ${OBJECTDIR}/mcc_generated_files/uart2.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/Flex2_Slave.o 

# Source Files
SOURCEFILES=mcc_generated_files/boot/interrupts.S mcc_generated_files/boot/com_adaptor_uart.c mcc_generated_files/boot/boot_demo.c mcc_generated_files/boot/memory_partition.S mcc_generated_files/boot/boot_application_header.c mcc_generated_files/boot/boot_image.c mcc_generated_files/boot/boot_process.c mcc_generated_files/boot/hardware_interrupt_table.S mcc_generated_files/boot/crc32_asm.S mcc_generated_files/boot/boot_verify_crc32.c mcc_generated_files/memory/flash.s mcc_generated_files/reset.c mcc_generated_files/clock.c mcc_generated_files/interrupt_manager.c mcc_generated_files/pin_manager.c mcc_generated_files/traps.c mcc_generated_files/mcc.c mcc_generated_files/system.c mcc_generated_files/slave1.c mcc_generated_files/uart2.c mcc_generated_files/uart1.c main.c C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}\Flex2_Slave.s 



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CH512MP205
MP_LINKER_FILE_OPTION=,--script=p33CH512MP205.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o: mcc_generated_files/boot/com_adaptor_uart.c  .generated_files/flags/default/c4aee78a48bc540cdec11790ef4d042dd5eb087a .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/com_adaptor_uart.c  -o ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o: mcc_generated_files/boot/boot_demo.c  .generated_files/flags/default/fa2717b6a7436516b0101b3bada5322a4c52871d .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_demo.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o: mcc_generated_files/boot/boot_application_header.c  .generated_files/flags/default/384453ccee92f0166529a4295445b70479774854 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_application_header.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_image.o: mcc_generated_files/boot/boot_image.c  .generated_files/flags/default/6fc7aacfe0879b5a2870a688527f398add83e8cd .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_image.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_image.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_process.o: mcc_generated_files/boot/boot_process.c  .generated_files/flags/default/df3922ae307bd639bac11df48e447bb675409ca2 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_process.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_process.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o: mcc_generated_files/boot/boot_verify_crc32.c  .generated_files/flags/default/23a6d4302a12d5762957ce1cf9d1d5cad5720d6c .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_verify_crc32.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/8880f615bb618ec11350ab79384e92884084275c .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/e375663abc22cc4bb6b36ebc9cb37218b4f5b3d2 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/5d980a2c4729d288dd66f8183125a949af9b4d15 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/39798892cbc88a22c1ac2adc6bda2f3eddc02534 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/feef2d0c39a8a8080c33196c1701694ce0a6eebb .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/805ac70bcee8e53f718ff3bcb1f845f61fd2a9a2 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/9e2eda20fbe0e6ce5bfbfdbc222505a6cbbef79a .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/b7dd3acf9a33aab0262a36c1e9fecfe9ee123692 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/b7350701c3bb3e2a8b16ebdc34891999bfd6c0cf .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/2a31acf50ce66a6cba1dc5a7f525a3448d2e9de .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/92c499d31bcebe270bf43de90126564b05d08a15 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o: mcc_generated_files/boot/com_adaptor_uart.c  .generated_files/flags/default/1224c722dcda20931dcc16cd6fec017abbe7faee .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/com_adaptor_uart.c  -o ${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/com_adaptor_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o: mcc_generated_files/boot/boot_demo.c  .generated_files/flags/default/d93b2dd4655ab80df10caae2edeed637f8b5bd30 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_demo.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_demo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o: mcc_generated_files/boot/boot_application_header.c  .generated_files/flags/default/76259f32f7f04e995c253ebc23a2362bbd834dbe .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_application_header.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_application_header.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_image.o: mcc_generated_files/boot/boot_image.c  .generated_files/flags/default/95858fce5d0db2065f560bba2915bac16f672b80 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_image.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_image.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_image.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_process.o: mcc_generated_files/boot/boot_process.c  .generated_files/flags/default/39dd1c3841d0cb8ebec1ec275278dcc9bdb09d73 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_process.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_process.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_process.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o: mcc_generated_files/boot/boot_verify_crc32.c  .generated_files/flags/default/9e9d26ad02c444c90aad36a12cc63316f2d317ca .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/boot/boot_verify_crc32.c  -o ${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/boot_verify_crc32.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/1fae5f82b594f2d0e50cb927674aa7df45cde08e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/2b6dc52633d5f8681af3bde6a441c27a3b57c4f0 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/2daba7b2946c57eedad79c6e03984fef35046459 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/dd1fcaa28c196ff02a01627ec4fcb105991bad8b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/5b5b6f64f997b1f6b7ef9d4c580c49174b06bc43 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/3f659d79f6c304bea03c5e54df2fe76f2f6b200d .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/ee394a26a54bb4c12c4e2e7c47f00298951b66a7 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/slave1.o: mcc_generated_files/slave1.c  .generated_files/flags/default/17da5cd824a62949ab74f4ddccb5e48a30ebffdb .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/slave1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/slave1.c  -o ${OBJECTDIR}/mcc_generated_files/slave1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/slave1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart2.o: mcc_generated_files/uart2.c  .generated_files/flags/default/a7fa02fe72e30fc87480678805466c320ac096db .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart2.c  -o ${OBJECTDIR}/mcc_generated_files/uart2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/ec38f7b5f9a4ecfeb579d492a9a08183663b6ab4 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a23b20955aebcdcff328bc29dc5e7ddaa2350f0 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -ffunction-sections -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/2889b21f5190f7160871820c9df492f11d0f98ab .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/memory/flash.o: mcc_generated_files/memory/flash.s  .generated_files/flags/default/2467fd773befb95c714e48174ec9fb3427f4a838 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/memory" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory/flash.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/memory/flash.s  -o ${OBJECTDIR}/mcc_generated_files/memory/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/memory/flash.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/2acad4d4cf9d556c7311c86f39facd67fd731426 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/213a8bac10e27801c6f278282289890e25cdbe46 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/d2c1525859f9796e705dc98cc30688efbc63b278 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o: mcc_generated_files/boot/crc32_asm.S  .generated_files/flags/default/f4ddc4eaa52fcc3cdfe541a1813c6b04df5a059e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/crc32_asm.S  -o ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.d"  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.asm.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/boot/interrupts.o: mcc_generated_files/boot/interrupts.S  .generated_files/flags/default/b63b5243ca3fa333109f737ff4c431e8efdf229e .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/interrupts.S  -o ${OBJECTDIR}/mcc_generated_files/boot/interrupts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/interrupts.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o: mcc_generated_files/boot/memory_partition.S  .generated_files/flags/default/2b19490b80b28eba6bb4305b7869912e654959c1 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/memory_partition.S  -o ${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/memory_partition.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o: mcc_generated_files/boot/hardware_interrupt_table.S  .generated_files/flags/default/2c228383c3e1c48b9c0720eb11deb9e1faa6d97b .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/hardware_interrupt_table.S  -o ${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/hardware_interrupt_table.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o: mcc_generated_files/boot/crc32_asm.S  .generated_files/flags/default/5a6494c0e72fa982676143065b875c3175ac76c3 .generated_files/flags/default/b63e5caf43d8fcfb85f772826c50591973287f05
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/boot" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/boot/crc32_asm.S  -o ${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.d"  -omf=elf -DXPRJ_default=$(CND_CONF)     -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/boot/crc32_asm.o.asm.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -I"C:\Work_space_emotiv\Pair_code\Flex2\Flex2_Slave.X\dist\default\${IMAGE_TYPE}"  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/BootLoader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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
