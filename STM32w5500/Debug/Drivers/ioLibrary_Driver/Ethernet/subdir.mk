################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Ethernet/socket.c \
../Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Ethernet/socket.d \
./Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.d 

OBJS += \
./Drivers/ioLibrary_Driver/Ethernet/socket.o \
./Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Ethernet/%.o Drivers/ioLibrary_Driver/Ethernet/%.su: ../Drivers/ioLibrary_Driver/Ethernet/%.c Drivers/ioLibrary_Driver/Ethernet/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I../Drivers/ioLibrary_Driver/Internet/MQTT -I../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src -I../Drivers/ioLibrary_Driver/Ethernet -I../Drivers/ioLibrary_Driver/Ethernet/W5500 -I../Drivers/ioLibrary_Driver/Internet/DNS -I../Drivers/ioLibrary_Driver/Internet/DHCP -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/W5500" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls/include" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS/mbedtls" -I"C:/Users/josep/Projects/STM32w5500/STM32w5500/Drivers/TLS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet

clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet:
	-$(RM) ./Drivers/ioLibrary_Driver/Ethernet/socket.d ./Drivers/ioLibrary_Driver/Ethernet/socket.o ./Drivers/ioLibrary_Driver/Ethernet/socket.su ./Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.d ./Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.o ./Drivers/ioLibrary_Driver/Ethernet/wizchip_conf.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet

