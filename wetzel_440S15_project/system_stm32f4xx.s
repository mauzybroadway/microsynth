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
	.file	"system_stm32f4xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SystemInit,"ax",%progbits
	.align	2
	.global	SystemInit
	.thumb
	.thumb_func
	.type	SystemInit, %function
SystemInit:
.LFB112:
	.file 1 "system_stm32f4xx.c"
	.loc 1 221 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 228 0
	mov	r3, #14336
	movt	r3, 16386
	.loc 1 231 0
	movs	r2, #0
	.loc 1 228 0
	ldr	r1, [r3, #0]
	orr	r1, r1, #1
	str	r1, [r3, #0]
	.loc 1 231 0
	str	r2, [r3, #8]
	.loc 1 234 0
	ldr	r0, [r3, #0]
	.loc 1 237 0
	movw	r1, #12304
	.loc 1 234 0
	bic	r0, r0, #17301504
	.loc 1 237 0
	movt	r1, 9216
	.loc 1 234 0
	bic	r0, r0, #65536
	str	r0, [r3, #0]
	.loc 1 237 0
	str	r1, [r3, #4]
	.loc 1 240 0
	ldr	r1, [r3, #0]
	.loc 1 221 0
	sub	sp, sp, #8
.LCFI0:
	.cfi_def_cfa_offset 8
	.loc 1 240 0
	bic	r1, r1, #262144
	str	r1, [r3, #0]
	.loc 1 243 0
	str	r2, [r3, #12]
.LBB4:
.LBB5:
	.loc 1 358 0
	str	r2, [sp, #0]
.LVL0:
	str	r2, [sp, #4]
.LVL1:
	.loc 1 361 0
	ldr	r2, [r3, #0]
	orr	r2, r2, #65536
	str	r2, [r3, #0]
	.loc 1 366 0
	mov	r2, r3
	b	.L3
.L18:
	.loc 1 368 0
	ldr	r3, [sp, #0]
	cmp	r3, #20480
	beq	.L2
.L3:
	.loc 1 366 0
	ldr	r3, [r2, #0]
	and	r3, r3, #131072
.LVL2:
	str	r3, [sp, #4]
.LVL3:
	.loc 1 367 0
	ldr	r3, [sp, #0]
.LVL4:
	adds	r3, r3, #1
.LVL5:
	str	r3, [sp, #0]
.LVL6:
	.loc 1 368 0
	ldr	r3, [sp, #4]
.LVL7:
	cmp	r3, #0
	beq	.L18
.L2:
	.loc 1 370 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #0]
	ands	r3, r3, #131072
	.loc 1 376 0
	it	eq
	streq	r3, [sp, #4]
	.loc 1 370 0
	beq	.L5
	.loc 1 372 0
	movs	r3, #1
	str	r3, [sp, #4]
.L5:
	.loc 1 379 0
	ldr	r3, [sp, #4]
	cmp	r3, #1
	beq	.L6
.L9:
.LBE5:
.LBE4:
	.loc 1 257 0
	mov	r3, #60672
	movt	r3, 57344
	mov	r2, #134217728
	str	r2, [r3, #8]
	.loc 1 259 0
	add	sp, sp, #8
	bx	lr
.L6:
.LBB7:
.LBB6:
	.loc 1 382 0
	mov	r3, #14336
	movt	r3, 16386
	.loc 1 383 0
	mov	r2, #28672
	.loc 1 382 0
	ldr	r1, [r3, #64]
	.loc 1 383 0
	movt	r2, 16384
	.loc 1 382 0
	orr	r1, r1, #268435456
	str	r1, [r3, #64]
	.loc 1 383 0
	ldr	r1, [r2, #0]
	orr	r1, r1, #49152
	str	r1, [r2, #0]
	.loc 1 386 0
	ldr	r2, [r3, #8]
	str	r2, [r3, #8]
	.loc 1 390 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #32768
	str	r2, [r3, #8]
	.loc 1 393 0
	ldr	r1, [r3, #8]
	.loc 1 405 0
	movw	r2, #21529
	.loc 1 393 0
	orr	r1, r1, #5120
	.loc 1 405 0
	movt	r2, 1856
	.loc 1 393 0
	str	r1, [r3, #8]
	.loc 1 405 0
	str	r2, [r3, #4]
	.loc 1 409 0
	ldr	r2, [r3, #0]
	orr	r2, r2, #16777216
	str	r2, [r3, #0]
	.loc 1 412 0
	mov	r1, r3
.L7:
	ldr	r2, [r1, #0]
	mov	r3, #14336
	lsls	r2, r2, #6
	movt	r3, 16386
	bpl	.L7
	.loc 1 418 0
	mov	r2, #15360
	movt	r2, 16386
	movw	r1, #1797
	str	r1, [r2, #0]
	.loc 1 427 0
	ldr	r2, [r3, #8]
	bic	r2, r2, #3
	str	r2, [r3, #8]
	.loc 1 428 0
	ldr	r2, [r3, #8]
	orr	r2, r2, #2
	str	r2, [r3, #8]
.L8:
	.loc 1 431 0
	ldr	r2, [r3, #8]
	and	r2, r2, #12
	cmp	r2, #8
	bne	.L8
	b	.L9
.LBE6:
.LBE7:
	.cfi_endproc
.LFE112:
	.size	SystemInit, .-SystemInit
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	2
	.global	SystemCoreClockUpdate
	.thumb
	.thumb_func
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB113:
	.loc 1 298 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 302 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r2, [r3, #8]
.LVL9:
	and	r2, r2, #12
.LVL10:
	.loc 1 304 0
	cmp	r2, #4
	beq	.L21
	cmp	r2, #8
	itt	ne
	movne	r2, #9216
.LVL11:
	movtne	r2, 244
	beq	.L27
.LVL12:
.L20:
	.loc 1 340 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r1, .L28
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #4, #4
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
.LVL13:
	.loc 1 342 0
	lsr	r2, r2, r3
	ldr	r3, .L28+4
.LVL14:
	str	r2, [r3, #0]
	bx	lr
.LVL15:
.L21:
	.loc 1 311 0
	movw	r2, #30784
.LVL16:
	movt	r2, 381
	b	.L20
.L27:
	.loc 1 317 0
	ldr	r0, [r3, #4]
.LVL17:
	.loc 1 318 0
	ldr	r1, [r3, #4]
	.loc 1 320 0
	tst	r0, #4194304
	.loc 1 323 0
	ldr	r0, [r3, #4]
.LVL18:
	itete	ne
	movwne	r3, #30784
	.loc 1 328 0
	moveq	r3, #9216
	.loc 1 323 0
	movtne	r3, 381
	.loc 1 328 0
	movteq	r3, 244
	.loc 1 318 0
	and	r1, r1, #63
.LVL19:
	.loc 1 328 0
	udiv	r2, r3, r1
	.loc 1 331 0
	mov	r3, #14336
	movt	r3, 16386
	.loc 1 328 0
	ubfx	r0, r0, #6, #9
	.loc 1 331 0
	ldr	r3, [r3, #4]
	ubfx	r3, r3, #16, #2
	adds	r3, r3, #1
	.loc 1 328 0
	mul	r2, r2, r0
.LVL20:
	.loc 1 331 0
	lsls	r3, r3, #1
	.loc 1 332 0
	udiv	r2, r2, r3
.LVL21:
	.loc 1 333 0
	b	.L20
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE113:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.global	AHBPrescTable
	.global	SystemCoreClock
	.section	.data.AHBPrescTable,"aw",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.section	.data.SystemCoreClock,"aw",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	168000000
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/core_cm4.h"
	.file 4 "stm32f4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x643
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x1
	.4byte	.LASF78
	.4byte	.LASF79
	.4byte	.Ldebug_ranges0+0x30
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
	.byte	0x8c
	.byte	0x3
	.2byte	0x170
	.4byte	0x1ed
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x172
	.4byte	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x173
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x174
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x175
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"SCR\000"
	.byte	0x3
	.2byte	0x176
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii	"CCR\000"
	.byte	0x3
	.2byte	0x177
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii	"SHP\000"
	.byte	0x3
	.2byte	0x178
	.4byte	0x202
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x179
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x17a
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x17b
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x17c
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x17d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x17e
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x17f
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.ascii	"PFR\000"
	.byte	0x3
	.2byte	0x180
	.4byte	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.ascii	"DFR\000"
	.byte	0x3
	.2byte	0x181
	.4byte	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.ascii	"ADR\000"
	.byte	0x3
	.2byte	0x182
	.4byte	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x183
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x184
	.4byte	0x24b
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x185
	.4byte	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x186
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x9
	.4byte	0xa2
	.uleb128 0xa
	.4byte	0x30
	.4byte	0x202
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x1f2
	.uleb128 0xa
	.4byte	0x6d
	.4byte	0x217
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x21c
	.uleb128 0x5
	.4byte	0x207
	.uleb128 0xa
	.4byte	0x6d
	.4byte	0x231
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x236
	.uleb128 0x5
	.4byte	0x221
	.uleb128 0xa
	.4byte	0x6d
	.4byte	0x24b
	.uleb128 0xb
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x250
	.uleb128 0x5
	.4byte	0x23b
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x187
	.4byte	0xa7
	.uleb128 0x5
	.4byte	0x5b
	.uleb128 0xd
	.byte	0x1
	.byte	0x4
	.2byte	0x1fe
	.4byte	0x27c
	.uleb128 0xe
	.4byte	.LASF30
	.sleb128 0
	.uleb128 0xf
	.ascii	"SET\000"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.byte	0x1c
	.byte	0x4
	.2byte	0x345
	.4byte	0x2ed
	.uleb128 0x8
	.ascii	"ACR\000"
	.byte	0x4
	.2byte	0x347
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x348
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x349
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x34a
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x34b
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x34c
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x34d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x34e
	.4byte	0x27c
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.2byte	0x452
	.4byte	0x320
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x454
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x455
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x456
	.4byte	0x2f9
	.uleb128 0x6
	.byte	0x90
	.byte	0x4
	.2byte	0x45c
	.4byte	0x519
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x45e
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x45f
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x460
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"CIR\000"
	.byte	0x4
	.2byte	0x461
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x462
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x463
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x464
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x465
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x466
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x467
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x468
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x469
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x46a
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x46b
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x46c
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x46d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x46e
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x46f
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x470
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x471
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x472
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x473
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x474
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x475
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x476
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x477
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x478
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x479
	.4byte	0x207
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x47a
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x47b
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x47c
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x47d
	.4byte	0xa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x47f
	.4byte	0x32c
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.byte	0x1
	.4byte	0x54c
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x166
	.4byte	0xa2
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x166
	.4byte	0xa2
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x58f
	.uleb128 0x13
	.4byte	0x525
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfb
	.uleb128 0x14
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x15
	.4byte	0x533
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	0x53f
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5fa
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LLST3
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LLST4
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LLST5
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LLST6
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x12b
	.4byte	0x6d
	.4byte	.LLST7
	.byte	0
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x6a7
	.4byte	0x261
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.4byte	.LASF75
	.byte	0x1
	.byte	0xbb
	.4byte	0x6d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0xa
	.4byte	0x30
	.4byte	0x62a
	.uleb128 0xb
	.4byte	0x9b
	.byte	0xf
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xbd
	.4byte	0x63c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	AHBPrescTable
	.uleb128 0x9
	.4byte	0x641
	.uleb128 0x5
	.4byte	0x61a
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
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
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x91
	.sleb128 -8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x91
	.sleb128 -4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x1a
	.byte	0x46
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE113
	.2byte	0x1
	.byte	0x51
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
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF52:
	.ascii	"AHB1LPENR\000"
.LASF42:
	.ascii	"APB1RSTR\000"
.LASF46:
	.ascii	"AHB2ENR\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF59:
	.ascii	"BDCR\000"
.LASF15:
	.ascii	"ICSR\000"
.LASF62:
	.ascii	"PLLI2SCFGR\000"
.LASF36:
	.ascii	"PWR_TypeDef\000"
.LASF61:
	.ascii	"SSCGR\000"
.LASF67:
	.ascii	"HSEStatus\000"
.LASF14:
	.ascii	"CPUID\000"
.LASF31:
	.ascii	"KEYR\000"
.LASF27:
	.ascii	"RESERVED0\000"
.LASF38:
	.ascii	"CFGR\000"
.LASF54:
	.ascii	"AHB3LPENR\000"
.LASF51:
	.ascii	"RESERVED3\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF49:
	.ascii	"APB1ENR\000"
.LASF64:
	.ascii	"DCKCFGR\000"
.LASF47:
	.ascii	"AHB3ENR\000"
.LASF32:
	.ascii	"OPTKEYR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF23:
	.ascii	"BFAR\000"
.LASF7:
	.ascii	"long int\000"
.LASF65:
	.ascii	"RCC_TypeDef\000"
.LASF2:
	.ascii	"short int\000"
.LASF43:
	.ascii	"APB2RSTR\000"
.LASF19:
	.ascii	"CFSR\000"
.LASF40:
	.ascii	"AHB2RSTR\000"
.LASF72:
	.ascii	"pllsource\000"
.LASF73:
	.ascii	"pllm\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF71:
	.ascii	"pllp\000"
.LASF17:
	.ascii	"AIRCR\000"
.LASF29:
	.ascii	"SCB_Type\000"
.LASF50:
	.ascii	"APB2ENR\000"
.LASF66:
	.ascii	"StartUpCounter\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF77:
	.ascii	"GNU C 4.7.2\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF69:
	.ascii	"SystemCoreClockUpdate\000"
.LASF22:
	.ascii	"MMFAR\000"
.LASF18:
	.ascii	"SHCSR\000"
.LASF37:
	.ascii	"PLLCFGR\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF56:
	.ascii	"APB1LPENR\000"
.LASF70:
	.ascii	"pllvco\000"
.LASF16:
	.ascii	"VTOR\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF26:
	.ascii	"ISAR\000"
.LASF21:
	.ascii	"DFSR\000"
.LASF75:
	.ascii	"SystemCoreClock\000"
.LASF20:
	.ascii	"HFSR\000"
.LASF53:
	.ascii	"AHB2LPENR\000"
.LASF25:
	.ascii	"MMFR\000"
.LASF76:
	.ascii	"AHBPrescTable\000"
.LASF44:
	.ascii	"RESERVED1\000"
.LASF48:
	.ascii	"RESERVED2\000"
.LASF80:
	.ascii	"SetSysClock\000"
.LASF55:
	.ascii	"RESERVED4\000"
.LASF58:
	.ascii	"RESERVED5\000"
.LASF60:
	.ascii	"RESERVED6\000"
.LASF45:
	.ascii	"AHB1ENR\000"
.LASF30:
	.ascii	"RESET\000"
.LASF68:
	.ascii	"SystemInit\000"
.LASF39:
	.ascii	"AHB1RSTR\000"
.LASF78:
	.ascii	"system_stm32f4xx.c\000"
.LASF24:
	.ascii	"AFSR\000"
.LASF41:
	.ascii	"AHB3RSTR\000"
.LASF35:
	.ascii	"FLASH_TypeDef\000"
.LASF74:
	.ascii	"ITM_RxBuffer\000"
.LASF63:
	.ascii	"PLLSAICFGR\000"
.LASF28:
	.ascii	"CPACR\000"
.LASF57:
	.ascii	"APB2LPENR\000"
.LASF33:
	.ascii	"OPTCR\000"
.LASF34:
	.ascii	"OPTCR1\000"
	.ident	"GCC: (GNU) 4.7.2"
