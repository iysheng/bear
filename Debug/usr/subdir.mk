################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../usr/apollo.c \
../usr/rgb.c \
../usr/touch.c 

OBJS += \
./usr/apollo.o \
./usr/rgb.o \
./usr/touch.o 

C_DEPS += \
./usr/apollo.d \
./usr/rgb.d \
./usr/touch.d 


# Each subdirectory must supply rules for building sources it contributes
usr/%.o: ../usr/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F767xx -DUSE_HAL_DRIVER -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -I"D:\Apollo\neon\bear\uC-CPU" -I"D:\Apollo\neon\bear\uC-LIB\Ports" -I"D:\Apollo\neon\bear\uC-LIB" -I"D:\Apollo\neon\bear\UCOS-BSP" -I"D:\Apollo\neon\bear\UCOS-CONFIG" -I"D:\Apollo\neon\bear\uCOS-III\Ports\ARM-Cortex-M\ARMv7-M\GNU" -I"D:\Apollo\neon\bear\uC-CPU\ARM-Cortex-M4\GNU" -I"D:\Apollo\neon\bear\uCOS-III\Source" -I"D:\Apollo\neon\bear\usr" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


