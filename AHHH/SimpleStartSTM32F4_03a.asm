@;SimpleStartSTM32F4_03a.asm wmh 2015-15-16 : for DMA demo -- removes SvcHandler, PendSV_Handler, and SysTick_Handler vectors
@;SimpleStartSTM32F4_03.asm wmh 2013-11-01 : redirect SvcHandler, PendSV_Handler, and SysTick_Handler to real routines defined elsewhere
@;SimpleStartSTM32F4_02.asm wmh 2013-11-01 : add STM32F4xx PLL/clock initializations
@;SimpleStartSTM32F4_01.asm wmh 2013-02-03 : adaptation of LPC1768 startup for STM32F04
@; -todo: fix stuff with !! markers
@;SimpleStartLPC1768_02.s wmh 2011-11-10 startup code for NXP LPC1768
@; adapted from http://embeddedfreak.wordpress.com/2009/08/09/cortex-m3-blinky-in-assembly
@; with additions from http://tech.munts.com/MCU/Frameworks/ARM/lpc17xx/ 
 
/* Simple startup file for Cortex-M3 */
 .include "added/STM32F4_P24v04_definitions03.inc"

 .extern SysTick_Handler
 .extern SvcHandler
 .extern PendSV_Handler
 
 .syntax unified	@; to allow thumb-2 instruction set

 @; --- Vector table definition
 .section ".cs3.interrupt_vector"
 .long  __cs3_stack                 /* Top of Stack                 */
 .long  Reset_Handler               /* Reset Handler                */
 .long  NMI_Handler                 /* NMI Handler                  */
 .long  HardFault_Handler           /* Hard Fault Handler           */
 .long  MemManage_Handler           /* MPU Fault Handler            */
 .long  BusFault_Handler            /* Bus Fault Handler            */
 .long  UsageFault_Handler          /* Usage Fault Handler          */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  0                           /* Reserved                     */
 .long  SVC_Handler					/* SVCall Handler               */
 .long  DebugMon_Handler            /* Debug Monitor Handler        */
 .long  0                           /* Reserved                     */
 .long  PendSV_Handler              /* PendSV Handler               */
 .long  SysTick_Handler             /* SysTick Handler              */

 .long 	0							/*skipping interrupt vectors not used so far */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */
 .long 	0							/*                ""                */

 .long DMA1Stream5int_svc			@; interrupt vector #16: DMA1 Stream 5 service 
@; Other vendor hardware-specific interrupts go here (Not implemented)
 
@; --- hardware reset routine
	.text					@; start the reset code section

	.global Reset_Handler	@; export label name to all modules 
	.thumb_func 			@; identify target type to linker
Reset_Handler:				@; @; start-from-reset code; initialize hardware and system data, launch main()
	@; copy .data section (initialized data) from flash to RAM (currently we must do this in each source file)
	@; (!!todo: figure out how we can get the compiler/asembler/linker to place constants in .rodata, etc)
copy_data:	
	ldr r1, DATA_BEG
	ldr r2, TEXT_END
	ldr r3, DATA_END
	subs r3, r3, r1			@; length of initialized data
	beq zero_bss			@; skip if none
copy_data_loop: 
	ldrb r4,[r2], #1		@; read byte from flash
	strb r4, [r1], #1  		@; store byte to RAM
	subs r3, r3, #1  		@; decrement counter
	bgt copy_data_loop		@; repeat until done

	@; zero out .bss section (uninitialized data) (currently we must do this in each source file)
	@; (!!todo: figure out how to get the linker to give us the extents of the merged .bss sections)
zero_bss: 	
	ldr r1, BSS_BEG
	ldr r3, BSS_END
	subs r3, r3, r1			@; Length of uninitialized data
	beq initRCC				@; Skip if none
	mov r2, #0				@; value to initialize .bss with
zero_bss_loop: 	
	strb r2, [r1],#1		@; Store zero
	subs r3, r3, #1			@; Decrement counter
	bgt zero_bss_loop		@; Repeat until done

other_inits:
	bl P24_init

initRCC:	
	@; necessary hardware stuff -- replaces SystemCoreClockUpdate() function call in main()
	@;now called in main()

	@exit to main (wont return)
call_main:
	bl.W (0x08010000+1)
	mov	r0, #0				@; argc=0
	mov r1, #0				@; argv=NULL
	bl	main 				@; gone
	b .						@; trap if return

	@; pointer data for 'copy_data' and 'zero_bss' functions 
TEXT_END:	.word	__sidata	@; __text_end__
DATA_BEG:	.word	__sdata		@; __data_beg__
DATA_END:	.word	__edata		@; __data_end__
BSS_BEG:	.word	__sbss		@; __bss_beg__ 
BSS_END:	.word	__ebss		@; __bss_end__



/* This is how the lazy guy doing it: by aliasing all the
 * interrupts into single address
 */
	.thumb_func
BogusInt_Handler:
	.thumb_func
NMI_Handler:
	.thumb_func
HardFault_Handler:
	.thumb_func
MemManage_Handler:
	.thumb_func
BusFault_Handler:
	.thumb_func
UsageFault_Handler:
	.thumb_func
SVC_Handler: 
	.thumb_func
DebugMon_Handler:
	.thumb_func
PendSV_Handler:
	bx  r14	 /* put a breakpoint here when we're debugging so we can trap here but then return to interrupted code */
 
 	.thumb_func
SysTick_Handler: 
	push {lr}
	@;bl DMA1Stream5int_svc
	@;bl hw8stuff
	bl asm_vdisplay
	@;bl asm_get_switch  @; makes it dim
	pop {lr}
	bx lr
 