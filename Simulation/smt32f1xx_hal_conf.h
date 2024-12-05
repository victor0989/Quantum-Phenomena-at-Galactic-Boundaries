/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f1xx_hal_conf.h
  * @brief   HAL configuration file for Transmon Pocket simulation.
  ******************************************************************************
  * @attention
  * This file has been modified for simulating a Transmon Pocket system.
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM32F1xx_HAL_CONF_H
#define __STM32F1xx_HAL_CONF_H

#ifdef __cplusplus
 extern "C" {
#endif

/* ########################## Module Selection ############################## */
/**
  * @brief Modules required for Transmon Pocket simulation.
  */

#define HAL_MODULE_ENABLED
#define HAL_ADC_MODULE_ENABLED         /* Enabled for analog-to-digital conversion */
#define HAL_I2C_MODULE_ENABLED         /* I2C for communication with sensors/actuators */
#define HAL_UART_MODULE_ENABLED        /* UART for debugging or data transmission */
#define HAL_GPIO_MODULE_ENABLED        /* GPIO for control and feedback signals */
#define HAL_TIM_MODULE_ENABLED         /* Timers for precise timing and PWM */
#define HAL_CORTEX_MODULE_ENABLED      /* Core functionalities like interrupts */
#define HAL_DMA_MODULE_ENABLED         /* Direct Memory Access for fast data transfer */

/* ########################## Oscillator Values ############################ */
/* Oscillator values remain the same for STM32F1xx unless the Transmon Pocket 
   requires specialized timing. */
#define HSE_VALUE    8000000U 
#define HSI_VALUE    8000000U 
#define LSI_VALUE    40000U
#define LSE_VALUE    32768U
#define HSE_STARTUP_TIMEOUT 100U
#define LSE_STARTUP_TIMEOUT 5000U

/* ########################### System Configuration ######################## */
/**
  * Priority adjustments for time-critical operations.
  */
#define VDD_VALUE                    3300U /*!< VDD value in millivolts */
#define TICK_INT_PRIORITY            1U    /*!< Higher priority for system tick */
#define USE_RTOS                     0U    /*!< No RTOS for simulation purposes */
#define PREFETCH_ENABLE              1U    /*!< Enable instruction prefetch */

/* Callback registration enabled for dynamic functionality. */
#define USE_HAL_ADC_REGISTER_CALLBACKS         1U 
#define USE_HAL_I2C_REGISTER_CALLBACKS         1U 
#define USE_HAL_UART_REGISTER_CALLBACKS        1U 
#define USE_HAL_TIM_REGISTER_CALLBACKS         1U 

/* ########################## Assert Selection ############################# */
/* Uncomment to enable parameter checking for debugging */
// #define USE_FULL_ASSERT    1U

/* ################## SPI peripheral configuration ######################## */
/* SPI is disabled in this configuration. Uncomment if needed. */
// #define HAL_SPI_MODULE_ENABLED
// #define USE_SPI_CRC 0U

/* Includes ---------------------------------------------------------------- */
/* Include module headers for enabled features */
#ifdef HAL_RCC_MODULE_ENABLED
#include "stm32f1xx_hal_rcc.h"
#endif /* HAL_RCC_MODULE_ENABLED */

#ifdef HAL_GPIO_MODULE_ENABLED
#include "stm32f1xx_hal_gpio.h"
#endif /* HAL_GPIO_MODULE_ENABLED */

#ifdef HAL_DMA_MODULE_ENABLED
#include "stm32f1xx_hal_dma.h"
#endif /* HAL_DMA_MODULE_ENABLED */

#ifdef HAL_ADC_MODULE_ENABLED
#include "stm32f1xx_hal_adc.h"
#endif /* HAL_ADC_MODULE_ENABLED */

#ifdef HAL_I2C_MODULE_ENABLED
#include "stm32f1xx_hal_i2c.h"
#endif /* HAL_I2C_MODULE_ENABLED */

#ifdef HAL_UART_MODULE_ENABLED
#include "stm32f1xx_hal_uart.h"
#endif /* HAL_UART_MODULE_ENABLED */

#ifdef HAL_TIM_MODULE_ENABLED
#include "stm32f1xx_hal_tim.h"
#endif /* HAL_TIM_MODULE_ENABLED */

#ifdef HAL_CORTEX_MODULE_ENABLED
#include "stm32f1xx_hal_cortex.h"
#endif /* HAL_CORTEX_MODULE_ENABLED */

/* USER CODE BEGIN AdditionalConfig */
/* Additional configurations specific to Transmon Pocket can be added here. */
/* USER CODE END AdditionalConfig */

#ifdef __cplusplus
}
#endif

#endif /* __STM32F1xx_HAL_CONF_H */
