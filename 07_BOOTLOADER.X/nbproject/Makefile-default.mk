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
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/7475211a4b0ee01e13a83d705158463b390c450c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/257b99f999d6d4eb9b4ab49012f4b6479c3e75ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/968b1d99bf053ba30ba882b97b09bc9657e3c362 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/fb41db2c85bb16ff6310db1ee76101116dec047b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/bb8079530617a76c3102d248ae693a68fce8ea6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/9357fc2f255ff8410410673ab848679394ca2e07 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/4d9ec3f68ad5e2335530694d243ad8faeed86ec0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/3992db8e39828d6f4946ae7e1d2b9976876eabf2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/1b325edcec20d9d5c9f672bc76374de82c71875 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/d2a5140b386f28913d7e3beff4ee956619b284c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/39cbbaa1cef05273025a6ae1e10e72a84a081906 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/ae23a2f5a6fff460bd7400c263bff26f39f60791 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/41211a971419f51eab08a4b98ccc6857f0c7130b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/ae29953b3ba26de12155de1c3e126d5b568c5417 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/afb2f1a1465dd237821eeea22f665875387d1451 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/44d3f71633c8018a827b3f9aef714711069e3ca0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/d8e3d72f2f34fef88005972641c70baa20cdd55e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/6bd6127aa952851bddcafdf2616d88809fa06620 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/9bac70bca4bb4dd0b11756934a0170e3be0ad2f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/b2fcf22c56464c2feaa4881f1217a75629ef47ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/4b28edda24d8edae27c20144b0acb2e7baeef625 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/d9685fadd4eafeb5c41063d8323b208128af788e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/2b9eb190a8c5870ea040f7670d0fa9c9181d5379 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/c125f4aa392f9aff2c0dd83948fc87e788ef7ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/22ec875c4355242f5832ddbd0f62a0fd8b44c455 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/a60cdb7e5f572e2b25eff925bf19f52e6095dc02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/9335d6aacd7d37644a2ff13368af17ac20856303 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/7219f91d3ba5f8d6c16c29b59ce2c7ba19e9f965 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/5ae64c0c178575f4e9a99973a107e2df97d42d53 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/73c5da0d697680e99f9424484063eacb6b24aea6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/fb2fa9a627a197de90e10dd7d739fea0af7ab637 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/46800d169c830d33a5d9e5b9aee82c3d17899352 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/698a04508a4d31e5fc2e4e6b843eb0556f001981 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/79129b8bbc2e52dec7b0ecf3c094e4fbb94ad948 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/85732f010435370876a6b3f8d5a37864162ea2e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/7d422928557da9bf15159f844ef2fb7a8f7c4926 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/3112627a714580833bae15c80c2edfa32709b9b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/c48656b58576b8e8955188ac4cbbe898a815cd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/fd17265c43a8430e18e967f35706541a16c5c8ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/581fe918cfb8beded8e24c94585a18c91ab6e639 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/7496bea2eea30835ed63abd87bda685dfe6a44e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/eb61587764a4c601e147a470a9d5da2fad2f4dcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/52a33e2766ff44ad97892257b9f7fe6e626de92b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/b8e0b690c809548a2b938411bc72f8df670317b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/6849b3a270a8b7594175d957345065218edc224e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/dec4fca9c50c3d7552a6c655ef4c14e2302cc2ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/5a941762e1f64235c6bb8173c6a8ceb298e840ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/28c81f9439c6d512ebb3dfd3fbdf3dacea41a063 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/d8012d4584912a153280bc40f57df9cc692d6607 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/7f198462a7a620059584b0b8f7d486349e8d7a3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/30eb7d04cc34b5bbaa06689148775896b4e419f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/89c82938a880759036c7f20a4ab472f721e1abc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/b739301ea829e2606b96fac86c619870ffe3f731 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/501984ef2ef3a6fb54ed577cb55d0f4e33233eec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/ef7ba428f13ece6d4d173036569b2505a06d081d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/743dc226971a72509bab8a7d886b159c12e715bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/b67f5e01e3d0c608c7fedd267897773c692ed45f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/d4a9bd25528b72ea1f442384bb7c3ebfdf6a657c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/73db242ea0818a763903d44048887dc5bc6a3847 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f994480b74aa292d30ff07fe06d82fb113d54180 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/a058a95412efaccc29aa122a6599d7459ff241b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/5c82d4f4f8cd0df41e0cf44f9fd6249bb38ac921 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/23503138c71f2d0ca17f6d023c1beea47908eebb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/d8c99f54a17ddf576a95ae4acf73702b2b65455 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/7746d17d2ccae141bce4c7c40be3544d7406b577 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/4e9982c4a964730c0f247d3eff20d51b9142f3ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/60d0c0be3596842717e5ec837e3f85b55e2e1ea9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/196dd0960793ba90489f72edbaca9692293fd61b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/7685bb32596c645a0005767a3fe8f7c6979cdcfa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/1b30f030c83ccaecfbc8d088c5bfa4dbb0104be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/2cba9592338f284fd1fd411507d6f85b0b75dc9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/7b9a732474e20bebf00f9ebaf8288b84933e5112 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/4a08bb4a8cafdddfcf591045631d916c7bf1e761 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/645251a60b43df95c7d8315c8a6fa1673671dcec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/be3f9073f78165012b4be9ee597843c6c1a087a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/5965c81f9bf7a66fb897c618be5926407ca63e73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/4176fa8362b81e52390423a3208a6d4d275f5968 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/c076495beb6dd1501f3331295fc01a2d221848e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/ace93bcd25940d849798ed1aa375291cb5e6292a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/b7f4f5b32df29294d8667bf6ce4b0165ece3b186 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/56deaf6b996045ceddd842abe4284d8f7d958b12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/97bb4a0989db55d9f05047e061aa150549e95eeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/9115b0ae1a8d67999c653e9a0371aadcfba0d46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/41961da20e0d4c9ffa6a733c4e52d373520cf57b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/96e66f802dd61a91b3d92066e991a5c63ecabe31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/23256a9b0e9747b611e912fa639b03403211b6fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/d830b7483eef2076a60c2317d415a47d60a97203 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/281eea2b6626313690b68fa9512403f6c32f711c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/f9612c670b39fa16184ca754a715431383fde869 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/74e734308be0e5f350f67d0af477a5876e14625c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/2578c93b555484fd6d41c34368d1b6e6ec5ff229 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/210ae0535c3685ad82f09b07a1f8a97a260df585 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/eb9d3562bdf3289598b43a8c104a2ac35f46299d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/25f43de841de8ecabe3e4423892f40ceb978f465 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/b131f9f9c5df0b0375ad2fb3a222e974526b820c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/7ab92f7d96d9723eadd308a030507c2e943a48f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
