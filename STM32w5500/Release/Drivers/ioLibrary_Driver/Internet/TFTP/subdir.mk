################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Internet/TFTP/netutil.c \
../Drivers/ioLibrary_Driver/Internet/TFTP/tftp.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Internet/TFTP/netutil.d \
./Drivers/ioLibrary_Driver/Internet/TFTP/tftp.d 

OBJS += \
./Drivers/ioLibrary_Driver/Internet/TFTP/netutil.o \
./Drivers/ioLibrary_Driver/Internet/TFTP/tftp.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Internet/TFTP/%.o Drivers/ioLibrary_Driver/Internet/TFTP/%.su: ../Drivers/ioLibrary_Driver/Internet/TFTP/%.c Drivers/ioLibrary_Driver/Internet/TFTP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-TFTP

clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-TFTP:
	-$(RM) ./Drivers/ioLibrary_Driver/Internet/TFTP/netutil.d ./Drivers/ioLibrary_Driver/Internet/TFTP/netutil.o ./Drivers/ioLibrary_Driver/Internet/TFTP/netutil.su ./Drivers/ioLibrary_Driver/Internet/TFTP/tftp.d ./Drivers/ioLibrary_Driver/Internet/TFTP/tftp.o ./Drivers/ioLibrary_Driver/Internet/TFTP/tftp.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-TFTP

