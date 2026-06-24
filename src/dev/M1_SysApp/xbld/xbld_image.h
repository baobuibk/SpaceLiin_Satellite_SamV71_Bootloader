/*
 * xbld_image.h - Image header format for xBLD bootloader.
 *
 * Shared between:
 *   - xBLD firmware (reads/verifies header)
 *   - xbld_sign.py  (writes header into hex file)
 *   - xbld_host.py  (uploads signed image)
 *
 * Layout in flash:
 *   XBLD_APP_HDR_ADDR : xBLD_ImageHeader_t  (512 bytes)
 *   XBLD_APP_HDR_ADDR + 512 : ARM vector table + application code
 *
 * To port to a new MCU: only change HW_ID and addresses in xbld_config.h.
 */

#ifndef XBLD_IMAGE_H
#define XBLD_IMAGE_H

#include <stdint.h>
#include "xbld_config.h"
#include "xbld_port.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Hardware target IDs */
#define XBLD_HW_ID_SAMV71       1U
// #define XBLD_HW_ID_STM32F4      2U
// #define XBLD_HW_ID_STM32H7      3U
// #define XBLD_HW_ID_TIVA_TM4C    4U
/* Add more as needed */

/* Flags */
#define XBLD_IMAGE_FLAG_NONE      0x00U
#define XBLD_IMAGE_FLAG_ENCRYPTED 0x01U
#define XBLD_IMAGE_FLAG_SIGNED    0x02U

/* Header struct */
#pragma pack(push, 1)
typedef struct {
    uint32_t magic;           /**< Must equal XBLD_IMAGE_MAGIC               */
    uint16_t version_major;   /**< Firmware version major                    */
    uint16_t version_minor;   /**< Firmware version minor                    */
    uint16_t version_patch;   /**< Firmware version patch                    */
    uint16_t hdr_version;     /**< Header struct version (= XBLD_IMAGE_HDR_VERSION) */
    uint32_t image_size;      /**< Firmware size in bytes (NOT incl. header) */
    uint32_t load_addr;       /**< Flash address where firmware starts       */
    uint32_t entry_addr;      /**< Reset_Handler address (= load_addr ARM)   */
    uint32_t image_crc32;     /**< CRC32 of firmware data only (zlib compat) */
    uint32_t hdr_crc32;       /**< CRC32 of header (this field = 0 when calc)*/
    uint32_t timestamp;       /**< Unix timestamp at build time              */
    uint32_t build_number;    /**< Auto-incremented build counter            */
    uint8_t  hw_id;           /**< Target hardware ID (XBLD_HW_ID_*)        */
    uint8_t  flags;           /**< XBLD_IMAGE_FLAG_* bitmask                 */
    uint8_t  reserved[6];     /**< Reserved for future use, must be 0        */
    /*
     * Data above = 4+2+2+2+2+4+4+4+4+4+4+4+1+1+6 = 48 bytes.
     * Padding = 512 - 48 = 464 bytes.
     */
    uint8_t  padding[464];    /**< Pad struct to exactly 512 bytes           */
} xBLD_ImageHeader_t;
#pragma pack(pop)

/* Compile-time size guard */
#if defined(__GNUC__) || defined(__clang__) || defined(__XC32)
_Static_assert(sizeof(xBLD_ImageHeader_t) == XBLD_IMAGE_HDR_SIZE, "xBLD_ImageHeader_t must be 512 bytes");
#endif

/* Verify result codes */
typedef enum {
    XBLD_VERIFY_OK           =  0,
    XBLD_VERIFY_ERR_MAGIC    = -1,
    XBLD_VERIFY_ERR_HW_ID    = -2,
    XBLD_VERIFY_ERR_SIZE     = -3,
    XBLD_VERIFY_ERR_HDR_CRC  = -4,
    XBLD_VERIFY_ERR_IMG_CRC  = -5,
    XBLD_VERIFY_ERR_ADDR     = -6,
} xBLD_VerifyResult_t;

/* API */

/**
 * @brief Verify the image header + firmware CRC.
 * @param port      Pointer to port (for flash_read).
 * @param hdr_addr  Flash address of the xBLD_ImageHeader_t.
 * @param max_size  Maximum allowed image_size.
 * @param hw_id     Expected hardware ID.
 * @param hdr_out   If non-NULL, header is copied here on success.
 * @return          xBLD_VerifyResult_t code.
 */
xBLD_VerifyResult_t xBLD_Image_Verify(const xBLD_Port_t *port,
                                       uint32_t           hdr_addr,
                                       uint32_t           max_size,
                                       uint8_t            hw_id,
                                       xBLD_ImageHeader_t *hdr_out);

/**
 * @brief Compute CRC32 (ISO-HDLC / zlib compatible) over a buffer.
 */
uint32_t xBLD_CRC32(const uint8_t *data, uint32_t len);

/**
 * @brief Compute CRC32 over a flash region (reads via port).
 */
uint32_t xBLD_CRC32_Flash(const xBLD_Port_t *port,
                            uint32_t addr, uint32_t len);

/**
 * @brief Get human-readable string for a verify result code.
 */
const char *xBLD_VerifyResultStr(xBLD_VerifyResult_t result);

#ifdef __cplusplus
}
#endif
#endif /* XBLD_IMAGE_H */