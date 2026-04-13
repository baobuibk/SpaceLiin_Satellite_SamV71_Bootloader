/*
 * xbld_image.c - Image verification + CRC32 (ISO-HDLC / zlib compatible)
 */

#include "xbld_image.h"
#include "xbld_port.h"
#include <string.h>

/* CRC32 table (ISO-HDLC poly 0xEDB88320) */
static uint32_t s_crc32_table[256];
static bool     s_crc32_ready = false;

static void crc32_init_table(void)
{
    if (s_crc32_ready) return;
    for (uint32_t i = 0; i < 256U; i++)
    {
        uint32_t c = i;
        for (int j = 0; j < 8; j++)
            c = (c & 1U) ? ((c >> 1) ^ 0xEDB88320U) : (c >> 1);
        s_crc32_table[i] = c;
    }
    s_crc32_ready = true;
}

uint32_t xBLD_CRC32(const uint8_t *data, uint32_t len)
{
    crc32_init_table();
    uint32_t crc = 0xFFFFFFFFU;
    for (uint32_t i = 0; i < len; i++)
        crc = (crc >> 8) ^ s_crc32_table[(crc ^ data[i]) & 0xFFU];
    return crc ^ 0xFFFFFFFFU;
}

uint32_t xBLD_CRC32_Flash(const xBLD_Port_t *port, uint32_t addr, uint32_t len)
{
    crc32_init_table();
    uint32_t crc = 0xFFFFFFFFU;
    uint8_t buf[256];
    while (len > 0U)
    {
        uint32_t chunk = (len > sizeof(buf)) ? sizeof(buf) : len;
        if (port->flash_read(addr, buf, chunk) != XBLD_PORT_OK)
            return 0U;
        for (uint32_t i = 0; i < chunk; i++)
            crc = (crc >> 8) ^ s_crc32_table[(crc ^ buf[i]) & 0xFFU];
        addr += chunk; len -= chunk;
    }
    return crc ^ 0xFFFFFFFFU;
}

/* Verify with detailed logging */
xBLD_VerifyResult_t xBLD_Image_Verify(const xBLD_Port_t  *port,
                                       uint32_t            hdr_addr,
                                       uint32_t            max_size,
                                       uint8_t             hw_id,
                                       xBLD_ImageHeader_t *hdr_out)
{
    xBLD_ImageHeader_t hdr;

    if (port->flash_read(hdr_addr, (uint8_t *)&hdr, sizeof(hdr)) != XBLD_PORT_OK)
    {
        XBLD_LOG("[xBLD] Verify: flash_read header FAILED");
        return XBLD_VERIFY_ERR_HDR_CRC;
    }

    XBLD_LOG("[xBLD] Verify: magic=0x%08X expect=0x%08X",
             (unsigned)hdr.magic, (unsigned)XBLD_IMAGE_MAGIC);

    if (hdr.magic != XBLD_IMAGE_MAGIC)
        return XBLD_VERIFY_ERR_MAGIC;

    XBLD_LOG("[xBLD] Verify: hw_id=%u expect=%u", hdr.hw_id, hw_id);

    if (hdr.hw_id != hw_id)
        return XBLD_VERIFY_ERR_HW_ID;

    XBLD_LOG("[xBLD] Verify: image_size=%u max_size=%u",
             (unsigned)hdr.image_size, (unsigned)max_size);

    if (hdr.image_size == 0U || hdr.image_size > max_size)
        return XBLD_VERIFY_ERR_SIZE;

    XBLD_LOG("[xBLD] Verify: load_addr=0x%08X expect=0x%08X",
             (unsigned)hdr.load_addr,
             (unsigned)(hdr_addr + XBLD_IMAGE_HDR_SIZE));

    if (hdr.load_addr != (hdr_addr + XBLD_IMAGE_HDR_SIZE))
        return XBLD_VERIFY_ERR_ADDR;

    /* Header CRC */
    {
        xBLD_ImageHeader_t hdr_tmp;
        memcpy(&hdr_tmp, &hdr, sizeof(hdr_tmp));
        hdr_tmp.hdr_crc32 = 0U;
        uint32_t calc = xBLD_CRC32((const uint8_t *)&hdr_tmp, sizeof(hdr_tmp));

        XBLD_LOG("[xBLD] Verify: hdr_crc calc=0x%08X stored=0x%08X",
                 (unsigned)calc, (unsigned)hdr.hdr_crc32);

        if (calc != hdr.hdr_crc32)
            return XBLD_VERIFY_ERR_HDR_CRC;
    }

    /* Image data CRC */
    {
        uint32_t img_addr = hdr_addr + XBLD_IMAGE_HDR_SIZE;
        uint32_t calc = xBLD_CRC32_Flash(port, img_addr, hdr.image_size);

        XBLD_LOG("[xBLD] Verify: img_crc calc=0x%08X stored=0x%08X",
                 (unsigned)calc, (unsigned)hdr.image_crc32);

        if (calc != hdr.image_crc32)
            return XBLD_VERIFY_ERR_IMG_CRC;
    }

    XBLD_LOG("[xBLD] Verify: ALL PASS");

    if (hdr_out != NULL)
        memcpy(hdr_out, &hdr, sizeof(xBLD_ImageHeader_t));
    return XBLD_VERIFY_OK;
}

const char *xBLD_VerifyResultStr(xBLD_VerifyResult_t result)
{
    switch (result)
    {
        case XBLD_VERIFY_OK:          return "OK";
        case XBLD_VERIFY_ERR_MAGIC:   return "ERR_MAGIC";
        case XBLD_VERIFY_ERR_HW_ID:   return "ERR_HW_ID";
        case XBLD_VERIFY_ERR_SIZE:    return "ERR_SIZE";
        case XBLD_VERIFY_ERR_HDR_CRC: return "ERR_HDR_CRC";
        case XBLD_VERIFY_ERR_IMG_CRC: return "ERR_IMG_CRC";
        case XBLD_VERIFY_ERR_ADDR:    return "ERR_ADDR";
        default:                       return "ERR_UNKNOWN";
    }
}