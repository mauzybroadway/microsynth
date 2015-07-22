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
	.file	"stm32f4xx_it.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.NMI_Handler,"ax",%progbits
	.align	2
	.global	NMI_Handler
	.thumb
	.thumb_func
	.type	NMI_Handler, %function
NMI_Handler:
.LFB112:
	.file 1 "stm32f4xx_it.c"
	.loc 1 65 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE112:
	.size	NMI_Handler, .-NMI_Handler
	.section	.text.HardFault_Handler,"ax",%progbits
	.align	2
	.global	HardFault_Handler
	.thumb
	.thumb_func
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB113:
	.loc 1 74 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L3:
	b	.L3
	.cfi_endproc
.LFE113:
	.size	HardFault_Handler, .-HardFault_Handler
	.section	.text.MemManage_Handler,"ax",%progbits
	.align	2
	.global	MemManage_Handler
	.thumb
	.thumb_func
	.type	MemManage_Handler, %function
MemManage_Handler:
.LFB114:
	.loc 1 86 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L5:
	b	.L5
	.cfi_endproc
.LFE114:
	.size	MemManage_Handler, .-MemManage_Handler
	.section	.text.BusFault_Handler,"ax",%progbits
	.align	2
	.global	BusFault_Handler
	.thumb
	.thumb_func
	.type	BusFault_Handler, %function
BusFault_Handler:
.LFB115:
	.loc 1 98 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L7:
	b	.L7
	.cfi_endproc
.LFE115:
	.size	BusFault_Handler, .-BusFault_Handler
	.section	.text.UsageFault_Handler,"ax",%progbits
	.align	2
	.global	UsageFault_Handler
	.thumb
	.thumb_func
	.type	UsageFault_Handler, %function
UsageFault_Handler:
.LFB116:
	.loc 1 110 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L9:
	b	.L9
	.cfi_endproc
.LFE116:
	.size	UsageFault_Handler, .-UsageFault_Handler
	.section	.text.DebugMon_Handler,"ax",%progbits
	.align	2
	.global	DebugMon_Handler
	.thumb
	.thumb_func
	.type	DebugMon_Handler, %function
DebugMon_Handler:
.LFB117:
	.loc 1 122 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE117:
	.size	DebugMon_Handler, .-DebugMon_Handler
	.section	.text.SVC_Handler,"ax",%progbits
	.align	2
	.global	SVC_Handler
	.thumb
	.thumb_func
	.type	SVC_Handler, %function
SVC_Handler:
.LFB118:
	.loc 1 130 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE118:
	.size	SVC_Handler, .-SVC_Handler
	.section	.text.PendSV_Handler,"ax",%progbits
	.align	2
	.global	PendSV_Handler
	.thumb
	.thumb_func
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB119:
	.loc 1 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE119:
	.size	PendSV_Handler, .-PendSV_Handler
	.section	.text.SysTick_Handler,"ax",%progbits
	.align	2
	.global	SysTick_Handler
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB120:
	.loc 1 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE120:
	.size	SysTick_Handler, .-SysTick_Handler
	.global	capture
	.section	.bss.capture,"aw",%nobits
	.align	1
	.type	capture, %object
	.size	capture, 2
capture:
	.space	2
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x16b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.4byte	.LASF24
	.4byte	.LASF25
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x49
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
	.4byte	0x50
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF12
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF15
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x6a7
	.4byte	0x8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2e
	.4byte	0x3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	capture
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
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
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
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
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"PendSV_Handler\000"
.LASF25:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF23:
	.ascii	"GNU C 4.7.2\000"
.LASF16:
	.ascii	"UsageFault_Handler\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"BusFault_Handler\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF24:
	.ascii	"stm32f4xx_it.c\000"
.LASF13:
	.ascii	"HardFault_Handler\000"
.LASF22:
	.ascii	"capture\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"MemManage_Handler\000"
.LASF20:
	.ascii	"SysTick_Handler\000"
.LASF6:
	.ascii	"long int\000"
.LASF21:
	.ascii	"ITM_RxBuffer\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"NMI_Handler\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"SVC_Handler\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF17:
	.ascii	"DebugMon_Handler\000"
.LASF2:
	.ascii	"short int\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF11:
	.ascii	"sizetype\000"
	.ident	"GCC: (GNU) 4.7.2"
