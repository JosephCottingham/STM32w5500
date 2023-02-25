################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../W5500/W5500Interface.c 

C_DEPS += \
./W5500/W5500Interface.d 

OBJS += \
./W5500/W5500Interface.o 


# Each subdirectory must supply rules for building sources it contributes
W5500/%.o W5500/%.su: ../W5500/%.c W5500/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src" -I"../Drivers/ioLibrary_Driver/Internet/MQTT" -I"../Drivers/ioLibrary_Driver/Ethernet" -I"../Drivers/ioLibrary_Driver/Ethernet/W5500" -I"../Drivers/ioLibrary_Driver/Internet/DNS" -I"../Drivers/ioLibrary_Driver/Internet/DHCP" -I../W5500 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-W5500

clean-W5500:
	-$(RM) ./W5500/W5500Interface.d ./W5500/W5500Interface.o ./W5500/W5500Interface.su

.PHONY: clean-W5500

