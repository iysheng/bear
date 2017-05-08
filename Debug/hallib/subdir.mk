################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hallib/stm32f7xx_hal.c \
../hallib/stm32f7xx_hal_adc.c \
../hallib/stm32f7xx_hal_cortex.c \
../hallib/stm32f7xx_hal_dma.c \
../hallib/stm32f7xx_hal_gpio.c \
../hallib/stm32f7xx_hal_ltdc.c \
../hallib/stm32f7xx_hal_pwr_ex.c \
../hallib/stm32f7xx_hal_rcc.c \
../hallib/stm32f7xx_hal_rcc_ex.c \
../hallib/stm32f7xx_hal_sdram.c \
../hallib/stm32f7xx_hal_tim.c \
../hallib/stm32f7xx_hal_tim_ex.c \
../hallib/stm32f7xx_hal_uart.c \
../hallib/stm32f7xx_ll_fmc.c 

OBJS += \
./hallib/stm32f7xx_hal.o \
./hallib/stm32f7xx_hal_adc.o \
./hallib/stm32f7xx_hal_cortex.o \
./hallib/stm32f7xx_hal_dma.o \
./hallib/stm32f7xx_hal_gpio.o \
./hallib/stm32f7xx_hal_ltdc.o \
./hallib/stm32f7xx_hal_pwr_ex.o \
./hallib/stm32f7xx_hal_rcc.o \
./hallib/stm32f7xx_hal_rcc_ex.o \
./hallib/stm32f7xx_hal_sdram.o \
./hallib/stm32f7xx_hal_tim.o \
./hallib/stm32f7xx_hal_tim_ex.o \
./hallib/stm32f7xx_hal_uart.o \
./hallib/stm32f7xx_ll_fmc.o 

C_DEPS += \
./hallib/stm32f7xx_hal.d \
./hallib/stm32f7xx_hal_adc.d \
./hallib/stm32f7xx_hal_cortex.d \
./hallib/stm32f7xx_hal_dma.d \
./hallib/stm32f7xx_hal_gpio.d \
./hallib/stm32f7xx_hal_ltdc.d \
./hallib/stm32f7xx_hal_pwr_ex.d \
./hallib/stm32f7xx_hal_rcc.d \
./hallib/stm32f7xx_hal_rcc_ex.d \
./hallib/stm32f7xx_hal_sdram.d \
./hallib/stm32f7xx_hal_tim.d \
./hallib/stm32f7xx_hal_tim_ex.d \
./hallib/stm32f7xx_hal_uart.d \
./hallib/stm32f7xx_ll_fmc.d 


# Each subdirectory must supply rules for building sources it contributes
hallib/%.o: ../hallib/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DSTM32F767xx -DUSE_HAL_DRIVER -I"D:\Apollo\neon\bear\cmsis" -I"D:\Apollo\neon\bear\hallib\inc" -I"D:\Apollo\neon\bear\hallib\inc\Legacy" -I"D:\Apollo\neon\bear\uC-CPU" -I"D:\Apollo\neon\bear\uC-LIB\Ports" -I"D:\Apollo\neon\bear\uC-LIB" -I"D:\Apollo\neon\bear\UCOS-BSP" -I"D:\Apollo\neon\bear\UCOS-CONFIG" -I"D:\Apollo\neon\bear\uCOS-III\Ports\ARM-Cortex-M\ARMv7-M\GNU" -I"D:\Apollo\neon\bear\uC-CPU\ARM-Cortex-M4\GNU" -I"D:\Apollo\neon\bear\uCOS-III\Source" -I"D:\Apollo\neon\bear\usr" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


