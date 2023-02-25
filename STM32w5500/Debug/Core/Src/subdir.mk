################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/HexTrans.c \
../Core/Src/gpio.c \
../Core/Src/main.c \
../Core/Src/serialCommand.c \
../Core/Src/spi.c \
../Core/Src/stm32g4xx_hal_msp.c \
../Core/Src/stm32g4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32g4xx.c \
../Core/Src/usart.c 

C_DEPS += \
./Core/Src/HexTrans.d \
./Core/Src/gpio.d \
./Core/Src/main.d \
./Core/Src/serialCommand.d \
./Core/Src/spi.d \
./Core/Src/stm32g4xx_hal_msp.d \
./Core/Src/stm32g4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32g4xx.d \
./Core/Src/usart.d 

OBJS += \
./Core/Src/HexTrans.o \
./Core/Src/gpio.o \
./Core/Src/main.o \
./Core/Src/serialCommand.o \
./Core/Src/spi.o \
./Core/Src/stm32g4xx_hal_msp.o \
./Core/Src/stm32g4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32g4xx.o \
./Core/Src/usart.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/W5500" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls/include" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS" -I../W5500 -I"../Drivers/TLS/mbedtls/include" -I"../Drivers/TLS/mbedtls" -I"../Drivers/TLS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/main.o: ../Core/Src/main.c Core/Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/W5500" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls/include" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS" -I../W5500 -I"../Drivers/TLS/mbedtls/include" -I"../Drivers/TLS/mbedtls" -I"../Drivers/TLS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/HexTrans.d ./Core/Src/HexTrans.o ./Core/Src/HexTrans.su ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/serialCommand.d ./Core/Src/serialCommand.o ./Core/Src/serialCommand.su ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spi.su ./Core/Src/stm32g4xx_hal_msp.d ./Core/Src/stm32g4xx_hal_msp.o ./Core/Src/stm32g4xx_hal_msp.su ./Core/Src/stm32g4xx_it.d ./Core/Src/stm32g4xx_it.o ./Core/Src/stm32g4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32g4xx.d ./Core/Src/system_stm32g4xx.o ./Core/Src/system_stm32g4xx.su ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

