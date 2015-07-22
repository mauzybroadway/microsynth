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
	.file	"stm32f4xx_rcc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RCC_AHB1PeriphClockCmd,"ax",%progbits
	.align	2
	.global	RCC_AHB1PeriphClockCmd
	.thumb
	.thumb_func
	.type	RCC_AHB1PeriphClockCmd, %function
RCC_AHB1PeriphClockCmd:
.LFB112:
	.file 1 "./added/stm32f4xx_rcc.c"
	.loc 1 1528 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 1535 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r2, [r3, #48]
	.loc 1 1533 0
	cbnz	r1, .L5
	.loc 1 1539 0
	bic	r0, r2, r0
.LVL1:
	str	r0, [r3, #48]
	bx	lr
.LVL2:
.L5:
	.loc 1 1535 0
	orrs	r0, r0, r2
.LVL3:
	str	r0, [r3, #48]
	bx	lr
	.cfi_endproc
.LFE112:
	.size	RCC_AHB1PeriphClockCmd, .-RCC_AHB1PeriphClockCmd
	.section	.text.RCC_APB1PeriphClockCmd,"ax",%progbits
	.align	2
	.global	RCC_APB1PeriphClockCmd
	.thumb
	.thumb_func
	.type	RCC_APB1PeriphClockCmd, %function
RCC_APB1PeriphClockCmd:
.LFB113:
	.loc 1 1640 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 1647 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r2, [r3, #64]
	.loc 1 1645 0
	cbnz	r1, .L9
	.loc 1 1651 0
	bic	r0, r2, r0
.LVL5:
	str	r0, [r3, #64]
	bx	lr
.LVL6:
.L9:
	.loc 1 1647 0
	orrs	r0, r0, r2
.LVL7:
	str	r0, [r3, #64]
	bx	lr
	.cfi_endproc
.LFE113:
	.size	RCC_APB1PeriphClockCmd, .-RCC_APB1PeriphClockCmd
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/stm32f4xx.h"
	.file 4 "./added/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x33e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x1
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	0x50
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x50
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	0x57
	.uleb128 0x6
	.4byte	0x57
	.4byte	0xa1
	.uleb128 0x7
	.4byte	0x85
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x45
	.uleb128 0x8
	.byte	0x1
	.byte	0x3
	.2byte	0x200
	.4byte	0xbc
	.uleb128 0x9
	.4byte	.LASF12
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF13
	.sleb128 1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x200
	.4byte	0xa6
	.uleb128 0xb
	.byte	0x90
	.byte	0x3
	.2byte	0x45c
	.4byte	0x2b5
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x3
	.2byte	0x45e
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x45f
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x460
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.ascii	"CIR\000"
	.byte	0x3
	.2byte	0x461
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x462
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x463
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x464
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x465
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x466
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x467
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x468
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x469
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x46a
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x46b
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x46c
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x46d
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x46e
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x46f
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x470
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x471
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x472
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x473
	.4byte	0x57
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x474
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x475
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x476
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x477
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x3
	.2byte	0x478
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x479
	.4byte	0x91
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x47a
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x47b
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x47c
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x47d
	.4byte	0x8c
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x3
	.2byte	0x47f
	.4byte	0xc8
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x5f7
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2fa
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x5f7
	.4byte	0x57
	.4byte	.LLST0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x5f7
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x667
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x333
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x667
	.4byte	0x57
	.4byte	.LLST1
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x667
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x6a7
	.4byte	0xa1
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
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
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"RCC_AHB1Periph\000"
.LASF38:
	.ascii	"BDCR\000"
.LASF24:
	.ascii	"AHB1ENR\000"
.LASF40:
	.ascii	"SSCGR\000"
.LASF49:
	.ascii	"RCC_APB1Periph\000"
.LASF31:
	.ascii	"AHB1LPENR\000"
.LASF4:
	.ascii	"long int\000"
.LASF19:
	.ascii	"AHB3RSTR\000"
.LASF14:
	.ascii	"FunctionalState\000"
.LASF20:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF27:
	.ascii	"RESERVED2\000"
.LASF30:
	.ascii	"RESERVED3\000"
.LASF34:
	.ascii	"RESERVED4\000"
.LASF37:
	.ascii	"RESERVED5\000"
.LASF52:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\AHHH\000"
.LASF25:
	.ascii	"AHB2ENR\000"
.LASF13:
	.ascii	"ENABLE\000"
.LASF0:
	.ascii	"signed char\000"
.LASF21:
	.ascii	"APB1RSTR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"AHB2LPENR\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"DCKCFGR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF53:
	.ascii	"ITM_RxBuffer\000"
.LASF15:
	.ascii	"PLLCFGR\000"
.LASF51:
	.ascii	"./added/stm32f4xx_rcc.c\000"
.LASF26:
	.ascii	"AHB3ENR\000"
.LASF29:
	.ascii	"APB2ENR\000"
.LASF28:
	.ascii	"APB1ENR\000"
.LASF22:
	.ascii	"APB2RSTR\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF41:
	.ascii	"PLLI2SCFGR\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF35:
	.ascii	"APB1LPENR\000"
.LASF16:
	.ascii	"CFGR\000"
.LASF17:
	.ascii	"AHB1RSTR\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF11:
	.ascii	"sizetype\000"
.LASF33:
	.ascii	"AHB3LPENR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF50:
	.ascii	"GNU C 4.7.2\000"
.LASF42:
	.ascii	"PLLSAICFGR\000"
.LASF2:
	.ascii	"short int\000"
.LASF39:
	.ascii	"RESERVED6\000"
.LASF46:
	.ascii	"NewState\000"
.LASF36:
	.ascii	"APB2LPENR\000"
.LASF44:
	.ascii	"RCC_TypeDef\000"
.LASF47:
	.ascii	"RCC_AHB1PeriphClockCmd\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF48:
	.ascii	"RCC_APB1PeriphClockCmd\000"
.LASF18:
	.ascii	"AHB2RSTR\000"
.LASF12:
	.ascii	"DISABLE\000"
	.ident	"GCC: (GNU) 4.7.2"
