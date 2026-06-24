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
#define XBLD_CMD_BCOUNT        0x46U
#define XBLD_CMD_BHISTORY      0x47U

/* Write frame layout */
#define XBLD_WRITE_ADDR_SIZE   4U
#define XBLD_WRITE_DATA_MAX    (255U - XBLD_WRITE_ADDR_SIZE)  /* 251 */

/* Write-ACK layout */
#define XBLD_WRITE_ACK_LEN     5U
#define XBLD_WRITE_ACK_OK      0x00U
#define XBLD_WRITE_ACK_ERR     0x01U

/* Flash geometry - SAMV71Q21B sector size 128 KB */
#define XBLD_SECTOR_SIZE        131072U   /* 128 KB */

/* =========================================================================
 * Memory map - dual slot
 *
 *   0x00400000  Bootloader  128 KB
 *   0x00420000  Slot 0 hdr  512 B   main app
 *   0x00420200  Slot 0 app  ~1023 KB
 *   0x00520000  Slot 1 hdr  512 B   backup app
 *   0x00520200  Slot 1 app  ~895 KB
 *   0x005FFFFF  End of 2 MB flash
 * =========================================================================*/
#ifndef XBLD_IMAGE_HDR_SIZE
#define XBLD_IMAGE_HDR_SIZE    512U
#endif

/* Slot 0 - main */
#ifndef XBLD_SLOT0_HDR_ADDR
#define XBLD_SLOT0_HDR_ADDR    0x00420000U
#endif
#ifndef XBLD_SLOT0_MAX_SIZE
#define XBLD_SLOT0_MAX_SIZE    0x000FFE00U   /* 1023 KB */
#endif

/* Slot 1 - backup */
#ifndef XBLD_SLOT1_HDR_ADDR
#define XBLD_SLOT1_HDR_ADDR    0x00520000U
#endif
#ifndef XBLD_SLOT1_MAX_SIZE
#define XBLD_SLOT1_MAX_SIZE    0x000DFE00U   /* 895 KB */
#endif

/* Legacy aliases - slot 0 is main */
#define XBLD_APP_HDR_ADDR      XBLD_SLOT0_HDR_ADDR
#define XBLD_APP_MAX_SIZE      XBLD_SLOT0_MAX_SIZE
#define XBLD_APP_START_ADDR    (XBLD_SLOT0_HDR_ADDR + XBLD_IMAGE_HDR_SIZE)

/* Number of slots */
#define XBLD_NUM_SLOTS         2U

#ifndef XBLD_HW_ID
#define XBLD_HW_ID             1U
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

/* Autoboot - slot 0 (main) */
#ifndef XBLD_AUTOBOOT_TIMEOUT_S
#define XBLD_AUTOBOOT_TIMEOUT_S   3U
#endif

/* Autoboot - slot 1 (backup) */
#ifndef XBLD_BACKUP_BOOT_TIMEOUT_S
#define XBLD_BACKUP_BOOT_TIMEOUT_S  60U
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