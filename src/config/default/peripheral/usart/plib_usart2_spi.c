/*******************************************************************************
  USART2 SPI PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_usart2_spi.c

  Summary:
    USART2 SPI PLIB Implementation File

  Description:
    None

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2020 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#include "device.h"
#include "plib_usart2_spi.h"
#include "interrupts.h"

// *****************************************************************************
// *****************************************************************************
// Section: USART2 SPI Implementation
// *****************************************************************************
// *****************************************************************************

void USART2_SPI_Initialize( void )
{
    /* Configure USART2 mode to SPI Master (0x0E) */
    USART2_REGS->US_MR = US_MR_SPI_USART_MODE(US_MR_SPI_USART_MODE_SPI_MASTER_Val);

    /* Reset SPI RX, SPI TX and SPI status */
    USART2_REGS->US_CR = (US_CR_SPI_RSTRX_Msk | US_CR_SPI_RSTTX_Msk | US_CR_SPI_RSTSTA_Msk);

    /* Configure clock source, clock phase, clock polarity and CKO = 1 */
    USART2_REGS->US_MR |= (US_MR_USART_USCLKS_MCK | US_MR_SPI_CHRL(US_MR_SPI_CHRL_8_BIT_Val) | US_MR_SPI_CPHA(0x0U) | US_MR_SPI_CPOL(0x1U) | US_MR_SPI_CLKO(1U));

    /* Enable TX and RX */
    USART2_REGS->US_CR = (US_CR_SPI_RXEN_Msk | US_CR_SPI_TXEN_Msk);

    /* Configure USART2 Baud Rate */
    USART2_REGS->US_BRGR = US_BRGR_CD(120U);

    /* Initialize instance object */
}

bool USART2_SPI_TransferSetup( USART_SPI_TRANSFER_SETUP * setup, uint32_t spiSourceClock )
{
    uint32_t clockDivider = 0;
    bool setupStatus = false;

    if ((setup != NULL) && (setup->clockFrequency != 0U))
    {
        if(spiSourceClock == 0U)
        {
            // Fetch Master Clock Frequency directly
            spiSourceClock = 120000000UL;
        }

        clockDivider = spiSourceClock/setup->clockFrequency;

        if(clockDivider < 6U)
        {
            clockDivider = 6U;
        }
        else if(clockDivider > 65535U)
        {
            clockDivider = 65535U;
        }
        else
        {
           /* Clock divider is valid */
        }

        USART2_REGS->US_MR = ((USART2_REGS->US_MR & ~US_MR_SPI_CPOL_Msk) | (uint32_t)setup->clockPolarity);
        USART2_REGS->US_MR = ((USART2_REGS->US_MR & ~US_MR_SPI_CPHA_Msk) | (uint32_t)setup->clockPhase);
        USART2_REGS->US_MR = ((USART2_REGS->US_MR & ~US_MR_SPI_CHRL_Msk) | (uint32_t)setup->dataBits);

        USART2_REGS->US_BRGR = ((USART2_REGS->US_BRGR & ~US_BRGR_CD_Msk) | US_BRGR_CD(clockDivider));
        setupStatus = true;
    }
    return setupStatus;
}

bool USART2_SPI_WriteRead( void* pTransmitData, size_t txSize, void* pReceiveData, size_t rxSize )
{
    size_t txCount = 0;
    size_t rxCount = 0;
    size_t dummySize = 0;
    uint8_t receivedData;
    uint32_t dummyData;
    bool isSuccess = false;

    /* Verify the request */
    if (((txSize > 0U) && (pTransmitData != NULL)) || ((rxSize > 0U) && (pReceiveData != NULL)))
    {
        if (pTransmitData == NULL)
        {
            txSize = 0;
        }
        if (pReceiveData == NULL)
        {
            rxSize = 0;
        }

        /* Reset over-run error if any */
        USART2_REGS->US_CR = US_CR_SPI_RSTSTA_Msk;

        /* Flush out any unread data in SPI read buffer */
        if ((USART2_REGS->US_CSR & US_CSR_SPI_RXRDY_Msk) != 0U)
        {
            dummyData = USART2_REGS->US_RHR;
            (void)dummyData;
        }

        if (rxSize > txSize)
        {
            dummySize = rxSize - txSize;
        }

        while((USART2_REGS->US_CSR & US_CSR_SPI_TXRDY_Msk) == 0U)
        {
            /* Make sure TXRDY is set */
        }


        while ((txCount != txSize) || (dummySize != 0U))
        {
            if (txCount != txSize)
            {
                USART2_REGS->US_THR = ((uint8_t*)pTransmitData)[txCount];
                txCount++;
            }
            else if (dummySize > 0U)
            {
                USART2_REGS->US_THR = 0xff;
                dummySize--;
            }
            else
            {
                /* Do nothing */
            }

            if (rxCount == rxSize)
            {
                while((USART2_REGS->US_CSR & US_CSR_SPI_TXRDY_Msk) == 0U)
                {
                    /* For transmit only request (or all data received), wait for TXRDY to set */
                }
            }
            else
            {

                while((USART2_REGS->US_CSR & US_CSR_SPI_RXRDY_Msk) == 0U)
                {
                    /* If data pending to be read, wait for RXRDY to set */
                }

                receivedData = (uint8_t)USART2_REGS->US_RHR;

                if (rxCount < rxSize)
                {
                    ((uint8_t*)pReceiveData)[rxCount++] = receivedData;
                }
            }
        }

        while ((USART2_REGS->US_CSR & US_CSR_SPI_TXEMPTY_Msk) == 0U)
        {
            /* Make sure no data is pending in the shift register */
        }


        isSuccess = true;
    }
    return isSuccess;
}

bool USART2_SPI_Write( void* pTransmitData, size_t txSize )
{
    return(USART2_SPI_WriteRead(pTransmitData, txSize, NULL, 0U));
}

bool USART2_SPI_Read( void* pReceiveData, size_t rxSize )
{
    return(USART2_SPI_WriteRead(NULL, 0U, pReceiveData, rxSize));
}

bool USART2_SPI_IsTransmitterBusy(void)
{
    return ((USART2_REGS->US_CSR & US_CSR_SPI_TXEMPTY_Msk) == 0U)? true : false;
}

