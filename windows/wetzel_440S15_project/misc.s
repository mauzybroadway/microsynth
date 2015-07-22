	.syntax unified
	.cpu cortex-m4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"misc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.NVIC_PriorityGroupConfig,"ax",%progbits
	.align	2
	.global	NVIC_PriorityGroupConfig
	.thumb
	.thumb_func
	.type	NVIC_PriorityGroupConfig, %function
NVIC_PriorityGroupConfig:
.LFB112:
	.file 1 "./added/misc.c"
	.loc 1 120 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 125 0
	mov	r3, #60672
	orr	r0, r0, #100139008
.LVL1:
	movt	r3, 57344
	orr	r0, r0, #131072
	str	r0, [r3, #12]
	bx	lr
	.cfi_endproc
.LFE112:
	.size	NVIC_PriorityGroupConfig, .-NVIC_PriorityGroupConfig
	.section	.text.NVIC_Init,"ax",%progbits
	.align	2
	.global	NVIC_Init
	.thumb
	.thumb_func
	.type	NVIC_Init, %function
NVIC_Init:
.LFB113:
	.loc 1 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 146 0
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	.loc 1 138 0
	push	{r4, r5}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 146 0
	cbnz	r3, .L6
	.loc 1 167 0
	ldrb	r2, [r0, #0]	@ zero_extendqisi2
	mov	r3, #57600
	lsrs	r1, r2, #5
	movt	r3, 57344
	.loc 1 168 0
	and	r2, r2, #31
	.loc 1 167 0
	adds	r1, r1, #32
	.loc 1 168 0
	movs	r0, #1
.LVL3:
	lsl	r2, r0, r2
	.loc 1 167 0
	str	r2, [r3, r1, lsl #2]
.LVL4:
.L2:
	.loc 1 170 0
	pop	{r4, r5}
	bx	lr
.LVL5:
.L6:
	.loc 1 149 0
	mov	r3, #60672
	movt	r3, 57344
	.loc 1 153 0
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	.loc 1 149 0
	ldr	r2, [r3, #12]
	.loc 1 154 0
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	.loc 1 158 0
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	.loc 1 149 0
	mvns	r2, r2
	ubfx	r2, r2, #8, #3
.LVL6:
	.loc 1 150 0
	rsb	r1, r2, #4
	.loc 1 153 0
	uxtb	r1, r1
	lsl	r1, r5, r1
	.loc 1 151 0
	movs	r5, #15
	asr	r2, r5, r2
.LVL7:
	.loc 1 153 0
	uxtb	r1, r1
.LVL8:
	.loc 1 154 0
	ands	r2, r2, r4
	orrs	r2, r2, r1
.LVL9:
	.loc 1 158 0
	add	r3, r3, #-536870912
	add	r3, r3, #57600
	.loc 1 156 0
	lsls	r2, r2, #4
.LVL10:
	uxtb	r2, r2
.LVL11:
	.loc 1 158 0
	strb	r2, [r3, #768]
	.loc 1 161 0
	ldrb	r2, [r0, #0]	@ zero_extendqisi2
.LVL12:
	.loc 1 158 0
	mov	r3, #57600
	.loc 1 161 0
	lsrs	r1, r2, #5
	.loc 1 158 0
	movt	r3, 57344
	.loc 1 162 0
	and	r2, r2, #31
	movs	r0, #1
.LVL13:
	lsl	r2, r0, r2
	.loc 1 161 0
	str	r2, [r3, r1, lsl #2]
	b	.L2
	.cfi_endproc
.LFE113:
	.size	NVIC_Init, .-NVIC_Init
	.section	.text.NVIC_SetVectorTable,"ax",%progbits
	.align	2
	.global	NVIC_SetVectorTable
	.thumb
	.thumb_func
	.type	NVIC_SetVectorTable, %function
NVIC_SetVectorTable:
.LFB114:
	.loc 1 182 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL14:
	.loc 1 187 0
	bic	r1, r1, #-536870912
.LVL15:
	mov	r3, #60672
	bic	r1, r1, #127
	movt	r3, 57344
	orrs	r0, r0, r1
.LVL16:
	str	r0, [r3, #8]
	bx	lr
	.cfi_endproc
.LFE114:
	.size	NVIC_SetVectorTable, .-NVIC_SetVectorTable
	.section	.text.NVIC_SystemLPConfig,"ax",%progbits
	.align	2
	.global	NVIC_SystemLPConfig
	.thumb
	.thumb_func
	.type	NVIC_SystemLPConfig, %function
NVIC_SystemLPConfig:
.LFB115:
	.loc 1 201 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL17:
	.loc 1 208 0
	mov	r3, #60672
	movt	r3, 57344
	ldr	r2, [r3, #16]
	.loc 1 206 0
	cbnz	r1, .L11
	.loc 1 212 0
	bic	r0, r2, r0
.LVL18:
	str	r0, [r3, #16]
	bx	lr
.LVL19:
.L11:
	.loc 1 208 0
	orrs	r0, r0, r2
.LVL20:
	str	r0, [r3, #16]
	bx	lr
	.cfi_endproc
.LFE115:
	.size	NVIC_SystemLPConfig, .-NVIC_SystemLPConfig
	.section	.text.SysTick_CLKSourceConfig,"ax",%progbits
	.align	2
	.global	SysTick_CLKSourceConfig
	.thumb
	.thumb_func
	.type	SysTick_CLKSourceConfig, %function
SysTick_CLKSourceConfig:
.LFB116:
	.loc 1 225 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL21:
	.loc 1 230 0
	movw	r3, #57360
	movt	r3, 57344
	.loc 1 228 0
	cmp	r0, #4
	.loc 1 230 0
	ldr	r2, [r3, #0]
	ite	eq
	orreq	r2, r2, #4
	.loc 1 234 0
	bicne	r2, r2, #4
	str	r2, [r3, #0]
	bx	lr
	.cfi_endproc
.LFE116:
	.size	SysTick_CLKSourceConfig, .-SysTick_CLKSourceConfig
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/core_cm4.h"
	.file 4 "./added/stm32f4xx.h"
	.file 5 "./added/misc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x594
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x1
	.4byte	.LASF69
	.4byte	.LASF70
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2a
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4f
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x50
	.4byte	0x6d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.2byte	0xe04
	.byte	0x3
	.2byte	0x150
	.4byte	0x168
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x152
	.4byte	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x153
	.4byte	0x184
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x154
	.4byte	0x194
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x155
	.4byte	0x184
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x156
	.4byte	0x199
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x157
	.4byte	0x184
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x158
	.4byte	0x19e
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x159
	.4byte	0x184
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x15a
	.4byte	0x1a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x15b
	.4byte	0x1a8
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x7
	.ascii	"IP\000"
	.byte	0x3
	.2byte	0x15c
	.4byte	0x1c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x15d
	.4byte	0x1cd
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x15e
	.4byte	0x1de
	.byte	0x3
	.byte	0x23
	.uleb128 0xe00
	.byte	0
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x178
	.uleb128 0x9
	.4byte	0x178
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0xa
	.4byte	0x168
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x194
	.uleb128 0x9
	.4byte	0x178
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.4byte	0x168
	.uleb128 0xa
	.4byte	0x168
	.uleb128 0xa
	.4byte	0x168
	.uleb128 0xa
	.4byte	0x168
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x1b8
	.uleb128 0x9
	.4byte	0x178
	.byte	0x37
	.byte	0
	.uleb128 0x8
	.4byte	0x30
	.4byte	0x1c8
	.uleb128 0x9
	.4byte	0x178
	.byte	0xef
	.byte	0
	.uleb128 0xa
	.4byte	0x1b8
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x1de
	.uleb128 0xb
	.4byte	0x178
	.2byte	0x283
	.byte	0
	.uleb128 0xa
	.4byte	0x62
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x15f
	.4byte	0x90
	.uleb128 0xd
	.byte	0x8c
	.byte	0x3
	.2byte	0x170
	.4byte	0x335
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x172
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x173
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x174
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x175
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"SCR\000"
	.byte	0x3
	.2byte	0x176
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x177
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.ascii	"SHP\000"
	.byte	0x3
	.2byte	0x178
	.4byte	0x34a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x179
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x17a
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x17b
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x17c
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x17d
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x17e
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x17f
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.ascii	"PFR\000"
	.byte	0x3
	.2byte	0x180
	.4byte	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.ascii	"DFR\000"
	.byte	0x3
	.2byte	0x181
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.ascii	"ADR\000"
	.byte	0x3
	.2byte	0x182
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x183
	.4byte	0x379
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x184
	.4byte	0x393
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.2byte	0x185
	.4byte	0x383
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x186
	.4byte	0x1de
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xe
	.4byte	0x1de
	.uleb128 0x8
	.4byte	0x30
	.4byte	0x34a
	.uleb128 0x9
	.4byte	0x178
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	0x33a
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x35f
	.uleb128 0x9
	.4byte	0x178
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x364
	.uleb128 0xa
	.4byte	0x34f
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x379
	.uleb128 0x9
	.4byte	0x178
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.4byte	0x37e
	.uleb128 0xa
	.4byte	0x369
	.uleb128 0x8
	.4byte	0x62
	.4byte	0x393
	.uleb128 0x9
	.4byte	0x178
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	0x398
	.uleb128 0xa
	.4byte	0x383
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x187
	.4byte	0x1ef
	.uleb128 0xd
	.byte	0x10
	.byte	0x3
	.2byte	0x26f
	.4byte	0x3ef
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x271
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x272
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"VAL\000"
	.byte	0x3
	.2byte	0x273
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x274
	.4byte	0x335
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x275
	.4byte	0x3a9
	.uleb128 0xa
	.4byte	0x50
	.uleb128 0xf
	.byte	0x1
	.byte	0x4
	.2byte	0x200
	.4byte	0x416
	.uleb128 0x10
	.4byte	.LASF45
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF46
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x200
	.4byte	0x400
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.4byte	0x463
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x5
	.byte	0x38
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x5
	.byte	0x3d
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0x5
	.byte	0x42
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x5
	.byte	0x47
	.4byte	0x416
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0x4a
	.4byte	0x422
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x497
	.uleb128 0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0x77
	.4byte	0x62
	.4byte	.LLST0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x4ee
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x89
	.4byte	0x4ee
	.4byte	.LLST2
	.uleb128 0x16
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8b
	.4byte	0x30
	.4byte	.LLST3
	.uleb128 0x16
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8b
	.4byte	0x30
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8b
	.4byte	0x30
	.4byte	.LLST5
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.4byte	0x463
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x52c
	.uleb128 0x14
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb5
	.4byte	0x62
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb5
	.4byte	0x62
	.4byte	.LLST7
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x562
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0xc8
	.4byte	0x30
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc8
	.4byte	0x416
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x589
	.uleb128 0x18
	.4byte	.LASF67
	.byte	0x1
	.byte	0xe0
	.4byte	0x62
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x6a7
	.4byte	0x3fb
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB113
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE113
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LFE113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x34
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x3f
	.byte	0x72
	.sleb128 0
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15
	.4byte	.LFE114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE115
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"IABR\000"
.LASF52:
	.ascii	"NVIC_InitTypeDef\000"
.LASF51:
	.ascii	"NVIC_IRQChannelCmd\000"
.LASF67:
	.ascii	"SysTick_CLKSource\000"
.LASF56:
	.ascii	"NVIC_InitStruct\000"
.LASF66:
	.ascii	"SysTick_CLKSourceConfig\000"
.LASF2:
	.ascii	"short int\000"
.LASF60:
	.ascii	"NVIC_SetVectorTable\000"
.LASF24:
	.ascii	"sizetype\000"
.LASF54:
	.ascii	"NVIC_Init\000"
.LASF58:
	.ascii	"tmppre\000"
.LASF26:
	.ascii	"CPUID\000"
.LASF13:
	.ascii	"RESERVED0\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF55:
	.ascii	"NVIC_PriorityGroup\000"
.LASF65:
	.ascii	"NewState\000"
.LASF23:
	.ascii	"STIR\000"
.LASF45:
	.ascii	"DISABLE\000"
.LASF27:
	.ascii	"ICSR\000"
.LASF15:
	.ascii	"RSERVED1\000"
.LASF9:
	.ascii	"long long int\000"
.LASF70:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF43:
	.ascii	"CALIB\000"
.LASF28:
	.ascii	"VTOR\000"
.LASF35:
	.ascii	"BFAR\000"
.LASF6:
	.ascii	"long int\000"
.LASF31:
	.ascii	"CFSR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF29:
	.ascii	"AIRCR\000"
.LASF40:
	.ascii	"SCB_Type\000"
.LASF41:
	.ascii	"CTRL\000"
.LASF25:
	.ascii	"NVIC_Type\000"
.LASF18:
	.ascii	"ICPR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF68:
	.ascii	"GNU C 4.7.2\000"
.LASF34:
	.ascii	"MMFAR\000"
.LASF59:
	.ascii	"tmpsub\000"
.LASF30:
	.ascii	"SHCSR\000"
.LASF63:
	.ascii	"NVIC_SystemLPConfig\000"
.LASF62:
	.ascii	"Offset\000"
.LASF44:
	.ascii	"SysTick_Type\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF57:
	.ascii	"tmppriority\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF38:
	.ascii	"ISAR\000"
.LASF16:
	.ascii	"ISPR\000"
.LASF33:
	.ascii	"DFSR\000"
.LASF48:
	.ascii	"NVIC_IRQChannel\000"
.LASF50:
	.ascii	"NVIC_IRQChannelSubPriority\000"
.LASF32:
	.ascii	"HFSR\000"
.LASF14:
	.ascii	"ICER\000"
.LASF37:
	.ascii	"MMFR\000"
.LASF12:
	.ascii	"ISER\000"
.LASF17:
	.ascii	"RESERVED2\000"
.LASF19:
	.ascii	"RESERVED3\000"
.LASF21:
	.ascii	"RESERVED4\000"
.LASF22:
	.ascii	"RESERVED5\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"NVIC_IRQChannelPreemptionPriority\000"
.LASF47:
	.ascii	"FunctionalState\000"
.LASF61:
	.ascii	"NVIC_VectTab\000"
.LASF42:
	.ascii	"LOAD\000"
.LASF69:
	.ascii	"./added/misc.c\000"
.LASF36:
	.ascii	"AFSR\000"
.LASF64:
	.ascii	"LowPowerMode\000"
.LASF71:
	.ascii	"ITM_RxBuffer\000"
.LASF39:
	.ascii	"CPACR\000"
.LASF46:
	.ascii	"ENABLE\000"
.LASF53:
	.ascii	"NVIC_PriorityGroupConfig\000"
	.ident	"GCC: (GNU) 4.7.2"
