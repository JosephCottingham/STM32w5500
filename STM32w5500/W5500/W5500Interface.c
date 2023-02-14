/*
 * W5500.cpp
 *
 *  Created on: Feb 12, 2023
 *      Author: josep
 */

/*Include: STM Library*/
#include "stm32g4xx_hal.h"
#include "stm32g4xx_hal_rcc.h"
#include "stm32g4xx_hal_gpio.h"
#include "stm32g4xx_hal_spi.h"
#include "stm32g4xx_hal_exti.h"
#include "stm32g4xx_hal_cortex.h"

/*Include: Header file*/
#include "W5500Interface.h"

/*Include: W5500 Library*/
#include "wizchip_conf.h"

/*include: Standard IO library*/
#include <stdio.h>

//#include "IoTEVB.h"

//extern led_ctrl led1,led2;
extern SPI_HandleTypeDef hspi1;
extern UART_HandleTypeDef huart2;
extern uint8_t uartBufLen;
extern uint8_t uartBuf;

extern wiz_NetInfo gWIZNETINFO;

void W5500Initialze(void)
{
	unsigned char temp;
	unsigned char W5500FifoSize[2][8] = {{2,2,2,2,2,2,2,2,},{2,2,2,2,2,2,2,2}};

	W5500DeSelect();

	/* spi function register */
	reg_wizchip_spi_cbfunc(W5500ReadByte, W5500WriteByte);
//	reg_wizchip_spiburst_cbfunc(W5500ReadBytes, W5500WriteBytes);

	/* CS function register */
	reg_wizchip_cs_cbfunc(W5500Select,W5500DeSelect);

	if(ctlwizchip(CW_INIT_WIZCHIP,(void*)W5500FifoSize) == -1)
	{
		uartBufLen = sprintf((char*)uartBuf, "W5500 initialized fail.\n\r");
		HAL_UART_Transmit(&huart2, (uint8_t*)uartBuf, uartBufLen, 100);
	}

	do{//check phy status.
		if(ctlwizchip(CW_GET_PHYLINK,(void*)&temp) == -1){
			uartBufLen = sprintf((char*)uartBuf, "Unknown PHY link status.\n\r");
			HAL_UART_Transmit(&huart2, (uint8_t*)uartBuf, uartBufLen, 100);
		}
		HAL_Delay(500);
	}while(temp == PHY_LINK_OFF);

}

void W5500HardwareReset(void)
{
	int i,j,k;
	k=0;
	HAL_GPIO_WritePin(W5500_RST_GPIO_Port, W5500_RST_Pin, GPIO_PIN_RESET);
	for(i = 0 ;i < 100 ; i++)
	{
		for(j = 0 ;j < 100 ; j++)
		{
			k++;
		}
	}
	HAL_GPIO_WritePin(W5500_RST_GPIO_Port, W5500_RST_Pin, GPIO_PIN_SET);
}

inline resetAssert(void)
{
	HAL_GPIO_WritePin(W5500_RST_GPIO_Port, W5500_RST_Pin, GPIO_PIN_RESET);
}

inline resetDeassert(void)
{
	HAL_GPIO_WritePin(W5500_RST_GPIO_Port, W5500_RST_Pin, GPIO_PIN_SET);
}

void W5500WriteByte(uint8_t byte)
{
	HAL_SPI_Transmit(&hspi1, (uint8_t*)&byte, 1, HAL_MAX_DELAY);
}

uint8_t W5500ReadByte(void)
{
	char rxData[5] = {0,0,0,0,0};
	HAL_SPI_Receive(&hspi1, (uint8_t*)rxData, 1, HAL_MAX_DELAY);
	return rxData[0];
}

//
//void W5500ReadBytes(uint8_t* pBuf, uint16_t len)
//{
//	HAL_SPI_Receive(&hspi1, pBuf, len, HAL_MAX_DELAY);
//
//}
//
//void W5500WriteBytes(uint8_t* pBuf, uint16_t len)
//{
//	HAL_SPI_Transmit(&hspi1, pBuf, len, HAL_MAX_DELAY);
//}



inline W5500Select()
{
	HAL_GPIO_WritePin(W5500_CS_GPIO_Port, W5500_CS_Pin, GPIO_PIN_RESET);
}

inline W5500DeSelect()
{
	HAL_GPIO_WritePin(W5500_CS_GPIO_Port, W5500_CS_Pin, GPIO_PIN_SET);
}


