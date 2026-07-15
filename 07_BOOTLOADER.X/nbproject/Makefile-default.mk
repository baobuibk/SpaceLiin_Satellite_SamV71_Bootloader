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
FINAL_IMAGE=${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/efc/plib_efc.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/pio/plib_pio.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart0.c ../src/config/default/peripheral/usart/plib_usart2_spi.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/dev/M0_App/AppOS/App_Alive/app_alive.c ../src/dev/M0_App/AppOS/App_Blink/app_blink.c ../src/dev/M0_App/AppOS/App_Root/app_root.c ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c ../src/dev/M0_App/Boot/boot.c ../src/dev/M0_App/OS/Scheduler/scheduler.c ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c ../src/dev/M1_SysApp/xbld/xbld.c ../src/dev/M1_SysApp/xbld/xbld_image.c ../src/dev/M1_SysApp/xbld/xbld_port.c ../src/dev/M1_SysApp/xbld/xbld_port_template.c ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c ../src/dev/M1_SysApp/xcli/xcli.c ../src/dev/M1_SysApp/xcli/xcli_commands.c ../src/dev/M1_SysApp/xcli/xcli_serial.c ../src/dev/M1_SysApp/xtp/xtp.c ../src/dev/M1_SysApp/xtp/xtp_arq.c ../src/dev/M1_SysApp/xtp/xtp_crc.c ../src/dev/M1_SysApp/xtp/xtp_crc_table.c ../src/dev/M1_SysApp/xtp/xtp_ecc.c ../src/dev/M1_SysApp/xtp/xtp_hmac.c ../src/dev/M1_SysApp/xtp/xtp_port.c ../src/dev/M1_SysApp/xtp/xtp_seg.c ../src/dev/M1_SysApp/xtp/xtp_stats.c ../src/dev/M2_BSP/UART/uart_dma.c ../src/dev/M2_BSP/UART/uart_irq.c ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c ../src/dev/M5_Utils/DateTime/date_time.c ../src/dev/M5_Utils/RingBuffer/ring_buffer.c ../src/dev/M5_Utils/Tick/tick.c ../src/ATSAMV71cm7_it.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/60167248/plib_efc.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/60177924/plib_pio.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/17266001/app_alive.o ${OBJECTDIR}/_ext/16342722/app_blink.o ${OBJECTDIR}/_ext/1108331200/app_root.o ${OBJECTDIR}/_ext/451399510/app_xtp.o ${OBJECTDIR}/_ext/249897560/boot.o ${OBJECTDIR}/_ext/547890490/scheduler.o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ${OBJECTDIR}/_ext/751326486/xbld.o ${OBJECTDIR}/_ext/751326486/xbld_image.o ${OBJECTDIR}/_ext/751326486/xbld_port.o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ${OBJECTDIR}/_ext/751327452/xcli.o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ${OBJECTDIR}/_ext/1084141760/xtp.o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ${OBJECTDIR}/_ext/216470852/uart_dma.o ${OBJECTDIR}/_ext/216470852/uart_irq.o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ${OBJECTDIR}/_ext/697864676/date_time.o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ${OBJECTDIR}/_ext/1226835810/tick.o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/60167248/plib_efc.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/60177924/plib_pio.o.d ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/17266001/app_alive.o.d ${OBJECTDIR}/_ext/16342722/app_blink.o.d ${OBJECTDIR}/_ext/1108331200/app_root.o.d ${OBJECTDIR}/_ext/451399510/app_xtp.o.d ${OBJECTDIR}/_ext/249897560/boot.o.d ${OBJECTDIR}/_ext/547890490/scheduler.o.d ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d ${OBJECTDIR}/_ext/751326486/xbld.o.d ${OBJECTDIR}/_ext/751326486/xbld_image.o.d ${OBJECTDIR}/_ext/751326486/xbld_port.o.d ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d ${OBJECTDIR}/_ext/751327452/xcli.o.d ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d ${OBJECTDIR}/_ext/1084141760/xtp.o.d ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d ${OBJECTDIR}/_ext/216470852/uart_dma.o.d ${OBJECTDIR}/_ext/216470852/uart_irq.o.d ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d ${OBJECTDIR}/_ext/697864676/date_time.o.d ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d ${OBJECTDIR}/_ext/1226835810/tick.o.d ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/60167248/plib_efc.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/60177924/plib_pio.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/17266001/app_alive.o ${OBJECTDIR}/_ext/16342722/app_blink.o ${OBJECTDIR}/_ext/1108331200/app_root.o ${OBJECTDIR}/_ext/451399510/app_xtp.o ${OBJECTDIR}/_ext/249897560/boot.o ${OBJECTDIR}/_ext/547890490/scheduler.o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ${OBJECTDIR}/_ext/751326486/xbld.o ${OBJECTDIR}/_ext/751326486/xbld_image.o ${OBJECTDIR}/_ext/751326486/xbld_port.o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ${OBJECTDIR}/_ext/751327452/xcli.o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ${OBJECTDIR}/_ext/1084141760/xtp.o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ${OBJECTDIR}/_ext/216470852/uart_dma.o ${OBJECTDIR}/_ext/216470852/uart_irq.o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ${OBJECTDIR}/_ext/697864676/date_time.o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ${OBJECTDIR}/_ext/1226835810/tick.o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/efc/plib_efc.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/pio/plib_pio.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/peripheral/uart/plib_uart2.c ../src/config/default/peripheral/uart/plib_uart0.c ../src/config/default/peripheral/usart/plib_usart2_spi.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/dev/M0_App/AppOS/App_Alive/app_alive.c ../src/dev/M0_App/AppOS/App_Blink/app_blink.c ../src/dev/M0_App/AppOS/App_Root/app_root.c ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c ../src/dev/M0_App/Boot/boot.c ../src/dev/M0_App/OS/Scheduler/scheduler.c ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c ../src/dev/M1_SysApp/xbld/xbld.c ../src/dev/M1_SysApp/xbld/xbld_image.c ../src/dev/M1_SysApp/xbld/xbld_port.c ../src/dev/M1_SysApp/xbld/xbld_port_template.c ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c ../src/dev/M1_SysApp/xcli/xcli.c ../src/dev/M1_SysApp/xcli/xcli_commands.c ../src/dev/M1_SysApp/xcli/xcli_serial.c ../src/dev/M1_SysApp/xtp/xtp.c ../src/dev/M1_SysApp/xtp/xtp_arq.c ../src/dev/M1_SysApp/xtp/xtp_crc.c ../src/dev/M1_SysApp/xtp/xtp_crc_table.c ../src/dev/M1_SysApp/xtp/xtp_ecc.c ../src/dev/M1_SysApp/xtp/xtp_hmac.c ../src/dev/M1_SysApp/xtp/xtp_port.c ../src/dev/M1_SysApp/xtp/xtp_seg.c ../src/dev/M1_SysApp/xtp/xtp_stats.c ../src/dev/M2_BSP/UART/uart_dma.c ../src/dev/M2_BSP/UART/uart_irq.c ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c ../src/dev/M5_Utils/DateTime/date_time.c ../src/dev/M5_Utils/RingBuffer/ring_buffer.c ../src/dev/M5_Utils/Tick/tick.c ../src/ATSAMV71cm7_it.c ../src/main.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMV71Q21B
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMV71Q21B.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/ea25cbc42db2a48a332194d7e63a2fee635b86a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/5ba2fd04dc03ae24fc5dd9e1a94f11dfbef43709 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/f536f661d5a1d33feeb321c009c77580e06bb941 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/13c04595142e7dde83b2f1a994223da11dc9c379 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/ac915fae6bb46ea5eabe89745a3a66d1723ec50b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/ef0cad94622f5705fc9dffa1d34558a7694fde42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/aa6c9f79fa0ab5bdcd0199f2f45da81ea8f86748 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/2240c755637cb9d2b3b2986e8ebdeb8888f3c7b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/29cbefe42bf437faa0dfdbf9ad89d615d2c73c79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/686e5ee96760a957c970e764687323c98d4f0aa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/4804fd19d2a4d407861d3c3f61300c35ffb721af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/39138a47c80d27d259d5c2fce80ce041208b270b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/b1a5657bc8204d7024d44c0add47614cdf524511 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/b4826758a78a81a32391bc05cf50eb13aa331466 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/1affd627265511074859e5ba4ff50afa2a43c41e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/1ceb10564660cb12c421974fe54345ac3740da3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/5e19437eca59d8147d479e9cf6ba5a991231ad22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/54080319d2a97ad4176803d083763d9988e3faf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/4ddf34e1ae579587fb0f8c76d1271bd20ff71c54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/d3794d4d3a91bde7529cbe17b8217b2ba5132eed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/9cfb345070f06d047354f2ebe141fda02fe41c98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/9a65261c96a4431a866dcc86e7ca0dd65075bd98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/b8a8a47f78aa722e6daefa41bc62d1b59d26808d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/ad0992df597ccfa36e978d7f760e2f0dc131ca83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/f67141f10f4daa28497d932b4b3b317e96367b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/742e0e00422cfb8ee32af184254e195d61c733da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/5ab5ccb3960455a91d0ee5ccea7b82311f44bba8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/d6d1d2040bb7e8a6f4866a0c1c2e88788de003bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/e875333f993fd5a1ae143c3f0a77c816d3d1b96e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/3b756bd55e38fc4451d0582c3ce783d3fe3b5ce3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/9bd3019c8f093f88735c1955aa34133b781c06f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/1d30013058948d800336e3882cda1c54d7c82d48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/d4526d6d4d9544ba2cfc93aa1e5c9786acf92131 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/e9bf59665904d5a50528a5d487a35dbd9df8f860 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/547fcdc1e9c87e07e2f0bbf07a8926d55b3f56e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/25b5699ed9e6c8061de04febea1db8f81a81ac76 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/19dfcf79c5e623196cc6d8dbdb4e12e9387f03ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/644664789cf7c138b00c69b2d061d1b72ad0ac2d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/f892c23b429716be051b42cec6e1335278235511 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/a533fc68c1a0ae3c1265a8efaab38ecfcbc02ce9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/30f29348af5723e8e09bf9c4edab5f6a81666478 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/d4d2ccb6c90460d788d47872207b33cbb9a62bab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/11c6db69f5c1ca36c33be7558bbafbb178e2beae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/89ae3508ffe1c9fab9db5b3388ac05d2b1919a22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/f6f31e388964df56405eaf336d4d3e0a4e5f6bd7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/40db8985501aba069a379bf19819eb0619ed7c05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/cb9a3f9bcca11993ece766fd535ed9f0daff8d3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/aa260091e22863c025253afe4aedc166045fe283 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/709b37fc132a737f2dbbc0cb3698f39fc022938a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/2d5ed45dc06a0103384a25f135374acd97fff342 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/1ece43255a7c53c3031b56927699a6fdd498ec35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/850e4e349da65fa46042557749d77a87a3c0a98b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/41f5ae55d9f32008bb05f103dd6101aa2ddca86 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/690465dd02620b92456f844acb094e639f95c714 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/e70945002811aee24277b836b3b44b32e7d33646 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/bc643784177e32ce78216db36c59c6acf2fe6976 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/e8b6cc7a8fe430c9f5da0233d6758a503062ee9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/51faef2636715500301dbb678d44bf56143e0837 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/998367241d048aa1da891c3f3f78239d6aebc954 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/67e673703f3df7728950cffc5f9933c248bb70b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/6853ae3424042f1fc6a222a802fcab21b84e70c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/a3b6ebf704a2514144769e57c40f970060b2c965 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/c0a6059ce6df6c53df9059e00e7ed148f3cc8952 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/52b9f7213addd03886a699ff2117bcff459d1ecc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/e13ba18365ed204f3efb6573ecf2528ba53e39c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/c10650900cf76b183d0969516cf5a3772f2d7182 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/512465a12bc54d3026e3f9e58917faad24907e0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/4f1a1bff13ca1f82cdcfdc010eb91ebf0e138702 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/233ee3adfdcdf85060e902539a8ae5dc6e304e72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/291a8ad0e12c3f22698e5129b61643cc6db3b06a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/9e829408039bfbca5ce3951e600cc4a2f6bd920e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/463ce12b1c6bc2ec815ca9d3dcc4449854780708 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/c8015035a2098b0ccaa7534c4ea0ea322f1a9329 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/d80c590be7bad90b1b58124d17b214414588540a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/c663b6a51098a93a3555d0eee6416b7918b2b244 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/4ba7f9b42b9b6cefe1668d301329b27b9061f053 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/8bda26ad001899151fe6c400a9300accdc066282 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/69382bccc8f481581a90ff01174e59670ea470e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/2de0307c6b3cb1d0141ec7ba1cef691c28e0ed71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/587d0c132f29a6af5c13aed70c0173bc473b53de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/435859efe144229e7efde9e60a467bc1c66168b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/c3b5fb058bc59a755d9f899d8b18c1dd1e0cfbda .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/cd8279a5bd08e59de4742b1398b0ce0da45d4501 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/84c0a539f27414fd1fbff0be59343592b7d5ef45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/5c86cc90bbcfeedd6ef83a9169ab36505cf98e72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/e597db1635f902f07c2e5e4e96ee7b03f0c7ef22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/ac6de7ecb8055b3c6b6f2ceaa28057ee3ea76f69 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/633a260cec8bcd646f734fe8bd79b73c634f83ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/4d70b4fde017f9f6852dcdb69b8500c72f2fa6b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/480b7164ccd49fb804a8ea240cc978814b7e5036 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/e5fcfc527ff250d158d027a379b87931c29025eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/bda93196e88c5bdd5109b359e3d94deb3c22e530 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/30240d05d9c3f7a405fbd89a482bbbdb6a584a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/77bf6b3f1a7edde56858861e172994d2c7b5fb90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/4059d380b039f24f0541caaec314e30613e793b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/d8eef04564c81e9b553ae5f9816b6988eb024b8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMV71Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samv71b"
	
else
${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMV71Q21B.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -mno-device-startup-code -o ${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samv71b"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/07_BOOTLOADER.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
