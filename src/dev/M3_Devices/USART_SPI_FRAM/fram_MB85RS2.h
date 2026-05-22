/************************************************
 *  @file     : fram_MB85RS2.h
 *  @date     : May, 2026
 *  @author   : CAO HIEU - NHAT MINH
 *-----------------------------------------------
 ************************************************/
#ifndef FRAM_MB85RS2_H
#define FRAM_MB85RS2_H

#ifdef __cplusplus
extern "C" {
#endif

/*************************************************
 *                  INCLUDES                     *
 *************************************************/
#include <stdint.h>
#include <stdbool.h>
#include "Define/define.h"
#include "USART_SPI/usart_spi_polling.h"

/*************************************************
 *              PUBLIC API                       *
 *************************************************/

/**
 * @brief  Initialize FRAM driver.
 *         Drives CS high (deselect).
 */
void FRAM_SPI_Driver_Init(void);

/**
 * @brief  Send WREN (Write Enable Latch) command.
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType FRAM_SPI_WriteEnable(void);

/**
 * @brief  Send WRDI (Write Disable) command.
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType FRAM_SPI_WriteDisable(void);

/**
 * @brief  Write bytes to FRAM memory.
 * @param  addr   24-bit memory address
 * @param  pData  Pointer to source data buffer
 * @param  len    Number of bytes to write
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType FRAM_SPI_WriteMem(uint32_t addr, const uint8_t *pData, uint16_t len);

/**
 * @brief  Read bytes from FRAM memory.
 * @param  addr   24-bit memory address
 * @param  pData  Pointer to destination data buffer
 * @param  len    Number of bytes to read
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType FRAM_SPI_ReadMem(uint32_t addr, uint8_t *pData, uint16_t len);

/**
 * @brief  Read Device ID from FRAM (RDID, up to 9 bytes).
 * @param  pID  Destination buffer
 * @param  len  Number of ID bytes to read
 * @return E_OK | E_TIMEOUT | E_ERROR
 */
Std_ReturnType FRAM_SPI_ReadID(uint8_t *pID, uint16_t len);

#ifdef __cplusplus
}
#endif

#endif /* FRAM_MB85RS2_H */