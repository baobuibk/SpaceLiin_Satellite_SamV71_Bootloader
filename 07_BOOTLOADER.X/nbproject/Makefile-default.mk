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
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/c7388d738e3616e1fe4677e87ff5f87341952d9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/d088a17d240557eb32b725f8eb2cc91624d84f09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/fef387e49d69652d498d5c6359a8b36f5ed0eb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/10838233180fa0b7cc4a20623697005c672ce065 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/fe5010aa8351ea148329a5f6e107a74371567897 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/3f7fb6d565794bfa7017780016fdb723703e500f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/7dd587dad0a440c8120785019d8019d19c653cfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/9410461a575e81f4d19718a8f109a6c913e3cde6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/18ec6f42a653da1263e0d4d3ffa3b41d39bb542f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/fff36df4d974dc0df57d51bdd395e0f2f9d9ca3d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/10422c707f7c864a7af902973a68c37cfe05ab99 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/5b7bb6b8345e0589783da1e8a474a35374125da5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/52ac5b3c92f0a4e69d2ff4dd086aa0a99abd878c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/9e2a2bb2d1a155cf2f16b84330be97525b8405a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/d29cfc0dd83010678ba951ec29e80b7f6c5d8d22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/c3bdc9bdef2d8348fb491baaef36861242774932 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/dab7d98b5085d16f3a19e2f4a3c5bb0967aa6bd5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/7848500fc0f5759103e93a65d30b73c8b8b1305f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/8fdd3bc2c22f1daf748b1cc31912b8ba132ba6c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/5ab8afa1c7b5ace83a65b27b056ecf58c4810c5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/3f6f15647525350efb3dd21f2b594f7083196bf3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/609a7776de919004d9c608eee712997b2f357f18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/ee1d36b44bead6f00ade15f0e8d970de2e7ef37d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/28dadf4b5ac68dadcebaf88be1148ada3f34b8de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/cae11e2fe23b583e5453a1121b28cddaf37dc37c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/d2bc92e84ae35c469a56c783b76afda1ab03f281 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/41e6c04aba7995272a997d56768a8e17e52e6249 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/d522832515ccf9cdc8a4b7d0dfe1cc3e9541c233 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/a4f0e6486ef2f52da796e6a5f346e674985a1751 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/82faa935cf212cb8aa90393c40bb4426634fbec3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/c52819dbed11a4d154cd71e309cd8fe88dbbe279 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/7966def9f9288173a3d5b5c3aba135c0e4dd3d17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/9f51ee5afb1c09d4c0bb115f50a0df220760a94b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/9ded849f51e550b9c1d4016f1fb7a9b7ccafdc95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/f6ee905d098b697b8e046d9a89b612b2d3ac35c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/53b393ccb71d339d5d041d1f8754f553720b56b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/ddbaf570f46f9a2ab76c2c43a6c50040ce45f46c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/8ea57f877c5d8c6e5208bb963fbd9072f3450d0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/d12283674594a4373925446dd2ea6b31af22a40c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/414d484bab32ecd4f63dc273d8b9a45d9227e3d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/88e259c0c927e510358fdfccdbfe798665e4e2de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/1ab307fdb663af7b9e07201d50549743fda92250 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/7dbdbe9655a23d56ee422f886b76376d7566154c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/56a677c17681d1958b339c54814f27f28ce17445 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/8a6fee50c942982e610a0b3d27233230a4c7f0df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/ca27a95d5d3195b59bf671676a9714228350af00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/4dad1ce665a43f61aba7a2ab34293e6abc65ff26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/65912c978b5a9107937e35cd681b9def7ab997ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/flags/default/1136eab4be30a5bfc67b5e1df498301e01cc32b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60167248/plib_efc.o: ../src/config/default/peripheral/efc/plib_efc.c  .generated_files/flags/default/cb6c4b81e9d52a9c9a12cead48835b0e3c342b96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60167248" 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o.d 
	@${RM} ${OBJECTDIR}/_ext/60167248/plib_efc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60167248/plib_efc.o.d" -o ${OBJECTDIR}/_ext/60167248/plib_efc.o ../src/config/default/peripheral/efc/plib_efc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/cd838b68d8e1e4d04bb4ccdc01f8161cacbe4a1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/60177924/plib_pio.o: ../src/config/default/peripheral/pio/plib_pio.c  .generated_files/flags/default/277808b5dff80c0ab7c3b35e57f894f85717bb5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/60177924" 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/60177924/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/60177924/plib_pio.o.d" -o ${OBJECTDIR}/_ext/60177924/plib_pio.o ../src/config/default/peripheral/pio/plib_pio.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/344970edd342b38c10142ffc1caa3eb6a151bc62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart2.o: ../src/config/default/peripheral/uart/plib_uart2.c  .generated_files/flags/default/4db1a8676a042e7e33b072257ed27f353bfce441 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart2.o ../src/config/default/peripheral/uart/plib_uart2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865657120/plib_uart0.o: ../src/config/default/peripheral/uart/plib_uart0.c  .generated_files/flags/default/95d6c251b2c6483b1b587e8ccc9401f389cb9a60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart0.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart0.o ../src/config/default/peripheral/uart/plib_uart0.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o: ../src/config/default/peripheral/usart/plib_usart2_spi.c  .generated_files/flags/default/7c4654adaf2eb844bc71cb8dd3efe3f4e2bdc5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2001315827" 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o.d" -o ${OBJECTDIR}/_ext/2001315827/plib_usart2_spi.o ../src/config/default/peripheral/usart/plib_usart2_spi.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/a06fae338f8abfdfcbdc1ed1eb681116a408a845 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/8a6de8e469b9c4bf67badd116e33079952f6f7a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/642c3828957ce30cc7bf7be0e674675f7052690b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/19060e86d8c128fef72b1af91d451086dcd9129f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/a4ac157f2014fbb24ba836edafa68abc6ebaf058 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/4aedf6efa07b07620fd2357e1f1562526a958a5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17266001/app_alive.o: ../src/dev/M0_App/AppOS/App_Alive/app_alive.c  .generated_files/flags/default/fdb8fe31d731c33c94d22fe0f790f72ff8f1f936 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/17266001" 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o.d 
	@${RM} ${OBJECTDIR}/_ext/17266001/app_alive.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/17266001/app_alive.o.d" -o ${OBJECTDIR}/_ext/17266001/app_alive.o ../src/dev/M0_App/AppOS/App_Alive/app_alive.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/16342722/app_blink.o: ../src/dev/M0_App/AppOS/App_Blink/app_blink.c  .generated_files/flags/default/f12bd2e7fff870e4563683d376235cf8878764cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/16342722" 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o.d 
	@${RM} ${OBJECTDIR}/_ext/16342722/app_blink.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/16342722/app_blink.o.d" -o ${OBJECTDIR}/_ext/16342722/app_blink.o ../src/dev/M0_App/AppOS/App_Blink/app_blink.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1108331200/app_root.o: ../src/dev/M0_App/AppOS/App_Root/app_root.c  .generated_files/flags/default/b115d2bcfc10b60816d7d6d3bc5260549d24fe2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1108331200" 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o.d 
	@${RM} ${OBJECTDIR}/_ext/1108331200/app_root.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1108331200/app_root.o.d" -o ${OBJECTDIR}/_ext/1108331200/app_root.o ../src/dev/M0_App/AppOS/App_Root/app_root.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/451399510/app_xtp.o: ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c  .generated_files/flags/default/2773ed4671f35641adaa2bf03f328d6b9d222bc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/451399510" 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/451399510/app_xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/451399510/app_xtp.o.d" -o ${OBJECTDIR}/_ext/451399510/app_xtp.o ../src/dev/M0_App/AppOS/App_XTP/app_xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/249897560/boot.o: ../src/dev/M0_App/Boot/boot.c  .generated_files/flags/default/de92ffb4a398174c9cda31a42fb12a5e01cf6c2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/249897560" 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o.d 
	@${RM} ${OBJECTDIR}/_ext/249897560/boot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/249897560/boot.o.d" -o ${OBJECTDIR}/_ext/249897560/boot.o ../src/dev/M0_App/Boot/boot.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/547890490/scheduler.o: ../src/dev/M0_App/OS/Scheduler/scheduler.c  .generated_files/flags/default/9c000f3e73e95fc7667f73ed6fec461c8b10261f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/547890490" 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o.d 
	@${RM} ${OBJECTDIR}/_ext/547890490/scheduler.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/547890490/scheduler.o.d" -o ${OBJECTDIR}/_ext/547890490/scheduler.o ../src/dev/M0_App/OS/Scheduler/scheduler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2100091010/embedded_cli.o: ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c  .generated_files/flags/default/ee55d182e2a8a1f66455f0de315cdf2b2e4ba27b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2100091010" 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d 
	@${RM} ${OBJECTDIR}/_ext/2100091010/embedded_cli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/2100091010/embedded_cli.o.d" -o ${OBJECTDIR}/_ext/2100091010/embedded_cli.o ../src/dev/M1_SysApp/embeddedCLI/embedded_cli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld.o: ../src/dev/M1_SysApp/xbld/xbld.c  .generated_files/flags/default/b9b42bf63a7f7ff9948f3aca0c8395ef77b09776 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld.o ../src/dev/M1_SysApp/xbld/xbld.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_image.o: ../src/dev/M1_SysApp/xbld/xbld_image.c  .generated_files/flags/default/a7d0ea03b61d3b26bb8a19533786821f1e0538b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_image.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_image.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_image.o ../src/dev/M1_SysApp/xbld/xbld_image.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port.o: ../src/dev/M1_SysApp/xbld/xbld_port.c  .generated_files/flags/default/e6c568afdf43a143822cb118e75ae7407d44a261 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port.o ../src/dev/M1_SysApp/xbld/xbld_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_port_template.o: ../src/dev/M1_SysApp/xbld/xbld_port_template.c  .generated_files/flags/default/6d9052a819da07dbed0b78c84a9ee233cb3704c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_port_template.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_port_template.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_port_template.o ../src/dev/M1_SysApp/xbld/xbld_port_template.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o: ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c  .generated_files/flags/default/f53e297d7e4d08d61048a0c10b5d85fe43e92909 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751326486" 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d 
	@${RM} ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o.d" -o ${OBJECTDIR}/_ext/751326486/xbld_bootinfo.o ../src/dev/M1_SysApp/xbld/xbld_bootinfo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli.o: ../src/dev/M1_SysApp/xcli/xcli.c  .generated_files/flags/default/3065c0b2915039ba28d7f2d2d57a3723bf94513a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli.o ../src/dev/M1_SysApp/xcli/xcli.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_commands.o: ../src/dev/M1_SysApp/xcli/xcli_commands.c  .generated_files/flags/default/c38e005c03024c38094e80868d0cc469b5a4e259 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_commands.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_commands.o ../src/dev/M1_SysApp/xcli/xcli_commands.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/751327452/xcli_serial.o: ../src/dev/M1_SysApp/xcli/xcli_serial.c  .generated_files/flags/default/c817c4690b2ba086acd2fb28efc6b482047a4020 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/751327452" 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/751327452/xcli_serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/751327452/xcli_serial.o.d" -o ${OBJECTDIR}/_ext/751327452/xcli_serial.o ../src/dev/M1_SysApp/xcli/xcli_serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp.o: ../src/dev/M1_SysApp/xtp/xtp.c  .generated_files/flags/default/7a51ec78f625d56bd642f1b9e2a6652406a2692d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp.o ../src/dev/M1_SysApp/xtp/xtp.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_arq.o: ../src/dev/M1_SysApp/xtp/xtp_arq.c  .generated_files/flags/default/15f0fdf01ea4cfc69749b91bface141b5bb779a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_arq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_arq.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_arq.o ../src/dev/M1_SysApp/xtp/xtp_arq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc.o: ../src/dev/M1_SysApp/xtp/xtp_crc.c  .generated_files/flags/default/863d5c12fb046caf78c5fcc4f8c6f62d3af4ebbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc.o ../src/dev/M1_SysApp/xtp/xtp_crc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o: ../src/dev/M1_SysApp/xtp/xtp_crc_table.c  .generated_files/flags/default/fffa638a4617216a6d79a5b8d47a7f50405a940 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_crc_table.o ../src/dev/M1_SysApp/xtp/xtp_crc_table.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_ecc.o: ../src/dev/M1_SysApp/xtp/xtp_ecc.c  .generated_files/flags/default/5537e3c4de902a66d273b8a4521e0fab3cb4deee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_ecc.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_ecc.o ../src/dev/M1_SysApp/xtp/xtp_ecc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_hmac.o: ../src/dev/M1_SysApp/xtp/xtp_hmac.c  .generated_files/flags/default/707f71844dc1403f142c63ec95bdffe2629f9f83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_hmac.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_hmac.o ../src/dev/M1_SysApp/xtp/xtp_hmac.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_port.o: ../src/dev/M1_SysApp/xtp/xtp_port.c  .generated_files/flags/default/a4ee8381bca7b94d9d334dc711511fc03a8c427c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_port.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_port.o ../src/dev/M1_SysApp/xtp/xtp_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_seg.o: ../src/dev/M1_SysApp/xtp/xtp_seg.c  .generated_files/flags/default/6019708c59239f0a01027ef5e71395ac089a5b6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_seg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_seg.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_seg.o ../src/dev/M1_SysApp/xtp/xtp_seg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1084141760/xtp_stats.o: ../src/dev/M1_SysApp/xtp/xtp_stats.c  .generated_files/flags/default/65ab939c22453085ec654e7d449a83ac2c8dcb92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1084141760" 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d 
	@${RM} ${OBJECTDIR}/_ext/1084141760/xtp_stats.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1084141760/xtp_stats.o.d" -o ${OBJECTDIR}/_ext/1084141760/xtp_stats.o ../src/dev/M1_SysApp/xtp/xtp_stats.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_dma.o: ../src/dev/M2_BSP/UART/uart_dma.c  .generated_files/flags/default/ed6145af39370713a65ca578ea2045196f7730f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_dma.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_dma.o ../src/dev/M2_BSP/UART/uart_dma.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/216470852/uart_irq.o: ../src/dev/M2_BSP/UART/uart_irq.c  .generated_files/flags/default/a7e49f2e128fab404d1e62f74ff7906ce56493d7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/216470852" 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o.d 
	@${RM} ${OBJECTDIR}/_ext/216470852/uart_irq.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/216470852/uart_irq.o.d" -o ${OBJECTDIR}/_ext/216470852/uart_irq.o ../src/dev/M2_BSP/UART/uart_irq.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/20267900/usart_spi_polling.o: ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c  .generated_files/flags/default/7b4e9ee348c73a66241c34033e317735df840d0f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/20267900" 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d 
	@${RM} ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/20267900/usart_spi_polling.o.d" -o ${OBJECTDIR}/_ext/20267900/usart_spi_polling.o ../src/dev/M2_BSP/USART_SPI/usart_spi_polling.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o: ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c  .generated_files/flags/default/b4a22ae647a7046fc3a669ca55c1f641872c625f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1727043903" 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d 
	@${RM} ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o.d" -o ${OBJECTDIR}/_ext/1727043903/wd_tpl5010.o ../src/dev/M3_Devices/IO_ExWD-TPL5010/wd_tpl5010.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o: ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c  .generated_files/flags/default/3294d228e226a900a516fe88927d545de57449e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1109075364" 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o.d" -o ${OBJECTDIR}/_ext/1109075364/fram_MB85RS2.o ../src/dev/M3_Devices/USART_SPI_FRAM/fram_MB85RS2.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/697864676/date_time.o: ../src/dev/M5_Utils/DateTime/date_time.c  .generated_files/flags/default/440bf64ded7a8cc0e894b827ad04b9b6cf11ebb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/697864676" 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/697864676/date_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/697864676/date_time.o.d" -o ${OBJECTDIR}/_ext/697864676/date_time.o ../src/dev/M5_Utils/DateTime/date_time.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1260377903/ring_buffer.o: ../src/dev/M5_Utils/RingBuffer/ring_buffer.c  .generated_files/flags/default/ad40e7a8191947051d92cab5df35818e005e398d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1260377903" 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1260377903/ring_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1260377903/ring_buffer.o.d" -o ${OBJECTDIR}/_ext/1260377903/ring_buffer.o ../src/dev/M5_Utils/RingBuffer/ring_buffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1226835810/tick.o: ../src/dev/M5_Utils/Tick/tick.c  .generated_files/flags/default/31adf3b61763ef188962f568ee3fdfbd90fdfa27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1226835810" 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1226835810/tick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1226835810/tick.o.d" -o ${OBJECTDIR}/_ext/1226835810/tick.o ../src/dev/M5_Utils/Tick/tick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o: ../src/ATSAMV71cm7_it.c  .generated_files/flags/default/a158ba45e69d2c8ea82f850fcfb08c90003d9049 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAMV71Q21B_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/dev/M0_App" -I"../src/dev/M1_SysApp" -I"../src/dev/M2_BSP" -I"../src/dev/M3_Devices" -I"../src/dev/M4_Middlewares" -I"../src/dev/M5_Utils" -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o.d" -o ${OBJECTDIR}/_ext/1360937237/ATSAMV71cm7_it.o ../src/ATSAMV71cm7_it.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samv71b" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/a82f03ffe432d7b4fc8c520b58b08dc45c1c993c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
