################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../cmsis/startup_stm32f767xx.s 

C_SRCS += \
../cmsis/stm32f7xx_it.c \
../cmsis/system_stm32f7xx.c 

OBJS += \
./cmsis/startup_stm32f767xx.o \
./cmsis/stm32f7xx_it.o \
./cmsis/system_stm32f7xx.o 

S_DEPS += \
./cmsis/startup_stm32f767xx.d 

C_DEPS += \
./cmsis/stm32f7xx_it.d \
./cmsis/system_stm32f7xx.d 


# Each subdirectory must supply rules for building sources it contributes
cmsis/%.o: ../cmsis/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -I"D:\Apollo\neon\bear\uC-CPU" -I"D:\Apollo\neon\bear\uC-LIB\Ports" -I"D:\Apollo\neon\bear\uC-LIB" -I"D:\Apollo\neon\bear\UCOS-BSP" -I"D:\Apollo\neon\bear\UCOS-CONFIG" -I"D:\Apollo\neon\bear\uCOS-III\Ports\ARM-Cortex-M\ARMv7-M\GNU" -I"D:\Apollo\neon\bear\uC-CPU\ARM-Cortex-M4\GNU" -I"D:\Apollo\neon\bear\uCOS-III\Source" -I"D:\Apollo\neon\bear\usr" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

cmsis/%.o: ../cmsis/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F767xx -DUSE_HAL_DRIVER -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -I"D:\Apollo\neon\bear\uC-CPU" -I"D:\Apollo\neon\bear\uC-LIB\Ports" -I"D:\Apollo\neon\bear\uC-LIB" -I"D:\Apollo\neon\bear\UCOS-BSP" -I"D:\Apollo\neon\bear\UCOS-CONFIG" -I"D:\Apollo\neon\bear\uCOS-III\Ports\ARM-Cortex-M\ARMv7-M\GNU" -I"D:\Apollo\neon\bear\uC-CPU\ARM-Cortex-M4\GNU" -I"D:\Apollo\neon\bear\uCOS-III\Source" -I"D:\Apollo\neon\bear\usr" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


