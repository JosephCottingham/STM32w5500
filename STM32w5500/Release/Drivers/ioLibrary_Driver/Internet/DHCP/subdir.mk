################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.d 

OBJS += \
./Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Internet/DHCP/%.o Drivers/ioLibrary_Driver/Internet/DHCP/%.su: ../Drivers/ioLibrary_Driver/Internet/DHCP/%.c Drivers/ioLibrary_Driver/Internet/DHCP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-DHCP

clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-DHCP:
	-$(RM) ./Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.d ./Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.o ./Drivers/ioLibrary_Driver/Internet/DHCP/dhcp.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-DHCP

