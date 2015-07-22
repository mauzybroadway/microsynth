//main_demoaudio03.c wmh 2015-05-17 : (only) does asm("bl.W (0x08010000+1)") to run DAC1_TIM7_DMA1_init(), then spins at while(1). 
//main_justaudio03.c wmh 2015-05-16 : working -- enables CS43L22 for audio passthrough
//main_justaudio02.c wmh 2015-05-15 : working -- moves DAC/DMA demo output to PA4 using TIM7 DMA1 stream5
//main_justaudio01.c wmh 2015-05-15 : attempt to blend in DMA with interrupts from 440F13.1202.07_forth_UART_C_DAC_SYSINTs_DMAint_working


void DMA1Stream5int_svc(void);	//can be run as a function as well as an interrupt

#include "stm32f4xx.h"
#include "stm324xg_eval-reduced.h"
//#include "p24.h"


int main(void)
{
	STM_EVAL_LEDInit(LED1);
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);


  /* Turn on LED1, LED2, LED3 and LED4 */
	STM_EVAL_LEDOn(LED1);
	STM_EVAL_LEDOn(LED2);
	STM_EVAL_LEDOn(LED3);
	STM_EVAL_LEDOn(LED4);

	ANCA_INIT_All();
	//ANCA_Print_Num(3,2,0);
	//asm_print_digit(2,2);
	//P24_init();
	
	//asm("bl.W (0x08010000+1)");		//go up to DAC1_TIM7_DMA1_init();			
	//DMA1Stream5int_svc();			//for debug -- if you bkpt here and step into the interrupt service, you can then set bkpt there
	while(1);

	return 0;						//never
}

