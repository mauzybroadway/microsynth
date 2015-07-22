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
	.file	"p24.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ANCAInit,"ax",%progbits
	.align	2
	.global	ANCAInit
	.thumb
	.thumb_func
	.type	ANCAInit, %function
ANCAInit:
.LFB113:
	.file 1 "./added/p24.c"
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 48 0
	movw	r3, #:lower16:.LANCHOR0
	movt	r3, #:upper16:.LANCHOR0
	.loc 1 44 0
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
	.loc 1 44 0
	mov	r4, r0
	.loc 1 48 0
	movs	r1, #1
	ldr	r0, [r3, r0, lsl #2]
.LVL1:
	bl	RCC_AHB1PeriphClockCmd
.LVL2:
	.loc 1 52 0
	movw	r2, #:lower16:.LANCHOR1
	movt	r2, #:upper16:.LANCHOR1
	.loc 1 57 0
	movw	r3, #:lower16:.LANCHOR2
	movt	r3, #:upper16:.LANCHOR2
	.loc 1 52 0
	ldrh	r2, [r2, r4, lsl #1]
	.loc 1 57 0
	ldr	r0, [r3, r4, lsl #2]
	.loc 1 52 0
	str	r2, [sp, #0]
	.loc 1 53 0
	movs	r3, #1
	strb	r3, [sp, #4]
	.loc 1 54 0
	movs	r2, #0
	.loc 1 55 0
	strb	r3, [sp, #7]
	.loc 1 57 0
	mov	r1, sp
	.loc 1 56 0
	movs	r3, #2
	.loc 1 54 0
	strb	r2, [sp, #6]
	.loc 1 56 0
	strb	r3, [sp, #5]
	.loc 1 57 0
	bl	GPIO_Init
.LVL3:
	.loc 1 58 0
	add	sp, sp, #8
	pop	{r4, pc}
	.cfi_endproc
.LFE113:
	.size	ANCAInit, .-ANCAInit
	.section	.text.ANCA_INIT_All,"ax",%progbits
	.align	2
	.global	ANCA_INIT_All
	.thumb
	.thumb_func
	.type	ANCA_INIT_All, %function
ANCA_INIT_All:
.LFB112:
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 29 0
	movs	r0, #0
	bl	ANCAInit
.LVL4:
	.loc 1 30 0
	movs	r0, #1
	bl	ANCAInit
.LVL5:
	.loc 1 31 0
	movs	r0, #2
	bl	ANCAInit
.LVL6:
	.loc 1 32 0
	movs	r0, #3
	bl	ANCAInit
.LVL7:
	.loc 1 33 0
	movs	r0, #4
	bl	ANCAInit
.LVL8:
	.loc 1 34 0
	movs	r0, #5
	bl	ANCAInit
.LVL9:
	.loc 1 35 0
	movs	r0, #6
	bl	ANCAInit
.LVL10:
	.loc 1 36 0
	movs	r0, #7
	bl	ANCAInit
.LVL11:
	.loc 1 37 0
	movs	r0, #8
	bl	ANCAInit
.LVL12:
	.loc 1 38 0
	movs	r0, #9
	bl	ANCAInit
.LVL13:
	.loc 1 39 0
	movs	r0, #10
	bl	ANCAInit
.LVL14:
	.loc 1 40 0
	movs	r0, #11
	.loc 1 41 0
	pop	{r3, lr}
	.loc 1 40 0
	b	ANCAInit
.LVL15:
	.cfi_endproc
.LFE112:
	.size	ANCA_INIT_All, .-ANCA_INIT_All
	.section	.text.ANCA_Set,"ax",%progbits
	.align	2
	.global	ANCA_Set
	.thumb
	.thumb_func
	.type	ANCA_Set, %function
ANCA_Set:
.LFB114:
	.loc 1 61 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL16:
	movs	r2, #0
	push	{r4, r5, r6}
.LCFI3:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 61 0
	mov	r3, r2
	ldr	r5, .L11
	ldr	r4, .L11+4
	b	.L6
.LVL17:
.L10:
	.loc 1 65 0
	ldr	r1, [r5, r3]
	ldrh	r6, [r4, r2]
	adds	r3, r3, #4
	adds	r2, r2, #2
	.loc 1 63 0
	cmp	r3, #32
	.loc 1 65 0
	strh	r6, [r1, #26]	@ movhi
	.loc 1 63 0
	beq	.L9
.L6:
	.loc 1 64 0
	ldr	r1, [r0, r3]
	cmp	r1, #0
	bne	.L10
	.loc 1 67 0
	ldr	r1, [r5, r3]
	ldrh	r6, [r4, r2]
	adds	r3, r3, #4
	adds	r2, r2, #2
	.loc 1 63 0
	cmp	r3, #32
	.loc 1 67 0
	strh	r6, [r1, #24]	@ movhi
	.loc 1 63 0
	bne	.L6
.L9:
	.loc 1 69 0
	pop	{r4, r5, r6}
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.cfi_endproc
.LFE114:
	.size	ANCA_Set, .-ANCA_Set
	.section	.text.ANCA_Print_Num,"ax",%progbits
	.align	2
	.global	ANCA_Print_Num
	.thumb
	.thumb_func
	.type	ANCA_Print_Num, %function
ANCA_Print_Num:
.LFB115:
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL18:
	push	{r4, r5, r6, r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 73 0
	ldr	r5, .L43
	.loc 1 77 0
	ldr	r6, .L43+4
	.loc 1 72 0
	mov	lr, r0
	mov	ip, r1
	mov	r7, r2
	.loc 1 73 0
	ldmia	r5!, {r0, r1, r2, r3}
.LVL19:
	.loc 1 72 0
	sub	sp, sp, #68
.LCFI5:
	.cfi_def_cfa_offset 88
	.loc 1 73 0
	mov	r4, sp
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	.loc 1 74 0
	movs	r5, #0
	str	r5, [sp, #32]
	str	r5, [sp, #36]
	str	r5, [sp, #40]
	str	r5, [sp, #44]
	str	r5, [sp, #48]
	str	r5, [sp, #52]
	str	r5, [sp, #56]
	str	r5, [sp, #60]
	.loc 1 77 0
	ldr	r5, [r6, #32]
	.loc 1 73 0
	stmia	r4, {r0, r1, r2, r3}
	.loc 1 77 0
	movs	r3, #2
	strh	r3, [r5, #24]	@ movhi
	.loc 1 78 0
	ldr	r5, [r6, #40]
	movs	r3, #16
	strh	r3, [r5, #24]	@ movhi
	.loc 1 80 0
	cbz	r7, .L14
	.loc 1 81 0
	movs	r3, #1
	str	r3, [sp, #28]
.L14:
	.loc 1 84 0
	cmp	lr, #15
	bhi	.L15
	tbb	[pc, lr]
.L32:
	.byte	(.L16-.L32)/2
	.byte	(.L17-.L32)/2
	.byte	(.L18-.L32)/2
	.byte	(.L19-.L32)/2
	.byte	(.L20-.L32)/2
	.byte	(.L21-.L32)/2
	.byte	(.L22-.L32)/2
	.byte	(.L23-.L32)/2
	.byte	(.L24-.L32)/2
	.byte	(.L25-.L32)/2
	.byte	(.L26-.L32)/2
	.byte	(.L27-.L32)/2
	.byte	(.L28-.L32)/2
	.byte	(.L29-.L32)/2
	.byte	(.L30-.L32)/2
	.byte	(.L31-.L32)/2
	.align	1
.L15:
	.loc 1 101 0
	movs	r3, #0
	str	r3, [sp, #0]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
.L24:
	.loc 1 104 0
	cmp	ip, #4
	bhi	.L33
	tbb	[pc, ip]
.L39:
	.byte	(.L34-.L39)/2
	.byte	(.L35-.L39)/2
	.byte	(.L36-.L39)/2
	.byte	(.L37-.L39)/2
	.byte	(.L38-.L39)/2
	.align	1
.L37:
	.loc 1 109 0
	movs	r3, #1
	str	r3, [sp, #36]
.L33:
	.loc 1 113 0
	mov	r0, sp
	bl	ANCA_Set
.LVL20:
	.loc 1 114 0
	ldr	r3, [r6, #36]
	movs	r2, #4
	strh	r2, [r3, #24]	@ movhi
	.loc 1 118 0
	add	r0, sp, #32
	.loc 1 115 0
	strh	r2, [r3, #26]	@ movhi
	.loc 1 118 0
	bl	ANCA_Set
.LVL21:
	.loc 1 119 0
	ldr	r3, [r6, #44]
	.loc 1 123 0
	ldr	r0, [r6, #32]
	.loc 1 126 0
	ldr	r1, [r6, #40]
	.loc 1 119 0
	mov	r2, #2048
	strh	r2, [r3, #24]	@ movhi
	.loc 1 120 0
	strh	r2, [r3, #26]	@ movhi
	.loc 1 123 0
	movs	r3, #2
	strh	r3, [r0, #26]	@ movhi
	.loc 1 126 0
	movs	r3, #16
	strh	r3, [r1, #26]	@ movhi
	.loc 1 127 0
	add	sp, sp, #68
	pop	{r4, r5, r6, r7, pc}
.LVL22:
.L38:
	.loc 1 107 0
	movs	r3, #1
	str	r3, [sp, #32]
	b	.L33
.L34:
	.loc 1 105 0
	movs	r3, #1
	str	r3, [sp, #52]
	b	.L33
.L35:
	.loc 1 106 0
	movs	r3, #1
	str	r3, [sp, #40]
	b	.L33
.L36:
	.loc 1 108 0
	movs	r3, #1
	str	r3, [sp, #56]
	b	.L33
.L16:
	.loc 1 85 0
	movs	r3, #0
	str	r3, [sp, #24]
	b	.L24
.L17:
	.loc 1 86 0
	movs	r3, #0
	str	r3, [sp, #0]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	b	.L24
.L18:
	.loc 1 87 0
	movs	r3, #0
	str	r3, [sp, #8]
	str	r3, [sp, #20]
	b	.L24
.L28:
	.loc 1 97 0
	movs	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #24]
	b	.L24
.L29:
	.loc 1 98 0
	movs	r3, #0
	str	r3, [sp, #0]
	str	r3, [sp, #20]
	b	.L24
.L30:
	.loc 1 99 0
	movs	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	b	.L24
.L31:
	.loc 1 100 0
	movs	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	b	.L24
.L19:
	.loc 1 88 0
	movs	r3, #0
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	b	.L24
.L20:
	.loc 1 89 0
	movs	r3, #0
	str	r3, [sp, #0]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	b	.L24
.L21:
	.loc 1 90 0
	movs	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #16]
	b	.L24
.L22:
	.loc 1 91 0
	movs	r3, #0
	str	r3, [sp, #4]
	b	.L24
.L23:
	.loc 1 92 0
	movs	r3, #0
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	b	.L24
.L25:
	.loc 1 94 0
	movs	r3, #0
	str	r3, [sp, #16]
	b	.L24
.L26:
	.loc 1 95 0
	movs	r3, #0
	str	r3, [sp, #12]
	b	.L24
.L27:
	.loc 1 96 0
	movs	r3, #0
	str	r3, [sp, #0]
	str	r3, [sp, #4]
	b	.L24
.L44:
	.align	2
.L43:
	.word	.LANCHOR3
	.word	.LANCHOR2
	.cfi_endproc
.LFE115:
	.size	ANCA_Print_Num, .-ANCA_Print_Num
	.section	.text.ANCA_Print_Ascii,"ax",%progbits
	.align	2
	.global	ANCA_Print_Ascii
	.thumb
	.thumb_func
	.type	ANCA_Print_Ascii, %function
ANCA_Print_Ascii:
.LFB116:
	.loc 1 130 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL23:
	bx	lr
	.cfi_endproc
.LFE116:
	.size	ANCA_Print_Ascii, .-ANCA_Print_Ascii
	.section	.text.queue,"ax",%progbits
	.align	2
	.global	queue
	.thumb
	.thumb_func
	.type	queue, %function
queue:
.LFB117:
	.loc 1 134 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL24:
	.loc 1 135 0
	ldr	r2, .L49
	ldr	r3, [r2, #0]
	cmp	r3, #19
	.loc 1 134 0
	push	{r4}
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 135 0
	bhi	.L48
	.loc 1 139 0
	ldr	r4, [r0, #0]
	ldr	r0, .L49+4
.LVL25:
	adds	r1, r3, #1
	str	r4, [r0, r3, lsl #2]
	str	r1, [r2, #0]
	.loc 1 140 0
	movs	r0, #0
.L47:
	.loc 1 144 0
	pop	{r4}
	bx	lr
.LVL26:
.L48:
	.loc 1 142 0
	mov	r0, #-1
.LVL27:
	b	.L47
.L50:
	.align	2
.L49:
	.word	.LANCHOR4
	.word	fifo
	.cfi_endproc
.LFE117:
	.size	queue, .-queue
	.section	.text.dequeue,"ax",%progbits
	.align	2
	.global	dequeue
	.thumb
	.thumb_func
	.type	dequeue, %function
dequeue:
.LFB118:
	.loc 1 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL28:
	push	{r4, r5}
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 149 0
	ldr	r4, .L59
	ldr	r2, [r4, #0]
	cbz	r2, .L58
	.loc 1 156 0
	ldr	r3, .L59+4
	.loc 1 146 0
	subs	r1, r3, #4
	.loc 1 160 0
	subs	r5, r2, #1
	.loc 1 156 0
	ldr	r0, [r3, #0]
.LVL29:
	.loc 1 146 0
	add	r1, r1, r2, lsl #2
	.loc 1 160 0
	beq	.L56
.LVL30:
.L55:
	.loc 1 161 0 discriminator 2
	ldr	r2, [r3, #4]!
	.loc 1 160 0 discriminator 2
	cmp	r3, r1
	.loc 1 161 0 discriminator 2
	str	r2, [r3, #-4]
	.loc 1 160 0 discriminator 2
	bne	.L55
.L56:
	.loc 1 164 0
	str	r5, [r4, #0]
.L53:
	.loc 1 179 0
	pop	{r4, r5}
	bx	lr
.L58:
.LVL31:
	.loc 1 153 0
	movs	r0, #1
	movs	r3, #20
	bfi	r0, r3, #1, #7
	b	.L53
.L60:
	.align	2
.L59:
	.word	.LANCHOR4
	.word	fifo
	.cfi_endproc
.LFE118:
	.size	dequeue, .-dequeue
	.section	.text.getswitch,"ax",%progbits
	.align	2
	.global	getswitch
	.thumb
	.thumb_func
	.type	getswitch, %function
getswitch:
.LFB119:
	.loc 1 182 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 183 0
	bl	dequeue
.LVL32:
	.loc 1 196 0
	pop	{r3, pc}
	.cfi_endproc
.LFE119:
	.size	getswitch, .-getswitch
	.section	.text.hw8stuff,"ax",%progbits
	.align	2
	.global	hw8stuff
	.thumb
	.thumb_func
	.type	hw8stuff, %function
hw8stuff:
.LFB120:
	.loc 1 199 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 201 0
	bl	getswitch
.LVL33:
	.loc 1 203 0
	ubfx	r3, r0, #1, #7
	cmp	r3, #13
	bgt	.L62
	.loc 1 204 0
	lsls	r2, r0, #31
	bpl	.L64
	.loc 1 205 0
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L62
	tbb	[pc, r3]
.L69:
	.byte	(.L65-.L69)/2
	.byte	(.L62-.L69)/2
	.byte	(.L66-.L69)/2
	.byte	(.L62-.L69)/2
	.byte	(.L67-.L69)/2
	.byte	(.L62-.L69)/2
	.byte	(.L68-.L69)/2
	.align	1
.L73:
	.loc 1 216 0
	ldr	r3, .L75
	ldr	r2, [r3, #12]
	cmp	r2, #0
	ble	.L62
	.loc 1 216 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
	str	r2, [r3, #12]
.L62:
	pop	{r3, pc}
.L64:
	.loc 1 212 0 is_stmt 1
	subs	r3, r3, #2
	cmp	r3, #6
	bhi	.L62
	adr	r2, .L74
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L74:
	.word	.L70+1
	.word	.L62+1
	.word	.L71+1
	.word	.L62+1
	.word	.L72+1
	.word	.L62+1
	.word	.L73+1
.L68:
	.loc 1 209 0
	ldr	r3, .L75
	ldr	r2, [r3, #12]
	cmp	r2, #14
	bgt	.L62
	.loc 1 209 0 is_stmt 0 discriminator 1
	adds	r2, r2, #1
	str	r2, [r3, #12]
	pop	{r3, pc}
.L67:
	.loc 1 208 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #8]
	cmp	r2, #14
	bgt	.L62
	.loc 1 208 0 is_stmt 0 discriminator 1
	adds	r2, r2, #1
	str	r2, [r3, #8]
	pop	{r3, pc}
.L66:
	.loc 1 207 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #4]
	cmp	r2, #14
	bgt	.L62
	.loc 1 207 0 is_stmt 0 discriminator 1
	adds	r2, r2, #1
	str	r2, [r3, #4]
	pop	{r3, pc}
.L65:
	.loc 1 206 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #0]
	cmp	r2, #14
	bgt	.L62
	.loc 1 206 0 is_stmt 0 discriminator 1
	adds	r2, r2, #1
	str	r2, [r3, #0]
	pop	{r3, pc}
.L72:
	.loc 1 215 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ble	.L62
	.loc 1 215 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
	str	r2, [r3, #8]
	pop	{r3, pc}
.L71:
	.loc 1 214 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #4]
	cmp	r2, #0
	ble	.L62
	.loc 1 214 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
	str	r2, [r3, #4]
	pop	{r3, pc}
.L70:
	.loc 1 213 0 is_stmt 1
	ldr	r3, .L75
	ldr	r2, [r3, #0]
	cmp	r2, #0
	ble	.L62
	.loc 1 213 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
	str	r2, [r3, #0]
	pop	{r3, pc}
.L76:
	.align	2
.L75:
	.word	.LANCHOR5
	.cfi_endproc
.LFE120:
	.size	hw8stuff, .-hw8stuff
	.global	ANCA_CLK
	.global	ANCA_PIN
	.global	ANCA_PORT
	.global	vdisplay
	.global	tail
	.global	head
	.comm	fifo,80,4
	.section	.rodata
	.align	2
	.set	.LANCHOR3,. + 0
.LC0:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.section	.bss.head,"aw",%nobits
	.align	2
	.type	head, %object
	.size	head, 4
head:
	.space	4
	.section	.data.vdisplay,"aw",%progbits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	vdisplay, %object
	.size	vdisplay, 44
vdisplay:
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.ANCA_CLK,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ANCA_CLK, %object
	.size	ANCA_CLK, 48
ANCA_CLK:
	.word	4
	.word	2
	.word	1
	.word	2
	.word	2
	.word	4
	.word	4
	.word	2
	.word	4
	.word	8
	.word	2
	.word	4
	.section	.rodata.ANCA_PIN,"a",%progbits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	ANCA_PIN, %object
	.size	ANCA_PIN, 24
ANCA_PIN:
	.short	32
	.short	2
	.short	2
	.short	32
	.short	2048
	.short	4
	.short	16
	.short	1
	.short	2
	.short	4
	.short	16
	.short	2048
	.section	.data.ANCA_PORT,"aw",%progbits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	ANCA_PORT, %object
	.size	ANCA_PORT, 48
ANCA_PORT:
	.word	1073874944
	.word	1073873920
	.word	1073872896
	.word	1073873920
	.word	1073873920
	.word	1073874944
	.word	1073874944
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1073873920
	.word	1073874944
	.section	.bss.tail,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	tail, %object
	.size	tail, 4
tail:
	.space	4
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/stm32f4xx.h"
	.file 4 "./added/stm32f4xx_gpio.h"
	.file 5 "./added/p24.h"
	.file 6 "./added/core_cm4.h"
	.file 7 "./added/stm32f4xx_rcc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7c2
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1
	.4byte	.LASF87
	.4byte	.LASF88
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	0x62
	.uleb128 0x6
	.4byte	0x62
	.4byte	0xac
	.uleb128 0x7
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x50
	.uleb128 0x8
	.byte	0x1
	.byte	0x3
	.2byte	0x200
	.4byte	0xcc
	.uleb128 0x9
	.4byte	.LASF13
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.2byte	0x200
	.4byte	0xb6
	.uleb128 0x6
	.4byte	0x62
	.4byte	0xe8
	.uleb128 0x7
	.4byte	0x90
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.byte	0x28
	.byte	0x3
	.2byte	0x3db
	.4byte	0x188
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x3dd
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x3de
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x3df
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x3e0
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.ascii	"IDR\000"
	.byte	0x3
	.2byte	0x3e1
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii	"ODR\000"
	.byte	0x3
	.2byte	0x3e2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x3e3
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x3e4
	.4byte	0xac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x3e5
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.ascii	"AFR\000"
	.byte	0x3
	.2byte	0x3e6
	.4byte	0x188
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x3e7
	.4byte	0xe8
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x42
	.4byte	0x1ba
	.uleb128 0x9
	.4byte	.LASF24
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF26
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF27
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x47
	.4byte	0x199
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x4f
	.4byte	0x1da
	.uleb128 0x9
	.4byte	.LASF29
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF30
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x52
	.4byte	0x1c5
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x5a
	.4byte	0x206
	.uleb128 0x9
	.4byte	.LASF32
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF33
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF34
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF35
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5f
	.4byte	0x1e5
	.uleb128 0xe
	.byte	0x1
	.byte	0x4
	.byte	0x6e
	.4byte	0x22c
	.uleb128 0x9
	.4byte	.LASF37
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF38
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF39
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x72
	.4byte	0x211
	.uleb128 0xf
	.byte	0x8
	.byte	0x4
	.byte	0x84
	.4byte	0x286
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x4
	.byte	0x86
	.4byte	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x4
	.byte	0x89
	.4byte	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x4
	.byte	0x8c
	.4byte	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x4
	.byte	0x8f
	.4byte	0x1da
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x4
	.byte	0x92
	.4byte	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x94
	.4byte	0x237
	.uleb128 0xe
	.byte	0x1
	.byte	0x5
	.byte	0xe
	.4byte	0x2e2
	.uleb128 0x9
	.4byte	.LASF47
	.sleb128 0
	.uleb128 0x9
	.4byte	.LASF48
	.sleb128 1
	.uleb128 0x9
	.4byte	.LASF49
	.sleb128 2
	.uleb128 0x9
	.4byte	.LASF50
	.sleb128 3
	.uleb128 0x11
	.ascii	"E_R\000"
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF51
	.sleb128 5
	.uleb128 0x9
	.4byte	.LASF52
	.sleb128 6
	.uleb128 0x9
	.4byte	.LASF53
	.sleb128 7
	.uleb128 0x9
	.4byte	.LASF54
	.sleb128 8
	.uleb128 0x9
	.4byte	.LASF55
	.sleb128 9
	.uleb128 0x9
	.4byte	.LASF56
	.sleb128 10
	.uleb128 0x9
	.4byte	.LASF57
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x5
	.byte	0x1b
	.4byte	0x291
	.uleb128 0x12
	.4byte	.LASF89
	.byte	0x4
	.byte	0x5
	.byte	0x87
	.4byte	0x32b
	.uleb128 0x13
	.ascii	"pr\000"
	.byte	0x5
	.byte	0x88
	.4byte	0x89
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.ascii	"sw\000"
	.byte	0x5
	.byte	0x89
	.4byte	0x89
	.byte	0x4
	.byte	0x7
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x5
	.byte	0x8a
	.4byte	0x89
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x5
	.byte	0x8b
	.4byte	0x2ed
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x3a0
	.uleb128 0x16
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2b
	.4byte	0x2e2
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0x2d
	.4byte	0x286
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0x78b
	.4byte	0x38f
	.uleb128 0x19
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
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
	.uleb128 0x1a
	.4byte	.LVL3
	.4byte	0x7a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1c
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x49b
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0x336
	.4byte	0x3cc
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL5
	.4byte	0x336
	.4byte	0x3df
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x336
	.4byte	0x3f2
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0x336
	.4byte	0x405
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x18
	.4byte	.LVL8
	.4byte	0x336
	.4byte	0x418
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0x336
	.4byte	0x42b
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x18
	.4byte	.LVL10
	.4byte	0x336
	.4byte	0x43e
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0x336
	.4byte	0x451
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0x18
	.4byte	.LVL12
	.4byte	0x336
	.4byte	0x464
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0x336
	.4byte	0x477
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0x336
	.4byte	0x48a
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL15
	.byte	0x1
	.4byte	0x336
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x4d0
	.uleb128 0x1d
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3c
	.4byte	0x4d0
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x82
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x82
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x47
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x55d
	.uleb128 0x20
	.ascii	"num\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x82
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x47
	.4byte	0x82
	.4byte	.LLST7
	.uleb128 0x20
	.ascii	"dot\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x82
	.4byte	.LLST8
	.uleb128 0x21
	.ascii	"CA\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x55d
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x21
	.ascii	"AN\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0x55d
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.4byte	.LVL20
	.4byte	0x49b
	.4byte	0x54c
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x49b
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x82
	.4byte	0x56d
	.uleb128 0x7
	.4byte	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x59f
	.uleb128 0x23
	.ascii	"c\000"
	.byte	0x1
	.byte	0x81
	.4byte	0x59f
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x1
	.byte	0x81
	.4byte	0x82
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF69
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.4byte	0x82
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x5d3
	.uleb128 0x20
	.ascii	"in\000"
	.byte	0x1
	.byte	0x86
	.4byte	0x5d3
	.4byte	.LLST10
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x32b
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0x92
	.4byte	0x32b
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x620
	.uleb128 0x21
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x93
	.4byte	0x89
	.byte	0x5
	.byte	0x3
	.4byte	head
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x93
	.4byte	0x89
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LASF73
	.byte	0x1
	.byte	0x9c
	.4byte	0x32b
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	0x32b
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x653
	.uleb128 0x27
	.ascii	"out\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0x32b
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0x5d9
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LLST14
	.byte	0x1
	.4byte	0x69f
	.uleb128 0x26
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc8
	.4byte	0x69f
	.uleb128 0x21
	.ascii	"out\000"
	.byte	0x1
	.byte	0xc9
	.4byte	0x32b
	.byte	0x11
	.byte	0x9d
	.uleb128 0x1
	.uleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9
	.byte	0xfd
	.byte	0x26
	.byte	0x9f
	.byte	0x9d
	.uleb128 0x7
	.uleb128 0
	.byte	0x93
	.uleb128 0x3
	.uleb128 0x28
	.4byte	.LVL33
	.4byte	0x620
	.byte	0
	.uleb128 0x6
	.4byte	0x89
	.4byte	0x6af
	.uleb128 0x7
	.4byte	0x90
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x6a7
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x32b
	.4byte	0x6cd
	.uleb128 0x7
	.4byte	0x90
	.byte	0x13
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF77
	.byte	0x5
	.byte	0x8d
	.4byte	0x6bd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fifo
	.uleb128 0x2a
	.4byte	.LASF78
	.byte	0x5
	.byte	0x8e
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	head
	.uleb128 0x2a
	.4byte	.LASF79
	.byte	0x5
	.byte	0x8e
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tail
	.uleb128 0x6
	.4byte	0x82
	.4byte	0x713
	.uleb128 0x7
	.4byte	0x90
	.byte	0xa
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd
	.4byte	0x703
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vdisplay
	.uleb128 0x6
	.4byte	0x735
	.4byte	0x735
	.uleb128 0x7
	.4byte	0x90
	.byte	0xb
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x18d
	.uleb128 0x2a
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf
	.4byte	0x725
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ANCA_PORT
	.uleb128 0x6
	.4byte	0x3e
	.4byte	0x75d
	.uleb128 0x7
	.4byte	0x90
	.byte	0xb
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF82
	.byte	0x1
	.byte	0x13
	.4byte	0x76f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ANCA_PIN
	.uleb128 0x2b
	.4byte	0x74d
	.uleb128 0x2a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x17
	.4byte	0x786
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ANCA_CLK
	.uleb128 0x2b
	.4byte	0xd8
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x24d
	.byte	0x1
	.byte	0x1
	.4byte	0x7a5
	.uleb128 0x2d
	.4byte	0x62
	.uleb128 0x2d
	.4byte	0xcc
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x1d6
	.byte	0x1
	.byte	0x1
	.4byte	0x7bf
	.uleb128 0x2d
	.4byte	0x735
	.uleb128 0x2d
	.4byte	0x7bf
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.4byte	0x286
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
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
	.uleb128 0x21
	.uleb128 0x34
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.4byte	.LFB113
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
	.4byte	.LFE113
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
	.4byte	.LFE113
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB112
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB114
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE114
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB115
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	.LCFI5
	.4byte	.LFE115
	.2byte	0x3
	.byte	0x7d
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LFE115
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB117
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE117
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LFE117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB118
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE118
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB119
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE119
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB120
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE120
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
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
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LFB112
	.4byte	.LFE112
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
.LASF80:
	.ascii	"vdisplay\000"
.LASF41:
	.ascii	"GPIO_Pin\000"
.LASF28:
	.ascii	"GPIOMode_TypeDef\000"
.LASF74:
	.ascii	"hw8stuff\000"
.LASF2:
	.ascii	"short int\000"
.LASF62:
	.ascii	"ANCA_Set\000"
.LASF12:
	.ascii	"sizetype\000"
.LASF83:
	.ascii	"ANCA_CLK\000"
.LASF54:
	.ascii	"CA_EN\000"
.LASF30:
	.ascii	"GPIO_OType_OD\000"
.LASF44:
	.ascii	"GPIO_OType\000"
.LASF26:
	.ascii	"GPIO_Mode_AF\000"
.LASF14:
	.ascii	"ENABLE\000"
.LASF89:
	.ascii	"swevent\000"
.LASF78:
	.ascii	"head\000"
.LASF87:
	.ascii	"./added/p24.c\000"
.LASF27:
	.ascii	"GPIO_Mode_AN\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF31:
	.ascii	"GPIOOType_TypeDef\000"
.LASF17:
	.ascii	"OTYPER\000"
.LASF85:
	.ascii	"GPIO_Init\000"
.LASF34:
	.ascii	"GPIO_Fast_Speed\000"
.LASF9:
	.ascii	"long long int\000"
.LASF88:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\AHHH\000"
.LASF25:
	.ascii	"GPIO_Mode_OUT\000"
.LASF19:
	.ascii	"PUPDR\000"
.LASF61:
	.ascii	"ANCAInit\000"
.LASF6:
	.ascii	"long int\000"
.LASF24:
	.ascii	"GPIO_Mode_IN\000"
.LASF21:
	.ascii	"BSRRH\000"
.LASF16:
	.ascii	"MODER\000"
.LASF20:
	.ascii	"BSRRL\000"
.LASF35:
	.ascii	"GPIO_High_Speed\000"
.LASF58:
	.ascii	"ANCA_TypeDef\000"
.LASF90:
	.ascii	"ANCA_INIT_All\000"
.LASF71:
	.ascii	"queue\000"
.LASF29:
	.ascii	"GPIO_OType_PP\000"
.LASF49:
	.ascii	"C_DIGIT2\000"
.LASF60:
	.ascii	"swevent_t\000"
.LASF79:
	.ascii	"tail\000"
.LASF51:
	.ascii	"F_DIGIT1\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF45:
	.ascii	"GPIO_PuPd\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF46:
	.ascii	"GPIO_InitTypeDef\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF86:
	.ascii	"GNU C 4.7.2\000"
.LASF56:
	.ascii	"AN_EN\000"
.LASF43:
	.ascii	"GPIO_Speed\000"
.LASF63:
	.ascii	"Anca\000"
.LASF48:
	.ascii	"B_DIGIT4\000"
.LASF77:
	.ascii	"fifo\000"
.LASF84:
	.ascii	"RCC_AHB1PeriphClockCmd\000"
.LASF37:
	.ascii	"GPIO_PuPd_NOPULL\000"
.LASF64:
	.ascii	"ANCA\000"
.LASF69:
	.ascii	"char\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF13:
	.ascii	"DISABLE\000"
.LASF5:
	.ascii	"int32_t\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF57:
	.ascii	"AN_CLK\000"
.LASF53:
	.ascii	"DP_G\000"
.LASF68:
	.ascii	"ANCA_Print_Ascii\000"
.LASF73:
	.ascii	"tmpsw\000"
.LASF47:
	.ascii	"A_COLON\000"
.LASF72:
	.ascii	"getswitch\000"
.LASF32:
	.ascii	"GPIO_Low_Speed\000"
.LASF33:
	.ascii	"GPIO_Medium_Speed\000"
.LASF18:
	.ascii	"OSPEEDR\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"GPIOSpeed_TypeDef\000"
.LASF39:
	.ascii	"GPIO_PuPd_DOWN\000"
.LASF76:
	.ascii	"ITM_RxBuffer\000"
.LASF81:
	.ascii	"ANCA_PORT\000"
.LASF65:
	.ascii	"GPIO_InitStructure\000"
.LASF82:
	.ascii	"ANCA_PIN\000"
.LASF52:
	.ascii	"G_DIGIT3\000"
.LASF50:
	.ascii	"D_ROT_ENC\000"
.LASF40:
	.ascii	"GPIOPuPd_TypeDef\000"
.LASF23:
	.ascii	"GPIO_TypeDef\000"
.LASF67:
	.ascii	"digit\000"
.LASF38:
	.ascii	"GPIO_PuPd_UP\000"
.LASF15:
	.ascii	"FunctionalState\000"
.LASF75:
	.ascii	"things\000"
.LASF66:
	.ascii	"ANCA_Print_Num\000"
.LASF22:
	.ascii	"LCKR\000"
.LASF59:
	.ascii	"msec\000"
.LASF70:
	.ascii	"dequeue\000"
.LASF42:
	.ascii	"GPIO_Mode\000"
.LASF55:
	.ascii	"CA_CLK\000"
	.ident	"GCC: (GNU) 4.7.2"
