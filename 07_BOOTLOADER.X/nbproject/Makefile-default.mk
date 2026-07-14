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
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/91a5a5d8ab4d3378c24de7112b052333c679ae97 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/b598b0506f837ad77323833363f3476ed86cb7e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/7ca4351698f7f6d980b0ccb96b9c7170ee3445d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/5b79518d9b52d1f1fe9201395560bb9c1399aa84 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/65c67157a3a06ecd554c3e5a6cc57b585ff0a8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/72e521918993ded26cda777928d658efb240e37a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/622867ffa7fee4ea3e9172bbe981d230fabbdc8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/69cb0637846b5d586c6ef619e4eb01484bae89e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/1f49cc8f6752d249a404056d3d605787de11a68d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/7a943d50011076bdef2363e3c908c66a0a51c256 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/f7e39915d42ce948936f7e6a78ebc8532d7cade .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/51f8a742424c61d84dae38ccaf318bc5e39339d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/f8f17cff288fb0bbfe48a570db4835ea5bfb23ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/79fbdb22dca255154ac965d5808f0d77d0330bdd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/70ad388032bf8eb3502e0a92f83d4304245e9491 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/fdb9c1388937a0c8a3cb7f5a44cd0c0609bebc78 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/d51ed50c8a67c5f1ae8484dcd0699f1ea8528617 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/ffa05017e9e4b823e5ffdef6d4d6f9c9d1b26aab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/97e16b2d0ca248163e145ec2e9c071ff3a8f8eaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/52f255e606eaf5dafca2ce1c9f952abae8414ec7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/ffa6caf268a47d74359cf7ef6d6890cfa7141ebf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/c9c4ea17b2b780c61a348c2c975735f0e39ddf88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/6d51eaa68664d29a79f12e8d0ca4d393fd15bf62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/4afcc4dfc263ff5b4e95919929fe140e9406b9c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/3c96cf05ac1aedadad569d0242e1f9b9ed1f1f25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/ee6fe3ca08257017c2476ba2fd12b0bf194542a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/d0ea5a6b117989eacaeabc1c256198397753ba71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/1d90f2e2f11865a55de328eefeabd252b2f3cdc7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/cfd88813d473858a62b757f4e03cebd0ed785932 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/b73738292c93b27738d0373ae61a88e9843a2691 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/c7d76306a4d377fde712b7e61efac60a145db294 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/d89a28805557c1da4d7226793faf3cbb3275167e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/80e01b5bffce79e2ad328d6aa99c978c4e37ef4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/99e28706020085928816005e9cab6ab924dd9c5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/2e36e67beeb4726c8ae3765902a7f184b1a353fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/c6e6e90fb205264cdb713f5483f0b0ac181013ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/64b9ae83d0c19e88b7725d2cf3bb36c6b43014e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/53f046372fd036b743ed923741d59cfffd39629d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/6883a5c012be1b3aee0c5d9e187204395d63daae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/1e487f4852da3fa4e4532a628d7c5595676c17e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/16bd2d3330f574a8eb7844bea078a6ad67237cb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/263fef7c2b4be93537517e0408cb4f1b9780a024 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/7e4442f9ddf7b936425909aaee03bbf316a35b5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/6d9e2b69462774d0e910419bc9da2f75ae91f852 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/742ecab1643b88da38111155765726dd1a5181e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/89e6af68c65169830add32ce2e33ac3d426d6010 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/105141f3733088bc39017e21133d3dd54c1176e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/d05b33dd6ba4c9e8f0dab7dbef643f139540c62b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/e7c7ec6d8e09acfe68916d1696006750ab2cf80c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/7618d18d83e80b49506e220a30b1745605bb70b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/66cf33e743561b51309dad29a6257f1960b35fcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/7243a9530815bfd30e942a5deff93ebf8327dcce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/a9b74ca878b70996a49b401a2768a8a1371cfd29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/a1568b9683ac878406a668fa239c143b73df2473 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/671e0a07c38388aa19bf229ae1585542b49799ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/29fbfc634571c1a7a6021bf5259aefa6109278ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/3d0007e19cdcc4fdb27e758f877ba71bd26df34a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/bf1cd3d89a0ccd35da5e450ee0d9536b75e2f436 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/8b3a58ecb504c7e12b29fddb44c6111482d36753 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5a18d4af19094311ea74b98ed32e5bd386f0443b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/2b2b7501cfb37b8bade5eabb8be914034954dfa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/cef99eafabe7e654dd75ad9f82e7a1276b0dd489 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/23da91b3cee942aab2772533cd684c50517b454f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/d000970526f22dd305d6f069284fae919889ab0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/d4c85e3adfe81409f0d76a37d92338d48b0b6214 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/ed37a087c9903a8cfb8cc7717d902706ee4a0895 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/e0e5c3f118504b952f45c5d13803dbc7424cb8ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/19664fc4cde60d78be37dbc3f91c174a2263150e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/6f49421054cfc0fc1581d5c3540092210e6356f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/70d9d9316132cb090098ff16733be5756d01624f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/23060f3d49834681c49d83301b8917871bdac51e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/eb90d8db3060270a44cf6db198d60d6122ff64a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/44b3c9fa5c9ae30e6aa95be55067907debc077fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/438ab0e0d460f05195a6156146f097f6f028e5e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/1dc139f07e4124bdb34ae39f63525c7abc228dde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/75ff4aaa9768cfd62dd4274840ce7e69122bea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/4c0621a777f8e56e75242fd2c5e4979d3dc5b75d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/5dbde085bdd022c3ef2a5e29b318e928b23818d0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/b957eda767c45bc1b57e1604f5f01276cd4c9f71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/2c80c2eeab81952711ed4cbc4848343f37e2444c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/d67727bb8bf40ede722dce1ad93569c2c81dc9b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/1bc074c666c31266858dce7e745779f4c8c7917e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/6cd2a3e13c5bae5c9ecf7a1d90b0f6b6bbb6b75e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/413dab7ed3d55c9abfbd4fc310402a928c493851 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/5b5c2cc58869c3f28bbdcaf59af5ea115c2fb0ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/f8cb00f67f860fb3860c54afea2c364c36b86b98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/7ba5637ed0dd87c7a19dc9ca31911eb51e292fbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/d2df4bdd5c475a59e68651cb7d0b92701d57e2ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/266ae10f51de90e87f5b0182ade06a335fe5c455 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/ccee30667d84a3d6cdb65b45f191b2aeb93693be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/bb046376a4e520280c0a2a350b87f55166994a29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/99eafe03d31d11cf6cd79d8805b86ffb4406b6b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/e13a676a150eff198e0cac58a5d28165cdd76e8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/1da6ee1e0664d964e55d8a4d7483c0a2ddcf68d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/f3af3e6e0c91aa0fb83a600a580ab50b5981fcaa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/96a599be4326c38d272e7975b57f9389a3100e1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
