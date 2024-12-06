/******************************************************************************
  * File Name          : gpio.c
  * Description        : This file provides code for the configuration
  *                      of all used GPIO pins.
  *****************************************************************************/
#include "gpio.h"

void MX_GPIO_Init(void)
{
  /* GPIO Ports Clock Enable */
  __GPIOD_CLK_ENABLE();
  __GPIOA_CLK_ENABLE();
  __GPIOB_CLK_ENABLE();

}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
