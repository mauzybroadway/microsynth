@; DMA1Stream5int_svc.asm wmh 2015-05-16 : demo DMA interrupt service

@; --- characterize target syntax, processor
	.syntax unified				@; ARM Unified Assembler Language (UAL). 
	.thumb						@; Use thumb instructions only


	.bss						@;start an uninitialized RAM data section
	.align 2					@;pad memory if necessary to align on a word boundary for word storage 
					
	.lcomm	PINGBUF,256			@;allocate 256 bytes/128 halfwords of static storage for uninitialized global storage			
	.lcomm	PONGBUF,256			@;allocate 256 bytes/128 halfwords of static storage for uninitialized global storage

	.global PINGPONG_count		@;used by DMAint_svc to determine which buffer will output next
	.comm PINGPONG_count,4
	.global PING_count			@;for debug
	.comm PING_count,4
	.global PONG_count			@;for debug
	.comm PONG_count,4
	
	.lcomm OFFSET,4



@;*** macros ***
@; desiderata : 
@;	- no side effects other than scratch registers
@;	- no local pool 'out of range' (i.e. use immediate values)

.macro MOV_imm32 reg val		@;example of use: MOV_imm32 r0,0x12345678 !!note: no '#' on immediate value
	movw \reg,#(0xFFFF & (\val))
	movt \reg,#((0xFFFF0000 & (\val))>>16)
.endm

.macro SET_bit addr bit @;logical OR position 'bit' at 'addr' with 1 
	MOV_imm32 r2,(\addr)
	ldr r1,[r2]
	ORR r1,#(1<<\bit)
	str r1,[r2]	
.endm

.macro TST_bit addr bit	@;read 'bit' at addr, return bit value in bit0 of r0 and 'Z' flag set/clear if bit=0/1
	MOV_imm32 r2,(\addr)
	ldr r0,[r2]
	ands r0,#(1<<\bit)
	lsr r0,#\bit
.endm


 
@; --- begin code memory
	.text	

	.include "stm32f4xx_DMA_registers01.inc"	
	
	.global DMA1Stream5int_svc	@;void DMA1Stream5int_svc(void);
	.thumb_func
DMA1Stream5int_svc: @;copy DMADEMO_PINGBUF or DMADEMO_PONGBUF (above) into DMA1_PINGBUF and DMA1_PONGBUF in RAM (at top)

	.equ locTCIF5,	11	@;location of DMA stream 5  interrupt flag in DMA1_HISR _and_ location in DMA1_HIFCR to clear this flag
	.equ locHTIF5,	10	@; ""          				half-buffer interrupt flag  	""
	.equ locTEIF5,	 9	@; ""          				transfer error interrupt flag 	 ""
	.equ locDMEIF5,	 8	@; ""                       direct mode error interrupt  flag ""
	.equ locFEIF6,	 6	@; ""                       fifo error interrupt flag          ""
	.equ locCT,		19	@;location of 'current target' (CT) status bit in DMA1 stream 5 control register DMA1_S6CR
	
	push {r4-r6}
	
	@;earlier (non-interrupt) version polls TCIF5 to detect switch between buffers, then copies new data into currently not-selected buffer
	TST_bit	absDMA1_HISR,locTCIF5		@;did a buffer swap occur
	beq 9f								@;	no -- nothing to do, so go back
	
	ldr r1,=note
	ldr r6,[r1]
	cmp r6,#0
	lsl r6,#1
	bne cont
	mov r1,#0
	ldr r0,=OFFSET
	str r1,[r0]
	
cont:
	adr r4,triangle						@;load triangle table
	
	ldr r2,=PINGPONG_count				@;update count of number of switches between DMA buffers which have occurred
	ldr r1,[r2]							@; ..
	add r1,#1							@; ..
	str r1,[r2]							@; ..
	
	@;here if DMA has switched to the other buffer
	SET_bit absDMA1_HIFCR,locTCIF5		@;reset the interrupt flag
	TST_bit absDMA1_S5CR,locCT			@;is buffer 0 now being processed?
	@;beq 1f								@;	yes -- so go update buffer 1
	bne ping
	beq pong
	
