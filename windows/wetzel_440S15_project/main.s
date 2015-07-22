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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TIM_Config,"ax",%progbits
	.align	2
	.global	TIM_Config
	.thumb
	.thumb_func
	.type	TIM_Config, %function
TIM_Config:
.LFB113:
	.file 1 "main.c"
	.loc 1 190 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI0:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 194 0
	movs	r1, #1
	.loc 1 190 0
	sub	sp, sp, #12
.LCFI1:
	.cfi_def_cfa_offset 24
	.loc 1 194 0
	movs	r0, #2
	bl	RCC_APB1PeriphClockCmd
.LVL0:
	.loc 1 199 0
	movs	r4, #1
	.loc 1 197 0
	movs	r3, #29
	.loc 1 198 0
	movs	r5, #0
	.loc 1 201 0
	add	r0, sp, #4
	.loc 1 197 0
	strb	r3, [sp, #4]
	.loc 1 198 0
	strb	r5, [sp, #5]
	.loc 1 199 0
	strb	r4, [sp, #6]
	.loc 1 200 0
	strb	r4, [sp, #7]
	.loc 1 201 0
	bl	NVIC_Init
.LVL1:
	.loc 1 204 0
	mov	r0, r5
	bl	STM_EVAL_LEDInit
.LVL2:
	.loc 1 205 0
	mov	r0, r4
	bl	STM_EVAL_LEDInit
.LVL3:
	.loc 1 206 0
	movs	r0, #2
	bl	STM_EVAL_LEDInit
.LVL4:
	.loc 1 207 0
	movs	r0, #3
	bl	STM_EVAL_LEDInit
.LVL5:
	.loc 1 211 0
	mov	r0, r5
	bl	STM_EVAL_LEDOn
.LVL6:
	.loc 1 212 0
	mov	r0, r4
	bl	STM_EVAL_LEDOn
.LVL7:
	.loc 1 213 0
	movs	r0, #2
	bl	STM_EVAL_LEDOn
.LVL8:
	.loc 1 214 0
	movs	r0, #3
	bl	STM_EVAL_LEDOn
.LVL9:
	.loc 1 216 0
	bl	ANCA_INIT_All
.LVL10:
	.loc 1 217 0
	bl	P24_init
.LVL11:
	.loc 1 218 0
	add	sp, sp, #12
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE113:
	.size	TIM_Config, .-TIM_Config
	.section	.text.startup.main,"ax",%progbits
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB112:
	.loc 1 71 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 84 0
	bl	TIM_Config
.LVL12:
	.loc 1 120 0
	ldr	r2, .L5
	.loc 1 123 0
	ldr	r3, .L5+4
	.loc 1 120 0
	ldr	r1, [r2, #0]
	ldr	r6, .L5+8
	.loc 1 134 0
	ldr	r4, .L5+12
	.loc 1 120 0
	movw	r2, #40833
	movt	r2, 5726
	umull	r0, r2, r2, r1
	lsrs	r2, r2, #20
	subs	r2, r2, #1
	.loc 1 128 0
	mov	r0, #1024
	.loc 1 124 0
	movs	r5, #0
	.loc 1 128 0
	mov	r1, r3
	.loc 1 120 0
	strh	r2, [r6, #0]	@ movhi
	.loc 1 128 0
	movt	r0, 16384
	.loc 1 123 0
	movw	r2, #65535
	str	r2, [r3, #4]
	.loc 1 124 0
	strh	r5, [r3, #0]	@ movhi
	.loc 1 125 0
	strh	r5, [r3, #8]	@ movhi
	.loc 1 126 0
	strh	r5, [r3, #2]	@ movhi
	.loc 1 128 0
	bl	TIM_TimeBaseInit
.LVL13:
	.loc 1 131 0
	mov	r0, #1024
	movs	r2, #1
	ldrh	r1, [r6, #0]
	movt	r0, 16384
	bl	TIM_PrescalerConfig
.LVL14:
	.loc 1 136 0
	ldr	r3, .L5+16
	.loc 1 134 0
	strh	r5, [r4, #0]	@ movhi
	.loc 1 136 0
	ldrh	r3, [r3, #0]
	.loc 1 137 0
	strh	r5, [r4, #12]	@ movhi
	.loc 1 139 0
	mov	r0, #1024
	.loc 1 135 0
	movs	r6, #1
	.loc 1 136 0
	uxth	r3, r3
	.loc 1 139 0
	movt	r0, 16384
	mov	r1, r4
	.loc 1 136 0
	str	r3, [r4, #8]
	.loc 1 135 0
	strh	r6, [r4, #2]	@ movhi
	.loc 1 139 0
	bl	TIM_OC1Init
.LVL15:
	.loc 1 141 0
	mov	r0, #1024
	movt	r0, 16384
	mov	r1, r5
	bl	TIM_OC1PreloadConfig
.LVL16:
	.loc 1 153 0
	ldr	r3, .L5+20
	.loc 1 152 0
	strh	r6, [r4, #2]	@ movhi
	.loc 1 153 0
	ldrh	r3, [r3, #0]
	.loc 1 155 0
	mov	r0, #1024
	.loc 1 153 0
	uxth	r3, r3
	.loc 1 155 0
	movt	r0, 16384
	mov	r1, r4
	.loc 1 153 0
	str	r3, [r4, #8]
	.loc 1 155 0
	bl	TIM_OC3Init
.LVL17:
	.loc 1 157 0
	mov	r0, #1024
	movt	r0, 16384
	mov	r1, r5
	bl	TIM_OC3PreloadConfig
.LVL18:
	.loc 1 161 0
	ldr	r3, .L5+24
	.loc 1 160 0
	strh	r6, [r4, #2]	@ movhi
	.loc 1 161 0
	ldrh	r3, [r3, #0]
	.loc 1 163 0
	mov	r0, #1024
	.loc 1 161 0
	uxth	r3, r3
	.loc 1 163 0
	movt	r0, 16384
	mov	r1, r4
	.loc 1 161 0
	str	r3, [r4, #8]
	.loc 1 163 0
	bl	TIM_OC4Init
.LVL19:
	.loc 1 165 0
	mov	r0, #1024
	movt	r0, 16384
	mov	r1, r5
	bl	TIM_OC4PreloadConfig
.LVL20:
	.loc 1 169 0
	mov	r0, #1024
	movt	r0, 16384
	movs	r1, #16
	mov	r2, r6
	bl	TIM_ITConfig
.LVL21:
	.loc 1 172 0
	mov	r0, #1024
	movt	r0, 16384
	mov	r1, r6
	bl	TIM_Cmd
.LVL22:
.L3:
	b	.L3
.L6:
	.align	2
.L5:
	.word	SystemCoreClock
	.word	TIM_TimeBaseStructure
	.word	.LANCHOR0
	.word	TIM_OCInitStructure
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.cfi_endproc
.LFE112:
	.size	main, .-main
	.global	PrescalerValue
	.global	CCR4_Val
	.global	CCR3_Val
	.global	CCR2_Val
	.global	CCR1_Val
	.comm	TIM_OCInitStructure,20,4
	.comm	TIM_TimeBaseStructure,12,4
	.section	.data.CCR1_Val,"aw",%progbits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	CCR1_Val, %object
	.size	CCR1_Val, 2
CCR1_Val:
	.short	-24575
	.section	.data.CCR2_Val,"aw",%progbits
	.align	1
	.type	CCR2_Val, %object
	.size	CCR2_Val, 2
CCR2_Val:
	.short	27309
	.section	.data.CCR3_Val,"aw",%progbits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	CCR3_Val, %object
	.size	CCR3_Val, 2
CCR3_Val:
	.short	13654
	.section	.bss.PrescalerValue,"aw",%nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	PrescalerValue, %object
	.size	PrescalerValue, 2
PrescalerValue:
	.space	2
	.section	.data.CCR4_Val,"aw",%progbits
	.align	1
	.set	.LANCHOR3,. + 0
	.type	CCR4_Val, %object
	.size	CCR4_Val, 2
CCR4_Val:
	.short	6826
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "stm32f4xx.h"
	.file 4 "./added/stm324xg_eval-reduced.h"
	.file 5 "./added/stm32f4xx_tim.h"
	.file 6 "./added/misc.h"
	.file 7 "./added/core_cm4.h"
	.file 8 "./added/system_stm32f4xx.h"
	.file 9 "./added/stm32f4xx_rcc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xae6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x1
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x1
	.byte	0x3
	.byte	0xac
	.4byte	0x264
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -1
	.uleb128 0x3
	.4byte	.LASF8
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF9
	.sleb128 1
	.uleb128 0x3
	.4byte	.LASF10
	.sleb128 2
	.uleb128 0x3
	.4byte	.LASF11
	.sleb128 3
	.uleb128 0x3
	.4byte	.LASF12
	.sleb128 4
	.uleb128 0x3
	.4byte	.LASF13
	.sleb128 5
	.uleb128 0x3
	.4byte	.LASF14
	.sleb128 6
	.uleb128 0x3
	.4byte	.LASF15
	.sleb128 7
	.uleb128 0x3
	.4byte	.LASF16
	.sleb128 8
	.uleb128 0x3
	.4byte	.LASF17
	.sleb128 9
	.uleb128 0x3
	.4byte	.LASF18
	.sleb128 10
	.uleb128 0x3
	.4byte	.LASF19
	.sleb128 11
	.uleb128 0x3
	.4byte	.LASF20
	.sleb128 12
	.uleb128 0x3
	.4byte	.LASF21
	.sleb128 13
	.uleb128 0x3
	.4byte	.LASF22
	.sleb128 14
	.uleb128 0x3
	.4byte	.LASF23
	.sleb128 15
	.uleb128 0x3
	.4byte	.LASF24
	.sleb128 16
	.uleb128 0x3
	.4byte	.LASF25
	.sleb128 17
	.uleb128 0x3
	.4byte	.LASF26
	.sleb128 18
	.uleb128 0x3
	.4byte	.LASF27
	.sleb128 19
	.uleb128 0x3
	.4byte	.LASF28
	.sleb128 20
	.uleb128 0x3
	.4byte	.LASF29
	.sleb128 21
	.uleb128 0x3
	.4byte	.LASF30
	.sleb128 22
	.uleb128 0x3
	.4byte	.LASF31
	.sleb128 23
	.uleb128 0x3
	.4byte	.LASF32
	.sleb128 24
	.uleb128 0x3
	.4byte	.LASF33
	.sleb128 25
	.uleb128 0x3
	.4byte	.LASF34
	.sleb128 26
	.uleb128 0x3
	.4byte	.LASF35
	.sleb128 27
	.uleb128 0x3
	.4byte	.LASF36
	.sleb128 28
	.uleb128 0x3
	.4byte	.LASF37
	.sleb128 29
	.uleb128 0x3
	.4byte	.LASF38
	.sleb128 30
	.uleb128 0x3
	.4byte	.LASF39
	.sleb128 31
	.uleb128 0x3
	.4byte	.LASF40
	.sleb128 32
	.uleb128 0x3
	.4byte	.LASF41
	.sleb128 33
	.uleb128 0x3
	.4byte	.LASF42
	.sleb128 34
	.uleb128 0x3
	.4byte	.LASF43
	.sleb128 35
	.uleb128 0x3
	.4byte	.LASF44
	.sleb128 36
	.uleb128 0x3
	.4byte	.LASF45
	.sleb128 37
	.uleb128 0x3
	.4byte	.LASF46
	.sleb128 38
	.uleb128 0x3
	.4byte	.LASF47
	.sleb128 39
	.uleb128 0x3
	.4byte	.LASF48
	.sleb128 40
	.uleb128 0x3
	.4byte	.LASF49
	.sleb128 41
	.uleb128 0x3
	.4byte	.LASF50
	.sleb128 42
	.uleb128 0x3
	.4byte	.LASF51
	.sleb128 43
	.uleb128 0x3
	.4byte	.LASF52
	.sleb128 44
	.uleb128 0x3
	.4byte	.LASF53
	.sleb128 45
	.uleb128 0x3
	.4byte	.LASF54
	.sleb128 46
	.uleb128 0x3
	.4byte	.LASF55
	.sleb128 47
	.uleb128 0x3
	.4byte	.LASF56
	.sleb128 48
	.uleb128 0x3
	.4byte	.LASF57
	.sleb128 49
	.uleb128 0x3
	.4byte	.LASF58
	.sleb128 50
	.uleb128 0x3
	.4byte	.LASF59
	.sleb128 51
	.uleb128 0x3
	.4byte	.LASF60
	.sleb128 52
	.uleb128 0x3
	.4byte	.LASF61
	.sleb128 53
	.uleb128 0x3
	.4byte	.LASF62
	.sleb128 54
	.uleb128 0x3
	.4byte	.LASF63
	.sleb128 55
	.uleb128 0x3
	.4byte	.LASF64
	.sleb128 56
	.uleb128 0x3
	.4byte	.LASF65
	.sleb128 57
	.uleb128 0x3
	.4byte	.LASF66
	.sleb128 58
	.uleb128 0x3
	.4byte	.LASF67
	.sleb128 59
	.uleb128 0x3
	.4byte	.LASF68
	.sleb128 60
	.uleb128 0x3
	.4byte	.LASF69
	.sleb128 61
	.uleb128 0x3
	.4byte	.LASF70
	.sleb128 62
	.uleb128 0x3
	.4byte	.LASF71
	.sleb128 63
	.uleb128 0x3
	.4byte	.LASF72
	.sleb128 64
	.uleb128 0x3
	.4byte	.LASF73
	.sleb128 65
	.uleb128 0x3
	.4byte	.LASF74
	.sleb128 66
	.uleb128 0x3
	.4byte	.LASF75
	.sleb128 67
	.uleb128 0x3
	.4byte	.LASF76
	.sleb128 68
	.uleb128 0x3
	.4byte	.LASF77
	.sleb128 69
	.uleb128 0x3
	.4byte	.LASF78
	.sleb128 70
	.uleb128 0x3
	.4byte	.LASF79
	.sleb128 71
	.uleb128 0x3
	.4byte	.LASF80
	.sleb128 72
	.uleb128 0x3
	.4byte	.LASF81
	.sleb128 73
	.uleb128 0x3
	.4byte	.LASF82
	.sleb128 74
	.uleb128 0x3
	.4byte	.LASF83
	.sleb128 75
	.uleb128 0x3
	.4byte	.LASF84
	.sleb128 76
	.uleb128 0x3
	.4byte	.LASF85
	.sleb128 77
	.uleb128 0x3
	.4byte	.LASF86
	.sleb128 78
	.uleb128 0x3
	.4byte	.LASF87
	.sleb128 79
	.uleb128 0x3
	.4byte	.LASF88
	.sleb128 80
	.uleb128 0x3
	.4byte	.LASF89
	.sleb128 81
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF90
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x2
	.byte	0x2a
	.4byte	0x276
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF92
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x2
	.byte	0x36
	.4byte	0x28f
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF95
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x2
	.byte	0x4f
	.4byte	0x2a1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF97
	.uleb128 0x5
	.4byte	.LASF98
	.byte	0x2
	.byte	0x50
	.4byte	0x2b3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF99
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF100
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF101
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x7
	.4byte	0x2a8
	.uleb128 0x7
	.4byte	0x284
	.uleb128 0x7
	.4byte	0x296
	.uleb128 0x8
	.byte	0x1
	.byte	0x3
	.2byte	0x200
	.4byte	0x302
	.uleb128 0x3
	.4byte	.LASF104
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF105
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x3
	.2byte	0x200
	.4byte	0x2ec
	.uleb128 0xa
	.byte	0x54
	.byte	0x3
	.2byte	0x501
	.4byte	0x532
	.uleb128 0xb
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x503
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x3
	.2byte	0x504
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x505
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x3
	.2byte	0x506
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x3
	.2byte	0x507
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x3
	.2byte	0x508
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x3
	.2byte	0x509
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x3
	.2byte	0x50a
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x50b
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x3
	.2byte	0x50c
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x50d
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x3
	.2byte	0x50e
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x3
	.2byte	0x50f
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x3
	.2byte	0x510
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x3
	.2byte	0x511
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x3
	.2byte	0x512
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x3
	.2byte	0x513
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x3
	.2byte	0x514
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x515
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x516
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x3
	.2byte	0x517
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x518
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x519
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x3
	.2byte	0x51a
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x3
	.2byte	0x51b
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x3
	.2byte	0x51c
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x3
	.2byte	0x51d
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x3
	.2byte	0x51e
	.4byte	0x2dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x3
	.2byte	0x51f
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x3
	.2byte	0x520
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xb
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x521
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x3
	.2byte	0x522
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xc
	.4byte	.LASF130
	.byte	0x3
	.2byte	0x523
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x524
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xb
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x525
	.4byte	0x2e2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x526
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x527
	.4byte	0x30e
	.uleb128 0xd
	.byte	0x1
	.byte	0x4
	.byte	0x3d
	.4byte	0x55f
	.uleb128 0x3
	.4byte	.LASF134
	.sleb128 0
	.uleb128 0x3
	.4byte	.LASF135
	.sleb128 1
	.uleb128 0x3
	.4byte	.LASF136
	.sleb128 2
	.uleb128 0x3
	.4byte	.LASF137
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0x4
	.byte	0x42
	.4byte	0x53e
	.uleb128 0xe
	.byte	0xc
	.byte	0x5
	.byte	0x37
	.4byte	0x5b9
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x5
	.byte	0x39
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x5
	.byte	0x3c
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x5
	.byte	0x3f
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x5
	.byte	0x43
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x5
	.byte	0x46
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x5
	.4byte	.LASF144
	.byte	0x5
	.byte	0x4e
	.4byte	0x56a
	.uleb128 0xe
	.byte	0x14
	.byte	0x5
	.byte	0x54
	.4byte	0x63d
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x5
	.byte	0x56
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x5
	.byte	0x59
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x5
	.byte	0x5c
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x5
	.byte	0x60
	.4byte	0x2a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x5
	.byte	0x63
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x5
	.byte	0x66
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x5
	.byte	0x6a
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.4byte	.LASF152
	.byte	0x5
	.byte	0x6e
	.4byte	0x284
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0x5
	.byte	0x71
	.4byte	0x5c4
	.uleb128 0xe
	.byte	0x4
	.byte	0x6
	.byte	0x36
	.4byte	0x689
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x6
	.byte	0x38
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x6
	.byte	0x3d
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x6
	.byte	0x42
	.4byte	0x26b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x6
	.byte	0x47
	.4byte	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF158
	.byte	0x6
	.byte	0x4a
	.4byte	0x648
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.byte	0xbd
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x7bd
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x1
	.byte	0xbf
	.4byte	0x689
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd8
	.4byte	0x2c8
	.byte	0x1
	.4byte	0x6cf
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0xd9
	.4byte	0x2c8
	.byte	0x1
	.4byte	0x6e2
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LVL0
	.4byte	0x949
	.4byte	0x6fa
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LVL1
	.4byte	0x963
	.4byte	0x70e
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LVL2
	.4byte	0x97d
	.4byte	0x722
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL3
	.4byte	0x97d
	.4byte	0x736
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL4
	.4byte	0x97d
	.4byte	0x749
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LVL5
	.4byte	0x97d
	.4byte	0x75c
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.4byte	.LVL6
	.4byte	0x992
	.4byte	0x770
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL7
	.4byte	0x992
	.4byte	0x784
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL8
	.4byte	0x992
	.4byte	0x797
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x14
	.4byte	.LVL9
	.4byte	0x992
	.4byte	0x7aa
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x9a7
	.uleb128 0x16
	.4byte	.LVL11
	.4byte	0x9ba
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	0x2c8
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x8b0
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0x694
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x9cd
	.4byte	0x7fb
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.byte	0x3
	.4byte	TIM_TimeBaseStructure
	.byte	0
	.uleb128 0x14
	.4byte	.LVL14
	.4byte	0x9f3
	.4byte	0x80e
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x14
	.4byte	.LVL15
	.4byte	0xa12
	.4byte	0x822
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL16
	.4byte	0xa32
	.4byte	0x836
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0xa4c
	.4byte	0x84a
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL18
	.4byte	0xa66
	.4byte	0x85e
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0xa80
	.4byte	0x872
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0xa9a
	.4byte	0x886
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0xab4
	.4byte	0x89f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0xad3
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x6a7
	.4byte	0x2e7
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF162
	.byte	0x8
	.byte	0x3b
	.4byte	0x2a8
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF163
	.byte	0x1
	.byte	0x33
	.4byte	0x5b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	TIM_TimeBaseStructure
	.uleb128 0x1b
	.4byte	.LASF164
	.byte	0x1
	.byte	0x34
	.4byte	0x63d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	TIM_OCInitStructure
	.uleb128 0x1b
	.4byte	.LASF165
	.byte	0x1
	.byte	0x35
	.4byte	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CCR1_Val
	.uleb128 0x1b
	.4byte	.LASF166
	.byte	0x1
	.byte	0x36
	.4byte	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CCR2_Val
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x1
	.byte	0x37
	.4byte	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CCR3_Val
	.uleb128 0x1b
	.4byte	.LASF168
	.byte	0x1
	.byte	0x38
	.4byte	0x2e2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	CCR4_Val
	.uleb128 0x1b
	.4byte	.LASF169
	.byte	0x1
	.byte	0x3a
	.4byte	0x284
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	PrescalerValue
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF170
	.byte	0x9
	.2byte	0x250
	.byte	0x1
	.byte	0x1
	.4byte	0x963
	.uleb128 0x1d
	.4byte	0x2a8
	.uleb128 0x1d
	.4byte	0x302
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF171
	.byte	0x6
	.byte	0x9f
	.byte	0x1
	.byte	0x1
	.4byte	0x977
	.uleb128 0x1d
	.4byte	0x977
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x689
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF172
	.byte	0x4
	.2byte	0x163
	.byte	0x1
	.byte	0x1
	.4byte	0x992
	.uleb128 0x1d
	.4byte	0x55f
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF173
	.byte	0x4
	.2byte	0x164
	.byte	0x1
	.byte	0x1
	.4byte	0x9a7
	.uleb128 0x1d
	.4byte	0x55f
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF159
	.byte	0x1
	.byte	0xd8
	.4byte	0x2c8
	.byte	0x1
	.4byte	0x9ba
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF160
	.byte	0x1
	.byte	0xd9
	.4byte	0x2c8
	.byte	0x1
	.4byte	0x9cd
	.uleb128 0x13
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF174
	.byte	0x5
	.2byte	0x403
	.byte	0x1
	.byte	0x1
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x9ed
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x532
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x5b9
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF175
	.byte	0x5
	.2byte	0x405
	.byte	0x1
	.byte	0x1
	.4byte	0xa12
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x284
	.uleb128 0x1d
	.4byte	0x284
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF176
	.byte	0x5
	.2byte	0x413
	.byte	0x1
	.byte	0x1
	.4byte	0xa2c
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0xa2c
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x63d
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF177
	.byte	0x5
	.2byte	0x421
	.byte	0x1
	.byte	0x1
	.4byte	0xa4c
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x284
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF178
	.byte	0x5
	.2byte	0x415
	.byte	0x1
	.byte	0x1
	.4byte	0xa66
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0xa2c
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF179
	.byte	0x5
	.2byte	0x423
	.byte	0x1
	.byte	0x1
	.4byte	0xa80
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x284
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF180
	.byte	0x5
	.2byte	0x416
	.byte	0x1
	.byte	0x1
	.4byte	0xa9a
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0xa2c
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF181
	.byte	0x5
	.2byte	0x424
	.byte	0x1
	.byte	0x1
	.4byte	0xab4
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x284
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF182
	.byte	0x5
	.2byte	0x44c
	.byte	0x1
	.byte	0x1
	.4byte	0xad3
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x284
	.uleb128 0x1d
	.4byte	0x302
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF190
	.byte	0x5
	.2byte	0x410
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x9e7
	.uleb128 0x1d
	.4byte	0x302
	.byte	0
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
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
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB113
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI1
	.4byte	.LFE113
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB112
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF157:
	.ascii	"NVIC_IRQChannelCmd\000"
.LASF28:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF9:
	.ascii	"PVD_IRQn\000"
.LASF72:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF77:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF140:
	.ascii	"TIM_CounterMode\000"
.LASF81:
	.ascii	"I2C3_ER_IRQn\000"
.LASF169:
	.ascii	"PrescalerValue\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF76:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF148:
	.ascii	"TIM_Pulse\000"
.LASF133:
	.ascii	"TIM_TypeDef\000"
.LASF104:
	.ascii	"DISABLE\000"
.LASF29:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF124:
	.ascii	"CCR2\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF168:
	.ascii	"CCR4_Val\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF11:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF8:
	.ascii	"WWDG_IRQn\000"
.LASF57:
	.ascii	"SDIO_IRQn\000"
.LASF115:
	.ascii	"CCMR1\000"
.LASF117:
	.ascii	"CCMR2\000"
.LASF100:
	.ascii	"long long int\000"
.LASF90:
	.ascii	"signed char\000"
.LASF73:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF87:
	.ascii	"CRYP_IRQn\000"
.LASF14:
	.ascii	"EXTI0_IRQn\000"
.LASF101:
	.ascii	"long long unsigned int\000"
.LASF178:
	.ascii	"TIM_OC3Init\000"
.LASF128:
	.ascii	"RESERVED11\000"
.LASF129:
	.ascii	"RESERVED12\000"
.LASF131:
	.ascii	"RESERVED13\000"
.LASF132:
	.ascii	"RESERVED14\000"
.LASF97:
	.ascii	"long int\000"
.LASF147:
	.ascii	"TIM_OutputNState\000"
.LASF105:
	.ascii	"ENABLE\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF138:
	.ascii	"Led_TypeDef\000"
.LASF24:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF119:
	.ascii	"CCER\000"
.LASF165:
	.ascii	"CCR1_Val\000"
.LASF70:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF94:
	.ascii	"uint16_t\000"
.LASF62:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF60:
	.ascii	"UART4_IRQn\000"
.LASF50:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF6:
	.ascii	"PendSV_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF177:
	.ascii	"TIM_OC1PreloadConfig\000"
.LASF146:
	.ascii	"TIM_OutputState\000"
.LASF78:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF127:
	.ascii	"BDTR\000"
.LASF188:
	.ascii	"NVIC_InitStructure\000"
.LASF102:
	.ascii	"unsigned int\000"
.LASF149:
	.ascii	"TIM_OCPolarity\000"
.LASF25:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF156:
	.ascii	"NVIC_IRQChannelSubPriority\000"
.LASF1:
	.ascii	"MemoryManagement_IRQn\000"
.LASF159:
	.ascii	"ANCA_INIT_All\000"
.LASF99:
	.ascii	"long unsigned int\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF82:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF164:
	.ascii	"TIM_OCInitStructure\000"
.LASF4:
	.ascii	"SVCall_IRQn\000"
.LASF109:
	.ascii	"SMCR\000"
.LASF66:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF27:
	.ascii	"CAN1_TX_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF20:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF184:
	.ascii	"main.c\000"
.LASF144:
	.ascii	"TIM_TimeBaseInitTypeDef\000"
.LASF154:
	.ascii	"NVIC_IRQChannel\000"
.LASF51:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF155:
	.ascii	"NVIC_IRQChannelPreemptionPriority\000"
.LASF7:
	.ascii	"SysTick_IRQn\000"
.LASF3:
	.ascii	"UsageFault_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF187:
	.ascii	"TIM_Config\000"
.LASF167:
	.ascii	"CCR3_Val\000"
.LASF186:
	.ascii	"IRQn\000"
.LASF139:
	.ascii	"TIM_Prescaler\000"
.LASF103:
	.ascii	"sizetype\000"
.LASF69:
	.ascii	"ETH_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF67:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF158:
	.ascii	"NVIC_InitTypeDef\000"
.LASF23:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF172:
	.ascii	"STM_EVAL_LEDInit\000"
.LASF179:
	.ascii	"TIM_OC3PreloadConfig\000"
.LASF79:
	.ascii	"USART6_IRQn\000"
.LASF122:
	.ascii	"RESERVED10\000"
.LASF152:
	.ascii	"TIM_OCNIdleState\000"
.LASF17:
	.ascii	"EXTI3_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF21:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF71:
	.ascii	"CAN2_TX_IRQn\000"
.LASF170:
	.ascii	"RCC_APB1PeriphClockCmd\000"
.LASF106:
	.ascii	"FunctionalState\000"
.LASF183:
	.ascii	"GNU C 4.7.2\000"
.LASF173:
	.ascii	"STM_EVAL_LEDOn\000"
.LASF85:
	.ascii	"OTG_HS_IRQn\000"
.LASF162:
	.ascii	"SystemCoreClock\000"
.LASF107:
	.ascii	"RESERVED0\000"
.LASF108:
	.ascii	"RESERVED1\000"
.LASF110:
	.ascii	"RESERVED2\000"
.LASF112:
	.ascii	"RESERVED3\000"
.LASF163:
	.ascii	"TIM_TimeBaseStructure\000"
.LASF114:
	.ascii	"RESERVED5\000"
.LASF116:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"SPI3_IRQn\000"
.LASF121:
	.ascii	"RESERVED9\000"
.LASF68:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF56:
	.ascii	"FSMC_IRQn\000"
.LASF96:
	.ascii	"int32_t\000"
.LASF91:
	.ascii	"unsigned char\000"
.LASF182:
	.ascii	"TIM_ITConfig\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF161:
	.ascii	"ITM_RxBuffer\000"
.LASF22:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF18:
	.ascii	"EXTI4_IRQn\000"
.LASF88:
	.ascii	"HASH_RNG_IRQn\000"
.LASF92:
	.ascii	"short int\000"
.LASF134:
	.ascii	"LED1\000"
.LASF135:
	.ascii	"LED2\000"
.LASF136:
	.ascii	"LED3\000"
.LASF175:
	.ascii	"TIM_PrescalerConfig\000"
.LASF61:
	.ascii	"UART5_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF142:
	.ascii	"TIM_ClockDivision\000"
.LASF95:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"EXTI2_IRQn\000"
.LASF160:
	.ascii	"P24_init\000"
.LASF174:
	.ascii	"TIM_TimeBaseInit\000"
.LASF12:
	.ascii	"FLASH_IRQn\000"
.LASF113:
	.ascii	"RESERVED4\000"
.LASF75:
	.ascii	"OTG_FS_IRQn\000"
.LASF98:
	.ascii	"uint32_t\000"
.LASF118:
	.ascii	"RESERVED7\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF120:
	.ascii	"RESERVED8\000"
.LASF137:
	.ascii	"LED4\000"
.LASF150:
	.ascii	"TIM_OCNPolarity\000"
.LASF55:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF2:
	.ascii	"BusFault_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF190:
	.ascii	"TIM_Cmd\000"
.LASF130:
	.ascii	"DMAR\000"
.LASF63:
	.ascii	"TIM7_IRQn\000"
.LASF141:
	.ascii	"TIM_Period\000"
.LASF83:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF180:
	.ascii	"TIM_OC4Init\000"
.LASF185:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF181:
	.ascii	"TIM_OC4PreloadConfig\000"
.LASF10:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF145:
	.ascii	"TIM_OCMode\000"
.LASF64:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF166:
	.ascii	"CCR2_Val\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF123:
	.ascii	"CCR1\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF125:
	.ascii	"CCR3\000"
.LASF126:
	.ascii	"CCR4\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF153:
	.ascii	"TIM_OCInitTypeDef\000"
.LASF93:
	.ascii	"uint8_t\000"
.LASF86:
	.ascii	"DCMI_IRQn\000"
.LASF176:
	.ascii	"TIM_OC1Init\000"
.LASF143:
	.ascii	"TIM_RepetitionCounter\000"
.LASF111:
	.ascii	"DIER\000"
.LASF58:
	.ascii	"TIM5_IRQn\000"
.LASF89:
	.ascii	"FPU_IRQn\000"
.LASF5:
	.ascii	"DebugMonitor_IRQn\000"
.LASF151:
	.ascii	"TIM_OCIdleState\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF26:
	.ascii	"ADC_IRQn\000"
.LASF65:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF80:
	.ascii	"I2C3_EV_IRQn\000"
.LASF189:
	.ascii	"main\000"
.LASF171:
	.ascii	"NVIC_Init\000"
.LASF30:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF74:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF13:
	.ascii	"RCC_IRQn\000"
.LASF84:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF15:
	.ascii	"EXTI1_IRQn\000"
.LASF19:
	.ascii	"DMA1_Stream0_IRQn\000"
	.ident	"GCC: (GNU) 4.7.2"
