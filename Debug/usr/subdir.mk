################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usr/main.c 

OBJS += \
./usr/main.o 

C_DEPS += \
./usr/main.d 


# Each subdirectory must supply rules for building sources it contributes
usr/%.o: ../usr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F767xx -DUSE_HAL_DRIVER -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