ping:
	@;ldr r2,=PINGPONG_count				@;
	@;ldr r1,[r2]							@; ..
	@;ands r3,r1,#0xF
	ldr r5,=PINGBUF						@;prepare the PING buffer for transaction
	push {r5}
	@;mov r6,r5
	
	ldr r3,=OFFSET						@;pick up where left off
	ldrh r2,[r3]						@; ..
	cmp r2,#1024
	it ge
	subge r2,#1024
	@;movge r2,#0
	add r4,r2							@; ..	
	
	mov r1,#0

ping_loop:
	cmp r1,#16							@; i <= 16 ? cont : kill
	beq ping_end
	ldrh r0,[r4]						@;start filling PING with triangle data
	add r4,r6
	strh r0,[r5],#2						@; ..
	
	add r2,r6							@;update offset
	cmp r2,#1024
	it ge
	subge r2,#1024
	@;movge r2,#0
	add r1,#1							@;i++
	b ping_loop
	
ping_end:
	str r2,[r3]							@;save OFFSET
	@;ldr r5,=PINGBUF						@;reload the PING address
	MOV_imm32 r2,absDMA1_S5M0AR			@;first buffer where DMA1 will get its data
	pop {r5}
	str r5,[r2]
	b 9f
	
	@; TODO - combine these (use r6 or something to hold PING/PONG)
	
pong:
	@;ldr r2,=PINGPONG_count				@;
	@;ldr r1,[r2]							@; ..
	@;ands r3,r1,#0xF
	ldr r5,=PONGBUF						@;prepare the PING buffer for transaction
	push {r5}
	@;mov r6,r5	@; copy
	
	ldr r3,=OFFSET						@;pick up where left off
	ldrh r2,[r3]						@; ..
	cmp r2,#1024
	it ge
	subge r2,#1024
	@;movge r2,#0
	add r4,r2							@; ..	
	
	mov r1,#0

pong_loop:
	cmp r1,#16							@; i <= 16 ? cont : kill
	beq pong_end
	ldrh r0,[r4]						@;start filling PONG with triangle data
	add r4,r6
	strh r0,[r5],#2						@; ..
	
	add r2,r6							@;update offset
	cmp r2,#1024
	it ge
	subge r2,#1024
	@;movge r2,#0
	add r1,#1							@;i++
	b pong_loop
	
pong_end:
	str r2,[r3]							@;save OFFSET
	@;ldr r5,=PONGBUF						@;reload the PING address
	MOV_imm32 r2,absDMA1_S5M1AR			@;first buffer where DMA1 will get its data
	pop {r5}
	str r5,[r2]
	b 9f
	

8:
	@;adr r0,ZEROS
	@;ldr r1,[r0]
	@;ldr r0,=PINGBUF
	@;str r1,[r0]
	@;ldr r0,=PONGBUF
	@;str r1,[r0]
	
	mov r1,#0
	ldr r0,=OFFSET
	str r1,[r0]

9:	@;here when terminal count interrupt flag TCIF was not set ==> nothing to do
	pop {r4-r6}
	bx lr
	
	
	.align 2 @;data tables for DMA/DAC example
