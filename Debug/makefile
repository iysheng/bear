################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include usr/newlib/subdir.mk
-include usr/subdir.mk
-include uCOS-III/Source/subdir.mk
-include uCOS-III/Ports/ARM-Cortex-M/ARMv7-M/GNU/subdir.mk
-include uC-LIB/Ports/ARM-Cortex-M4/GNU/subdir.mk
-include uC-LIB/subdir.mk
-include uC-CPU/Cache/ARM/armv7m_generic_l1/subdir.mk
-include uC-CPU/ARM-Cortex-M4/GNU/subdir.mk
-include uC-CPU/subdir.mk
-include hallib/subdir.mk
-include cmsis/subdir.mk
-include UCOS-CONFIG/subdir.mk
-include UCOS-BSP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
bear.hex \

SECONDARY_SIZE += \
bear.siz \


# All Target
all: bear.elf secondary-outputs

# Tool invocations
bear.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM GNU C Linker'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=soft -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T "D:\Apollo\neon\bear\cmsis\STM32F767ZITx_ITCM_FLASH.ld" -Xlinker --gc-sections -Wl,-Map,"bear.map" -o "bear.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

bear.hex: bear.elf
	@echo 'Invoking: Cross ARM GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex "bear.elf"  "bear.hex"
	@echo 'Finished building: $@'
	@echo ' '

bear.siz: bear.elf
	@echo 'Invoking: Cross ARM GNU Print Size'
	arm-none-eabi-size --format=berkeley "bear.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(SECONDARY_FLASH)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) bear.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
