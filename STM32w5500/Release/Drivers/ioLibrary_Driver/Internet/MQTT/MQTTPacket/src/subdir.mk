################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.c \
../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.c 

C_DEPS += \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.d \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.d 

OBJS += \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o \
./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/%.o Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/%.su: ../Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/%.c Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32G431xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT-2f-MQTTPacket-2f-src

clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT-2f-MQTTPacket-2f-src:
	-$(RM) ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectClient.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTConnectServer.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTDeserializePublish.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTFormat.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTPacket.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSerializePublish.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeClient.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTSubscribeServer.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeClient.su ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.d ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.o ./Drivers/ioLibrary_Driver/Internet/MQTT/MQTTPacket/src/MQTTUnsubscribeServer.su

.PHONY: clean-Drivers-2f-ioLibrary_Driver-2f-Internet-2f-MQTT-2f-MQTTPacket-2f-src