DMADEMO_PINGBUF:	@;original buffer with up-ramp of triangle wave
DMADEMO_PINGBUF0:	@;alternate name (so we don't break earlier code
	.hword 0x000,0x100,0x200,0x300,0x400,0x500,0x600,0x700,0x800,0x900,0xA00,0xB00,0XC00,0xD00,0XE00,0xF00	@;up ramp, 16 entries
DMADEMO_PONGBUF:	@;original buffer with down-ramp of triangle wave
DMADEMO_PONGBUF0:	@;alternate name (so we don't break earlier code
	.hword 0xFFF,0xEFF,0xDFF,0xCFF,0xBFF,0xAFF,0x9FF,0x8FF,0x7FF,0x6FF,0x5FF,0x4FF,0x3FF,0x2FF,0x1FF,0x0FF	@;down ramp, 16 entries

DMADEMO_PINGBUF1:	@;new buffer with first half (positive step) of square wave
	.hword 0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF	@;+step, 16 entries
DMADEMO_PONGBUF1:	@;new buffer with second half (negative step) of square wave
	.hword 0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000	@;-step, 16 entries
	
ZEROS:
	.hword 0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000

TRI_UP:
	.hword 0xf00,0xf10,0xf20,0xf30,0xf40,0xf50,0xf60,0xf70,0xf80,0xf90,0xfa0,0xfb0,0xfc0,0xfd0,0xfe0,0xff0
TRI_DOWN:
	.hword 0xfff,0xfef,0xfdf,0xfcf,0xfbf,0xfaf,0xf9f,0xf8f,0xf7f,0xf6f,0xf5f,0xf4f,0xf3f,0xf2f,0xf1f,0xf0f

	
	
SQ_DOWN:
	.hword 0xFFF,0xEFF,0xDFF,0xCFF,0xBFF,0xAFF,0x9FF,0x8FF,0x7FF,0x6FF,0x5FF,0x4FF,0x3FF,0x2FF,0x1FF,0x0FF
	@;.hword 0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0
	@;.hword 0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555
	@;.hword 0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000,0x000
	@;.hword 0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0x000,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF
SQ_UP:
	.hword 0x000,0x100,0x200,0x300,0x400,0x500,0x600,0x700,0x800,0x900,0xA00,0xB00,0XC00,0xD00,0XE00,0xF00
	@;.hword 0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0x000,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF,0xFFF
	@;.hword 0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555,0x555
	@;.hword 0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0,0xFF0
	
triangle:
	.hword 0x000,0x010,0x020,0x030,0x040,0x050,0x060,0x070,0x080,0x090,0x0a0,0x0b0,0x0c0,0x0d0,0x0e0,0x0f0
	.hword 0x100,0x110,0x120,0x130,0x140,0x150,0x160,0x170,0x180,0x190,0x1a0,0x1b0,0x1c0,0x1d0,0x1e0,0x1f0
	.hword 0x200,0x210,0x220,0x230,0x240,0x250,0x260,0x270,0x280,0x290,0x2a0,0x2b0,0x2c0,0x2d0,0x2e0,0x2f0
	.hword 0x300,0x310,0x320,0x330,0x340,0x350,0x360,0x370,0x380,0x390,0x3a0,0x3b0,0x3c0,0x3d0,0x3e0,0x3f0
	.hword 0x400,0x410,0x420,0x430,0x440,0x450,0x460,0x470,0x480,0x490,0x4a0,0x4b0,0x4c0,0x4d0,0x4e0,0x4f0
	.hword 0x500,0x510,0x520,0x530,0x540,0x550,0x560,0x570,0x580,0x590,0x5a0,0x5b0,0x5c0,0x5d0,0x5e0,0x5f0
	.hword 0x600,0x610,0x620,0x630,0x640,0x650,0x660,0x670,0x680,0x690,0x6a0,0x6b0,0x6c0,0x6d0,0x6e0,0x6f0
	.hword 0x700,0x710,0x720,0x730,0x740,0x750,0x760,0x770,0x780,0x790,0x7a0,0x7b0,0x7c0,0x7d0,0x7e0,0x7f0
	.hword 0x800,0x810,0x820,0x830,0x840,0x850,0x860,0x870,0x880,0x890,0x8a0,0x8b0,0x8c0,0x8d0,0x8e0,0x8f0
	.hword 0x900,0x910,0x920,0x930,0x940,0x950,0x960,0x970,0x980,0x990,0x9a0,0x9b0,0x9c0,0x9d0,0x9e0,0x9f0
	.hword 0xa00,0xa10,0xa20,0xa30,0xa40,0xa50,0xa60,0xa70,0xa80,0xa90,0xaa0,0xab0,0xac0,0xad0,0xae0,0xaf0
	.hword 0xb00,0xb10,0xb20,0xb30,0xb40,0xb50,0xb60,0xb70,0xb80,0xb90,0xba0,0xbb0,0xbc0,0xbd0,0xbe0,0xbf0
	.hword 0xc00,0xc10,0xc20,0xc30,0xc40,0xc50,0xc60,0xc70,0xc80,0xc90,0xca0,0xcb0,0xcc0,0xcd0,0xce0,0xcf0
	.hword 0xd00,0xd10,0xd20,0xd30,0xd40,0xd50,0xd60,0xd70,0xd80,0xd90,0xda0,0xdb0,0xdc0,0xdd0,0xde0,0xdf0
	.hword 0xe00,0xe10,0xe20,0xe30,0xe40,0xe50,0xe60,0xe70,0xe80,0xe90,0xea0,0xeb0,0xec0,0xed0,0xee0,0xef0
	.hword 0xf00,0xf10,0xf20,0xf30,0xf40,0xf50,0xf60,0xf70,0xf80,0xf90,0xfa0,0xfb0,0xfc0,0xfd0,0xfe0,0xff0
	
	.hword 0xfff,0xfef,0xfdf,0xfcf,0xfbf,0xfaf,0xf9f,0xf8f,0xf7f,0xf6f,0xf5f,0xf4f,0xf3f,0xf2f,0xf1f,0xf0f
	.hword 0xeff,0xeef,0xedf,0xecf,0xebf,0xeaf,0xe9f,0xe8f,0xe7f,0xe6f,0xe5f,0xe4f,0xe3f,0xe2f,0xe1f,0xe0f
	.hword 0xdff,0xdef,0xddf,0xdcf,0xdbf,0xdaf,0xd9f,0xd8f,0xd7f,0xd6f,0xd5f,0xd4f,0xd3f,0xd2f,0xd1f,0xd0f
	.hword 0xcff,0xcef,0xcdf,0xccf,0xcbf,0xcaf,0xc9f,0xc8f,0xc7f,0xc6f,0xc5f,0xc4f,0xc3f,0xc2f,0xc1f,0xc0f
	.hword 0xbff,0xbef,0xbdf,0xbcf,0xbbf,0xbaf,0xb9f,0xb8f,0xb7f,0xb6f,0xb5f,0xb4f,0xb3f,0xb2f,0xb1f,0xb0f
	.hword 0xaff,0xaef,0xadf,0xacf,0xabf,0xaaf,0xa9f,0xa8f,0xa7f,0xa6f,0xa5f,0xa4f,0xa3f,0xa2f,0xa1f,0xa0f
	.hword 0x9ff,0x9ef,0x9df,0x9cf,0x9bf,0x9af,0x99f,0x98f,0x97f,0x96f,0x95f,0x94f,0x93f,0x92f,0x91f,0x90f
	.hword 0x8ff,0x8ef,0x8df,0x8cf,0x8bf,0x8af,0x89f,0x88f,0x87f,0x86f,0x85f,0x84f,0x83f,0x82f,0x81f,0x80f
	.hword 0x7ff,0x7ef,0x7df,0x7cf,0x7bf,0x7af,0x79f,0x78f,0x77f,0x76f,0x75f,0x74f,0x73f,0x72f,0x71f,0x70f
	.hword 0x6ff,0x6ef,0x6df,0x6cf,0x6bf,0x6af,0x69f,0x68f,0x67f,0x66f,0x65f,0x64f,0x63f,0x62f,0x61f,0x60f
	.hword 0x5ff,0x5ef,0x5df,0x5cf,0x5bf,0x5af,0x59f,0x58f,0x57f,0x56f,0x55f,0x54f,0x53f,0x52f,0x51f,0x50f
	.hword 0x4ff,0x4ef,0x4df,0x4cf,0x4bf,0x4af,0x49f,0x48f,0x47f,0x46f,0x45f,0x44f,0x43f,0x42f,0x41f,0x40f
	.hword 0x3ff,0x3ef,0x3df,0x3cf,0x3bf,0x3af,0x39f,0x38f,0x37f,0x36f,0x35f,0x34f,0x33f,0x32f,0x31f,0x30f
	.hword 0x2ff,0x2ef,0x2df,0x2cf,0x2bf,0x2af,0x29f,0x28f,0x27f,0x26f,0x25f,0x24f,0x23f,0x22f,0x21f,0x20f
	.hword 0x1ff,0x1ef,0x1df,0x1cf,0x1bf,0x1af,0x19f,0x18f,0x17f,0x16f,0x15f,0x14f,0x13f,0x12f,0x11f,0x10f
	.hword 0x0ff,0x0ef,0x0df,0x0cf,0x0bf,0x0af,0x09f,0x08f,0x07f,0x06f,0x05f,0x04f,0x03f,0x02f,0x01f,0x00f

