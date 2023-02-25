################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/TLS/SSLInterface.c \
../Drivers/TLS/SSL_Random.c 

C_DEPS += \
./Drivers/TLS/SSLInterface.d \
./Drivers/TLS/SSL_Random.d 

OBJS += \
./Drivers/TLS/SSLInterface.o \
./Drivers/TLS/SSL_Random.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/TLS/%.o Drivers/TLS/%.su: ../Drivers/TLS/%.c Drivers/TLS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I../W5500 -I"../Drivers/TLS/mbedtls/include" -I"../Drivers/TLS/mbedtls" -I"../Drivers/TLS" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-TLS

clean-Drivers-2f-TLS:
	-$(RM) ./Drivers/TLS/SSLInterface.d ./Drivers/TLS/SSLInterface.o ./Drivers/TLS/SSLInterface.su ./Drivers/TLS/SSL_Random.d ./Drivers/TLS/SSL_Random.o ./Drivers/TLS/SSL_Random.su

.PHONY: clean-Drivers-2f-TLS

