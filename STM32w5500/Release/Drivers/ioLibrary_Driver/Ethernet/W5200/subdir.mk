################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.d 

OBJS += \
./Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Ethernet/W5200/%.o Drivers/ioLibrary_Driver/Ethernet/W5200/%.su: ../Drivers/ioLibrary_Driver/Ethernet/W5200/%.c Drivers/ioLibrary_Driver/Ethernet/W5200/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I../W5500 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet-2f-W5200

clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet-2f-W5200:
	-$(RM) ./Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.d ./Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.o ./Drivers/ioLibrary_Driver/Ethernet/W5200/w5200.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Ethernet-2f-W5200

