#include "stm32f7xx.h"
#include "stm32f7xx_hal.h"

void LED_init(void)
{
  GPIO_InitTypeDef  GPIO_Initure;
  __HAL_RCC_GPIOB_CLK_ENABLE();		//开启GPIOB时钟
  GPIO_Initure.Pin=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_5; //PB0,1,PB5RGB背光
  GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //推挽输出
  GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
  GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //高速
  HAL_GPIO_Init(GPIOB,&GPIO_Initure);     //初始化GPIOB.0和GPIOB.1
}

void LED_on(void)
{
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_0,GPIO_PIN_RESET);	//PB0置1,点亮
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_1,GPIO_PIN_RESET);	//PB1置0,点亮
}

void LED_off(void)
{
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_0,GPIO_PIN_SET);	//PB0置1,熄灭
  HAL_GPIO_WritePin(GPIOB,GPIO_PIN_1,GPIO_PIN_SET);	//PB1置0,熄灭
}

static void sys_clock_config(void)
{
	RCC_OscInitTypeDef Osc;
	RCC_ClkInitTypeDef Clk;
    Osc.HSEState=RCC_HSE_ON;
    Osc.HSICalibrationValue=RCC_HSICALIBRATION_DEFAULT;
    Osc.HSIState=RCC_HSI_OFF;
    Osc.OscillatorType=RCC_OSCILLATORTYPE_HSE;
    Osc.PLL.PLLSource=RCC_PLLSOURCE_HSE;
    Osc.PLL.PLLState=RCC_PLL_ON;
    Osc.PLL.PLLM=25;
    Osc.PLL.PLLN=432;
	Osc.PLL.PLLP=RCC_PLLP_DIV2;
	Osc.PLL.PLLQ=9;
	if(HAL_OK!=HAL_RCC_OscConfig(&Osc))
		while(1);
    if(HAL_OK!=HAL_PWREx_EnableOverDrive())
    	while(1);
	Clk.SYSCLKSource=RCC_SYSCLKSOURCE_PLLCLK;
	Clk.AHBCLKDivider=RCC_SYSCLK_DIV1;
	Clk.APB1CLKDivider=RCC_HCLK_DIV4;
	Clk.APB2CLKDivider=RCC_HCLK_DIV2;
	Clk.ClockType=(RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
	if(HAL_OK!=HAL_RCC_ClockConfig(&Clk,FLASH_ACR_LATENCY_7WS))
		while(1);

}
int main(void)
{
	HAL_Init();
	sys_clock_config();
	LED_init();

    while(1)
    {
    	LED_on();
    	HAL_Delay(1000);
    	LED_off();
    	HAL_Delay(1000);
    };
    return 0;
}
