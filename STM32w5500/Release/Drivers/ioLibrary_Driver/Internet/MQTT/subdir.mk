################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.d 

OBJS += \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Internet/MQTT/%.o Drivers/ioLibrary_Driver/Internet/MQTT/%.su: ../Drivers/ioLibrary_Driver/Internet/MQTT/%.c Drivers/ioLibrary_Driver/Internet/MQTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I../W5500 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT

clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT:
	-$(RM) ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTClient.su ./Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.d ./Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.o ./Drivers/ioLibrary_Driver/Internet/MQTT/mqtt_interface.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT

