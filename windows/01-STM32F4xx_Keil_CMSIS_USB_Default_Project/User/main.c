// /**
//  *	Keil project template
//  *
//  *	Before you start, select your target, on the right of the "Load" button
//  *
//  *	@author		Tilen Majerle
//  *	@email		tilen@majerle.eu
//  *	@website	http://stm32f4-discovery.com
//  *	@ide		Keil uVision 5
//  *	@conf		System clock configured for USB if needed
//  *	@conf		STM32F429 and STM32F446 are set to 168MHz and STM32F411xx to 96MHz for USB 48MHz clock
//  *	@conf		PLL parameters are set in "Options for Target" -> "C/C++" -> "Defines"
//  *	@packs		STM32F4xx Keil packs version 2.4.0 or greater required
//  *	@stdperiph	STM32F4xx Standard peripheral drivers version 1.5.0 or greater required
//  */
// /* Include core modules */
// #include "stm32f4xx.h"
// /* Include my libraries here */
// #include "defines.h"
// #include "tm_stm32f4_delay.h"
// #include "tm_stm32f4_disco.h"

// int main(void) {
// 	/* Initialize system */
// 	SystemInit();
// 	
// 	/* Initialize delay */
// 	TM_DELAY_Init();
// 	
// 	/* Initialize leds on board */
// 	TM_DISCO_LedInit();
// 	
// 	/* Turn on all leds */
// 	TM_DISCO_LedOn(LED_ALL);
// 	
// 	/* Delay 2 seconds */
// 	Delayms(2000);
// 	
// 	while (1) {
// 		/* Toggle leds */
// 		TM_DISCO_LedToggle(LED_GREEN);
// 		Delayms(500);
// 		TM_DISCO_LedToggle(LED_RED);
// 		Delayms(500);
// 		TM_DISCO_LedToggle(LED_ORANGE);
// 		Delayms(500);
// 		TM_DISCO_LedToggle(LED_BLUE);
// 		Delayms(500);
// 		
// 		/* Wait 500ms */
// 		//Delayms(500);
// 	}
// }

/**
 *    Keil project for DAC with DMA signal feature
 *
 *    Before you start, select your target, on the right of the "Load" button
 *
 *    @author     Tilen Majerle
 *    @email        tilen@majerle.eu
 *    @website    http://stm32f4-discovery.com
 *    @ide        Keil uVision 5
 */
/* Include core modules */
#include "stm32f4xx.h"
/* Include my libraries here */
#include "defines.h"
#include "tm_stm32f4_dac_signal.h"
#include "tm_stm32f4_delay.h"
#include "tm_stm32f4_disco.h"
 
int main(void) {    
    /* Initialize system */
    SystemInit();
    
    /* Initialize delay */
    TM_DELAY_Init();
    
    /* Initialize LEDs on board */
    TM_DISCO_LedInit();
    
    /* Initialize DAC1, use TIM4 for signal generation */
    TM_DAC_SIGNAL_Init(TM_DAC1, TIM4);
    /* Initialize DAC2, use TIM5 for signal generation */
    TM_DAC_SIGNAL_Init(TM_DAC2, TIM5);
    
    /* Output predefined triangle signal with frequency of 5kHz */
    TM_DAC_SIGNAL_SetSignal(TM_DAC1, TM_DAC_SIGNAL_Signal_Triangle, 5000);
    /* Output predefined square signal with frequency of 10kHz */
    TM_DAC_SIGNAL_SetSignal(TM_DAC2, TM_DAC_SIGNAL_Signal_Square, 10000);
    
    while (1) {
        
    }
}
