/************************************************
 *  @file     : fram_MB85RS2.c
 *  @date     : May, 2026
 *  @author   : CAO HIEU - NHAT MINH
 *-----------------------------------------------
 ************************************************/
#include "fram_MB85RS2.h"
#include "peripheral/pio/plib_pio.h"
/*************************************************
 *              FRAM OPCODES                     *
 *************************************************/
#define FRAM_WREN   (0x06U)   /* Write Enable Latch          */
#define FRAM_WRDI   (0x04U)   /* Write Disable               */
#define FRAM_RDSR   (0x05U)   /* Read Status Register        */
#define FRAM_WRSR   (0x01U)   /* Write Status Register       */
#define FRAM_READ   (0x03U)   /* Read Memory                 */
#define FRAM_WRITE  (0x02U)   /* Write Memory                */
#define FRAM_RDID   (0x9FU)   /* Read Device ID              */
#define FRAM_FSTRD  (0x0BU)   /* Fast Read Memory            */
#define FRAM_SLEEP  (0xB9U)   /* Enter Sleep Mode            */

/*************************************************
 *              INITIALIZATION                   *
 *************************************************/
void FRAM_SPI_Driver_Init(void)
{
    /* CS idle = high (deselect) */
    FRAM_NCS_Set();
}

/*************************************************
 *              LOW-LEVEL COMMANDS               *
 *************************************************/
Std_ReturnType FRAM_SPI_WriteEnable(void)
{
    Std_ReturnType status;

    FRAM_NCS_Clear();
    status = USART2_SPID_Write(FRAM_WREN);
    FRAM_NCS_Set();

    return status;
}

Std_ReturnType FRAM_SPI_WriteDisable(void)
{
    Std_ReturnType status;

    FRAM_NCS_Clear();
    status = USART2_SPID_Write(FRAM_WRDI);
    FRAM_NCS_Set();

    return status;
}

/*************************************************
 *              MEMORY WRITE                     *
 *************************************************/
Std_ReturnType FRAM_SPI_WriteMem(uint32_t addr, const uint8_t *pData, uint16_t len)
{
    if (pData == NULL || len == 0U) { return E_ERROR; }

    Std_ReturnType status;

    uint8_t addr_bytes[3] = {
        (uint8_t)((addr >> 16U) & 0xFFU),
        (uint8_t)((addr >>  8U) & 0xFFU),
        (uint8_t)( addr         & 0xFFU)
    };

    /* WREN must be its own standalone CS transaction */
    status = FRAM_SPI_WriteEnable();
    if (status != E_OK) { return status; }

    /* Begin WRITE transaction */
    FRAM_NCS_Clear();

    status = USART2_SPID_Write(FRAM_WRITE);
    if (status != E_OK) { goto write_abort; }

    status = USART2_SPID_TransmitArray(addr_bytes, sizeof(addr_bytes));
    if (status != E_OK) { goto write_abort; }

    status = USART2_SPID_TransmitArray(pData, (size_t)len);

write_abort:
    FRAM_NCS_Set();

    if (status != E_OK) { return status; }

    /* WRDI explicit for safety (FRAM auto-clears WEL on CS rise anyway) */
    status = FRAM_SPI_WriteDisable();

    return status;
}

/*************************************************
 *              MEMORY READ                      *
 *************************************************/
Std_ReturnType FRAM_SPI_ReadMem(uint32_t addr, uint8_t *pData, uint16_t len)
{
    if (pData == NULL || len == 0U) { return E_ERROR; }

    Std_ReturnType status;

    uint8_t addr_bytes[3] = {
        (uint8_t)((addr >> 16U) & 0xFFU),
        (uint8_t)((addr >>  8U) & 0xFFU),
        (uint8_t)( addr         & 0xFFU)
    };

    FRAM_NCS_Clear();

    status = USART2_SPID_Write(FRAM_READ);
    if (status != E_OK) 
    {
        FRAM_NCS_Set();
        return status;
    }

    status = USART2_SPID_TransmitArray(addr_bytes, sizeof(addr_bytes));
    if (status != E_OK) 
    { 
        FRAM_NCS_Set();
        return status;
    }

    /* Dummy 0xFF clocked out, capture MISO into pData */
    status = USART2_SPID_ReceiveArray(pData, (size_t)len);

    FRAM_NCS_Set();

    return status;
}

/*************************************************
 *              READ DEVICE ID                   *
 *************************************************/
Std_ReturnType FRAM_SPI_ReadID(uint8_t *pID, uint16_t len)
{
    if (pID == NULL || len == 0U) { return E_ERROR; }

    Std_ReturnType status;

    FRAM_NCS_Clear();

    status = USART2_SPID_Write(FRAM_RDID);
    if (status != E_OK) { goto rdid_abort; }

    status = USART2_SPID_ReceiveArray(pID, (size_t)len);

rdid_abort:
    FRAM_NCS_Set();

    return status;
}