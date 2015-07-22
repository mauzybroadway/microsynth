_README_07DAC.txt wmh 2015-05-17 : stage 07 development of STM32F4Discovery DMA-to-CS43L22 DAC demo

PURPOSE:
	The goal of this development was to move the difficult hardware initializations into a separate section 
	in ROM so that a) they wouldn't impact the Keil debugger's 32K limit on executables, and b) so that 
	they wouldn't be too much of a gift to students. This was accomplished using by attaching the 
			" __attribute__ ((section (".separate"))); " 
	and modifying the linker's .LD script, which moved various function declarations to a separate section
	which we placed at 0x08001000, e.g. 64K after the STM32F407VG's usual applications start in ROM.  

USE:
	1. Use STM32 ST-LINK programming software (http://www.st.com/web/en/catalog/tools/PF258168) to burn 
	the included /07DAC_distrib/separate_hex/CS43L22_TIM7_DAC1_DMA1.hex into the Discovery board FLASH.
	2. Compile the Blinky project in /07DAC_distrib/ and use Keil to load it on the board. (You may wish
	to check in Keil that >Project > Options for Target > Utilities > Settings > Flash Download _does_ _not_
	have "Erase Full Chip" checked, or you will lose your step 1 above work. 
	3. Run the demo in Keil -- you should hear a a sort of buzzy tone from the audio output jack on the
	board.  If you pause execution, the tone will change as the DMA buffer updating done in the interrupt
	(see DMA1Stream5int_svc.asm) is paused, letting the buffers run on unattended with their current data.  
	
PROJECT:
	You should start attempting to incorporate what you have been given here into your 'midi piano' design,
	for example, can you make the tone go on/off when key is pressed/released, or change volume when the rotary
	encoder is turned. 
	Meanwhile I will work on:
	1. Adjustng DMA buffer size (currently too small) and wavetable output frequency (currently not 44.1kHz)
	2. Providing an extended wavetable with a real piano waveform. 
	
	

FILES:
	SimpleStartSTM32F4_03a.asm
	DMA1Stream5int_svc.asm
	main_demoaudio03.c
	<and the rest of the usual .bst. .ld. .ini. .u* etc>
	
