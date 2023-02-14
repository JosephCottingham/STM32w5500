/*
 * W5500.h
 *
 *  Created on: Feb 12, 2023
 *      Author: josep
 */

#ifndef W5500INTERFACE_H_
#define W5500INTERFACE_H_

#define W5500_SPI_CLOCK_SPEED

#define W5500_CS_Pin GPIO_PIN_4
#define W5500_CS_GPIO_Port GPIOB
#define W5500_RST_Pin GPIO_PIN_5
#define W5500_RST_GPIO_Port GPIOB

void W5500Initialze(void);

void W5500HardwareReset(void);
void resetAssert(void);
void resetDeassert(void);

void W5500WriteByte(unsigned char byte);
uint8_t W5500ReadByte(void);

void W5500WriteBytes(uint8_t* pBuf, uint16_t len);
void W5500ReadBytes(uint8_t* pBuf, uint16_t len);

void W5500Select(void);
void W5500DeSelect(void);

#endif /* W5500INTERFACE_H_ */

