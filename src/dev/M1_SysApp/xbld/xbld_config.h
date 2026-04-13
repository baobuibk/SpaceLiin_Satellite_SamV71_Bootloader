#ifndef XBLD_CONFIG_H
#define XBLD_CONFIG_H

#ifdef __cplusplus
extern "C" {
#endif
/* =========================================================================
 * xBLD
 * This file defines hardware-specific parameters and feature switches for xBLD.
 * =========================================================================*/
#define XBLD_XTP_WRITE_ID        ((uint16_t)0x0200U)
#define XBLD_XTP_WRITE_ACK_ID    ((uint16_t)0x0201U)

/* xCLI command IDs */
#define XBLD_CMD_PING          0x40U
#define XBLD_CMD_ERASE         0x41U
#define XBLD_CMD_VERIFY        0x42U
#define XBLD_CMD_JUMP          0x43U
#define XBLD_CMD_STATUS        0x44U
#define XBLD_CMD_READ          0x45U

/* Write frame layout */
#define XBLD_WRITE_ADDR_SIZE   4U
#define XBLD_WRITE_DATA_MAX    (255U - XBLD_WRITE_ADDR_SIZE)  /* 251 */

/* Write-ACK layout */
#define XBLD_WRITE_ACK_LEN     5U
#define XBLD_WRITE_ACK_OK      0x00U
#define XBLD_WRITE_ACK_ERR     0x01U

/* Flash geometry */
#define XBLD_SECTOR_SIZE        8192U

/* Memory map */
#ifndef XBLD_APP_HDR_ADDR
#define XBLD_APP_HDR_ADDR      0x0040C000U
#endif

#ifndef XBLD_IMAGE_HDR_SIZE
#define XBLD_IMAGE_HDR_SIZE    512U
#endif

#define XBLD_APP_START_ADDR    (XBLD_APP_HDR_ADDR + XBLD_IMAGE_HDR_SIZE)

#ifndef XBLD_APP_MAX_SIZE
#define XBLD_APP_MAX_SIZE      0x001F3E00U
#endif

#ifndef XBLD_HW_ID
#define XBLD_HW_ID             1U
#endif

/* =========================================================================
 * DCache operations (Cortex-M7)
 * 0 = disabled (safe default), 1 = enabled
 * =========================================================================*/
#ifndef XBLD_USE_DCACHE_OPS
#define XBLD_USE_DCACHE_OPS    0
#endif

/* =========================================================================
 * IRQ barrier during flash write/erase
 * =========================================================================*/
#ifndef XBLD_USE_IRQ_BARRIER
#define XBLD_USE_IRQ_BARRIER   1
#endif

/* Feature switches */
#define XBLD_USE_IMAGE_VERIFY  1
#define XBLD_USE_SHARED_DATA   1
#define XBLD_ENABLE_LOG        1

/* Image header */
#define XBLD_IMAGE_MAGIC       0xB007C0DEU
#define XBLD_IMAGE_HDR_VERSION 1U

/* Autoboot */
#ifndef XBLD_AUTOBOOT_TIMEOUT_S
#define XBLD_AUTOBOOT_TIMEOUT_S   3U
#endif

#ifndef XBLD_AUTOBOOT_POLL_MS
#define XBLD_AUTOBOOT_POLL_MS     100U
#endif

/* Logging */
#if XBLD_ENABLE_LOG
  #include "xtp/xtp_port.h"
  #define XBLD_LOG(...)  xTP_Log(__VA_ARGS__)
#else
  #define XBLD_LOG(...)  ((void)0)
#endif

#ifndef NULL
#define NULL ((void *)0)
#endif

#ifdef __cplusplus
}
#endif
#endif /* XBLD_CONFIG_H */