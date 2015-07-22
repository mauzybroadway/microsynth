//main_demoaudio03.c wmh 2015-05-17 : (only) does asm("bl.W (0x08010000+1)") to run DAC1_TIM7_DMA1_init(), then spins at while(1). 
//main_justaudio03.c wmh 2015-05-16 : working -- enables CS43L22 for audio passthrough
//main_justaudio02.c wmh 2015-05-15 : working -- moves DAC/DMA demo output to PA4 using TIM7 DMA1 stream5
//main_justaudio01.c wmh 2015-05-15 : attempt to blend in DMA with interrupts from 440F13.1202.07_forth_UART_C_DAC_SYSINTs_DMAint_working


void DMA1Stream5int_svc(void);	//can be run as a function as well as an interrupt

int note = 3;

int main(void)
{
	asm("bl.W (0x08010000+1)");		//go up to DAC1_TIM7_DMA1_init();			
	DMA1Stream5int_svc();			//for debug -- if you bkpt here and step into the interrupt service, you can then set bkpt there
	while(1);

	return 0;						//never
}

