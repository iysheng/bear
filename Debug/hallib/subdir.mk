################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hallib/stm32f7xx_hal.c \
../hallib/stm32f7xx_hal_cortex.c \
../hallib/stm32f7xx_hal_gpio.c \
../hallib/stm32f7xx_hal_pwr_ex.c \
../hallib/stm32f7xx_hal_rcc.c 

OBJS += \
./hallib/stm32f7xx_hal.o \
./hallib/stm32f7xx_hal_cortex.o \
./hallib/stm32f7xx_hal_gpio.o \
./hallib/stm32f7xx_hal_pwr_ex.o \
./hallib/stm32f7xx_hal_rcc.o 

C_DEPS += \
./hallib/stm32f7xx_hal.d \
./hallib/stm32f7xx_hal_cortex.d \
./hallib/stm32f7xx_hal_gpio.d \
./hallib/stm32f7xx_hal_pwr_ex.d \
./hallib/stm32f7xx_hal_rcc.d 


# Each subdirectory must supply rules for building sources it contributes
hallib/%.o: ../hallib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F767xx -DUSE_HAL_DRIVER -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


