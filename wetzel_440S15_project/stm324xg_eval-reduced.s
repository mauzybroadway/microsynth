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
	.file	"stm324xg_eval-reduced.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.STM_EVAL_LEDInit,"ax",%progbits
	.align	2
	.global	STM_EVAL_LEDInit
	.thumb
	.thumb_func
	.type	STM_EVAL_LEDInit, %function
STM_EVAL_LEDInit:
.LFB112:
	.file 1 "./added/stm324xg_eval-reduced.c"
	.loc 1 190 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 194 0
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	.loc 1 190 0
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
	.loc 1 190 0
	mov	r4, r0
	.loc 1 194 0
	movs	r1, #1
	ldr	r0, [r3, r0, lsl #2]
.LVL1:
	bl	RCC_AHB1PeriphClockCmd
.LVL2:
	.loc 1 198 0
	movw	r2, #:lower16:.LANCHOR1
	movt	r2, #:upper16:.LANCHOR1
	.loc 1 203 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	.loc 1 198 0
	ldrh	r2, [r2, r4, lsl #1]
	.loc 1 203 0
	ldr	r0, [r3, r4, lsl #2]
	.loc 1 198 0
	str	r2, [sp, #0]
	.loc 1 199 0
	movs	r3, #1
	strb	r3, [sp, #4]
	.loc 1 200 0
	movs	r2, #0
	.loc 1 201 0
	strb	r3, [sp, #7]
	.loc 1 203 0
	mov	r1, sp
	.loc 1 202 0
	movs	r3, #2
	.loc 1 200 0
	strb	r2, [sp, #6]
	.loc 1 202 0
	strb	r3, [sp, #5]
	.loc 1 203 0
	bl	GPIO_Init
.LVL3:
	.loc 1 204 0
	add	sp, sp, #8
	pop	{r4, pc}
	.cfi_endproc
.LFE112:
	.size	STM_EVAL_LEDInit, .-STM_EVAL_LEDInit
	.section	.text.STM_EVAL_LEDOn,"ax",%progbits
	.align	2
	.global	STM_EVAL_LEDOn
	.thumb
	.thumb_func
	.type	STM_EVAL_LEDOn, %function
STM_EVAL_LEDOn:
.LFB113:
	.loc 1 218 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 219 0
	movw	r2, #:lower16:.LANCHOR2
	movw	r3, #:lower16:.LANCHOR1
	movt	r2, #:upper16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR1
	ldr	r2, [r2, r0, lsl #2]
	ldrh	r3, [r3, r0, lsl #1]
	strh	r3, [r2, #24]	@ movhi
	bx	lr
	.cfi_endproc
.LFE113:
	.size	STM_EVAL_LEDOn, .-STM_EVAL_LEDOn
	.section	.text.STM_EVAL_LEDOff,"ax",%progbits
	.align	2
	.global	STM_EVAL_LEDOff
	.thumb
	.thumb_func
	.type	STM_EVAL_LEDOff, %function
STM_EVAL_LEDOff:
.LFB114:
	.loc 1 233 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5:
	.loc 1 234 0
	movw	r2, #:lower16:.LANCHOR2
	movw	r3, #:lower16:.LANCHOR1
	movt	r2, #:upper16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR1
	ldr	r2, [r2, r0, lsl #2]
	ldrh	r3, [r3, r0, lsl #1]
	strh	r3, [r2, #26]	@ movhi
	bx	lr
	.cfi_endproc
.LFE114:
	.size	STM_EVAL_LEDOff, .-STM_EVAL_LEDOff
	.section	.text.STM_EVAL_LEDToggle,"ax",%progbits
	.align	2
	.global	STM_EVAL_LEDToggle
	.thumb
	.thumb_func
	.type	STM_EVAL_LEDToggle, %function
STM_EVAL_LEDToggle:
.LFB115:
	.loc 1 248 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 1 249 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	movw	r2, #:lower16:.LANCHOR1
	ldr	r3, [r3, r0, lsl #2]
	movt	r2, #:upper16:.LANCHOR1
	ldr	r1, [r3, #20]
	ldrh	r2, [r2, r0, lsl #1]
	eors	r2, r2, r1
	str	r2, [r3, #20]
	bx	lr
	.cfi_endproc
.LFE115:
	.size	STM_EVAL_LEDToggle, .-STM_EVAL_LEDToggle
	.comm	NVIC_InitStructure,4,4
	.global	GPIO_CLK
	.global	GPIO_PIN
	.global	GPIO_PORT
	.section	.data.GPIO_PORT,"aw",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	GPIO_PORT, %object
	.size	GPIO_PORT, 16
GPIO_PORT:
	.word	1073875968
	.word	1073875968
	.word	1073875968
	.word	1073875968
	.section	.rodata.GPIO_CLK,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	GPIO_CLK, %object
	.size	GPIO_CLK, 16
GPIO_CLK:
	.word	8
	.word	8
	.word	8
	.word	8
	.section	.rodata.GPIO_PIN,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	GPIO_PIN, %object
	.size	GPIO_PIN, 8
GPIO_PIN:
	.short	4096
	.short	8192
	.short	16384
	.short	-32768
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/stm32f4xx.h"
	.file 4 "./added/stm32f4xx_gpio.h"
	.file 5 "./added/misc.h"
	.file 6 "./added/stm324xg_eval-reduced.h"
	.file 7 "./added/core_cm4.h"
	.file 8 "./added/stm32f4xx_rcc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4b0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x1
	.4byte	.LASF70
	.4byte	.LASF71
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.4byte	0x66
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x50
	.4byte	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	0x6d
	.uleb128 0x6
	.4byte	0x6d
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x6d
	.4byte	0xc7
	.uleb128 0x7
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x49
	.uleb128 0x5
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x1
	.byte	0x3
	.2byte	0x200
	.4byte	0xe7
	.uleb128 0x9
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF15
	.sleb128 1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x200
	.4byte	0xd1
	.uleb128 0xb
	.byte	0x28
	.byte	0x3
	.2byte	0x3db
	.4byte	0x193
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x3dd
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x3de
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x3df
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x3e0
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x3e1
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x3e2
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x3e3
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x3e4
	.4byte	0xc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x3e5
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x3e6
	.4byte	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x5
	.4byte	0xa7
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x3e7
	.4byte	0xf3
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x42
	.4byte	0x1c5
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF28
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x47
	.4byte	0x1a4
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x4f
	.4byte	0x1e5
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF31
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x52
	.4byte	0x1d0
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x5a
	.4byte	0x211
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF36
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5f
	.4byte	0x1f0
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x6e
	.4byte	0x237
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF40
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4
	.byte	0x72
	.4byte	0x21c
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.byte	0x84
	.4byte	0x291
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x4
	.byte	0x86
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x4
	.byte	0x89
	.4byte	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x4
	.byte	0x8c
	.4byte	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x4
	.byte	0x8f
	.4byte	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x4
	.byte	0x92
	.4byte	0x237
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.byte	0x94
	.4byte	0x242
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.byte	0x36
	.4byte	0x2dd
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x5
	.byte	0x38
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x5
	.byte	0x3d
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x5
	.byte	0x42
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x5
	.byte	0x47
	.4byte	0xe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0x4a
	.4byte	0x29c
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.byte	0x3d
	.4byte	0x309
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF55
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF56
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x6
	.byte	0x42
	.4byte	0x2e8
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x37e
	.uleb128 0x12
	.ascii	"Led\000"
	.byte	0x1
	.byte	0xbd
	.4byte	0x309
	.4byte	.LLST1
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.byte	0xbf
	.4byte	0x291
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x479
	.4byte	0x36d
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0x493
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0xd9
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3a5
	.uleb128 0x18
	.ascii	"Led\000"
	.byte	0x1
	.byte	0xd9
	.4byte	0x309
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xe8
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3cc
	.uleb128 0x18
	.ascii	"Led\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0x309
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3f3
	.uleb128 0x18
	.ascii	"Led\000"
	.byte	0x1
	.byte	0xf7
	.4byte	0x309
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LASF62
	.byte	0x7
	.2byte	0x6a7
	.4byte	0xcc
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x411
	.4byte	0x411
	.uleb128 0x7
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x198
	.uleb128 0x1b
	.4byte	.LASF63
	.byte	0x1
	.byte	0x59
	.4byte	0x401
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	GPIO_PORT
	.uleb128 0x6
	.4byte	0x49
	.4byte	0x439
	.uleb128 0x7
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5b
	.4byte	0x44b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	GPIO_PIN
	.uleb128 0x1c
	.4byte	0x429
	.uleb128 0x1b
	.4byte	.LASF65
	.byte	0x1
	.byte	0x5d
	.4byte	0x462
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	GPIO_CLK
	.uleb128 0x1c
	.4byte	0xb7
	.uleb128 0x1b
	.4byte	.LASF66
	.byte	0x1
	.byte	0xa0
	.4byte	0x2dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	NVIC_InitStructure
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF67
	.byte	0x8
	.2byte	0x24d
	.byte	0x1
	.byte	0x1
	.4byte	0x493
	.uleb128 0x1e
	.4byte	0x6d
	.uleb128 0x1e
	.4byte	0xe7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x1d6
	.byte	0x1
	.byte	0x1
	.4byte	0x4ad
	.uleb128 0x1e
	.4byte	0x411
	.uleb128 0x1e
	.4byte	0x4ad
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.4byte	0x291
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB112
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
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
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF24:
	.ascii	"GPIO_TypeDef\000"
.LASF42:
	.ascii	"GPIO_Pin\000"
.LASF51:
	.ascii	"NVIC_IRQChannelCmd\000"
.LASF29:
	.ascii	"GPIOMode_TypeDef\000"
.LASF54:
	.ascii	"LED2\000"
.LASF55:
	.ascii	"LED3\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF31:
	.ascii	"GPIO_OType_OD\000"
.LASF45:
	.ascii	"GPIO_OType\000"
.LASF27:
	.ascii	"GPIO_Mode_AF\000"
.LASF15:
	.ascii	"ENABLE\000"
.LASF44:
	.ascii	"GPIO_Speed\000"
.LASF68:
	.ascii	"GPIO_Init\000"
.LASF28:
	.ascii	"GPIO_Mode_AN\000"
.LASF70:
	.ascii	"./added/stm324xg_eval-reduced.c\000"
.LASF32:
	.ascii	"GPIOOType_TypeDef\000"
.LASF18:
	.ascii	"OTYPER\000"
.LASF59:
	.ascii	"STM_EVAL_LEDOn\000"
.LASF10:
	.ascii	"long long int\000"
.LASF71:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF26:
	.ascii	"GPIO_Mode_OUT\000"
.LASF20:
	.ascii	"PUPDR\000"
.LASF63:
	.ascii	"GPIO_PORT\000"
.LASF7:
	.ascii	"long int\000"
.LASF25:
	.ascii	"GPIO_Mode_IN\000"
.LASF22:
	.ascii	"BSRRH\000"
.LASF17:
	.ascii	"MODER\000"
.LASF21:
	.ascii	"BSRRL\000"
.LASF36:
	.ascii	"GPIO_High_Speed\000"
.LASF30:
	.ascii	"GPIO_OType_PP\000"
.LASF58:
	.ascii	"STM_EVAL_LEDInit\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF46:
	.ascii	"GPIO_PuPd\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF47:
	.ascii	"GPIO_InitTypeDef\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF69:
	.ascii	"GNU C 4.7.2\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF67:
	.ascii	"RCC_AHB1PeriphClockCmd\000"
.LASF65:
	.ascii	"GPIO_CLK\000"
.LASF61:
	.ascii	"STM_EVAL_LEDToggle\000"
.LASF35:
	.ascii	"GPIO_Fast_Speed\000"
.LASF14:
	.ascii	"DISABLE\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF66:
	.ascii	"NVIC_InitStructure\000"
.LASF60:
	.ascii	"STM_EVAL_LEDOff\000"
.LASF48:
	.ascii	"NVIC_IRQChannel\000"
.LASF50:
	.ascii	"NVIC_IRQChannelSubPriority\000"
.LASF53:
	.ascii	"LED1\000"
.LASF33:
	.ascii	"GPIO_Low_Speed\000"
.LASF34:
	.ascii	"GPIO_Medium_Speed\000"
.LASF56:
	.ascii	"LED4\000"
.LASF19:
	.ascii	"OSPEEDR\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF49:
	.ascii	"NVIC_IRQChannelPreemptionPriority\000"
.LASF37:
	.ascii	"GPIOSpeed_TypeDef\000"
.LASF40:
	.ascii	"GPIO_PuPd_DOWN\000"
.LASF52:
	.ascii	"NVIC_InitTypeDef\000"
.LASF38:
	.ascii	"GPIO_PuPd_NOPULL\000"
.LASF57:
	.ascii	"Led_TypeDef\000"
.LASF72:
	.ascii	"GPIO_InitStructure\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF41:
	.ascii	"GPIOPuPd_TypeDef\000"
.LASF39:
	.ascii	"GPIO_PuPd_UP\000"
.LASF64:
	.ascii	"GPIO_PIN\000"
.LASF16:
	.ascii	"FunctionalState\000"
.LASF62:
	.ascii	"ITM_RxBuffer\000"
.LASF23:
	.ascii	"LCKR\000"
.LASF43:
	.ascii	"GPIO_Mode\000"
	.ident	"GCC: (GNU) 4.7.2"
