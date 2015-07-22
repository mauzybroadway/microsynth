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
	.file	"stm32f4xx_tim.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TIM_TimeBaseInit,"ax",%progbits
	.align	2
	.global	TIM_TimeBaseInit
	.thumb
	.thumb_func
	.type	TIM_TimeBaseInit, %function
TIM_TimeBaseInit:
.LFB112:
	.file 1 "./added/stm32f4xx_tim.c"
	.loc 1 290 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 300 0
	movs	r2, #0
	.loc 1 290 0
	push	{r4, r5, r6}
.LCFI0:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 300 0
	mov	r4, #1024
	movt	r2, 16385
	.loc 1 298 0
	ldrh	r3, [r0, #0]
	.loc 1 300 0
	movt	r4, 16385
	cmp	r0, r2
	it	ne
	cmpne	r0, r4
	.loc 1 298 0
	uxth	r3, r3
.LVL1:
	.loc 1 300 0
	ite	ne
	movne	r2, #0
	moveq	r2, #1
	beq	.L2
	.loc 1 301 0
	mov	r4, #1024
	movt	r4, 16384
	cmp	r0, #1073741824
	it	ne
	cmpne	r0, r4
	bne	.L16
.L2:
	.loc 1 305 0
	movw	r5, #65423
	.loc 1 306 0
	ldrh	r4, [r1, #2]
	.loc 1 305 0
	ands	r5, r5, r3
.LVL2:
	.loc 1 306 0
	orr	r3, r5, r4
.LVL3:
.L3:
	.loc 1 309 0
	mov	r6, #5120
	mov	r5, #4096
	movt	r5, 16384
	movt	r6, 16384
	cmp	r0, r6
	it	ne
	cmpne	r0, r5
	.loc 1 313 0
	itttt	ne
	ldrhne	r5, [r1, #8]
	.loc 1 312 0
	movwne	r4, #64767
	andne	r4, r3, r4
.LVL4:
	.loc 1 313 0
	orrne	r3, r4, r5
.LVL5:
	.loc 1 319 0
	ldr	r5, [r1, #4]
	.loc 1 322 0
	ldrh	r4, [r1, #0]
	.loc 1 316 0
	strh	r3, [r0, #0]	@ movhi
	.loc 1 319 0
	str	r5, [r0, #44]
	.loc 1 322 0
	strh	r4, [r0, #40]	@ movhi
	.loc 1 324 0
	cbz	r2, .L5
	.loc 1 327 0
	ldrb	r3, [r1, #10]	@ zero_extendqisi2
.LVL6:
	strh	r3, [r0, #48]	@ movhi
.L5:
	.loc 1 332 0
	movs	r3, #1
	strh	r3, [r0, #20]	@ movhi
	.loc 1 333 0
	pop	{r4, r5, r6}
	bx	lr
.LVL7:
.L16:
	.loc 1 302 0
	mov	r5, #3072
	mov	r4, #2048
	movt	r5, 16384
	movt	r4, 16384
	cmp	r0, r4
	it	ne
	cmpne	r0, r5
	bne	.L3
	b	.L2
	.cfi_endproc
.LFE112:
	.size	TIM_TimeBaseInit, .-TIM_TimeBaseInit
	.section	.text.TIM_TimeBaseStructInit,"ax",%progbits
	.align	2
	.global	TIM_TimeBaseStructInit
	.thumb
	.thumb_func
	.type	TIM_TimeBaseStructInit, %function
TIM_TimeBaseStructInit:
.LFB113:
	.loc 1 342 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 345 0
	movs	r3, #0
	.loc 1 344 0
	mov	r1, #-1
	str	r1, [r0, #4]
	.loc 1 345 0
	strh	r3, [r0, #0]	@ movhi
	.loc 1 346 0
	strh	r3, [r0, #8]	@ movhi
	.loc 1 347 0
	strh	r3, [r0, #2]	@ movhi
	.loc 1 348 0
	strb	r3, [r0, #10]
	bx	lr
	.cfi_endproc
.LFE113:
	.size	TIM_TimeBaseStructInit, .-TIM_TimeBaseStructInit
	.section	.text.TIM_PrescalerConfig,"ax",%progbits
	.align	2
	.global	TIM_PrescalerConfig
	.thumb
	.thumb_func
	.type	TIM_PrescalerConfig, %function
TIM_PrescalerConfig:
.LFB114:
	.loc 1 362 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL9:
	.loc 1 367 0
	strh	r1, [r0, #40]	@ movhi
	.loc 1 369 0
	strh	r2, [r0, #20]	@ movhi
	bx	lr
	.cfi_endproc
.LFE114:
	.size	TIM_PrescalerConfig, .-TIM_PrescalerConfig
	.section	.text.TIM_Cmd,"ax",%progbits
	.align	2
	.global	TIM_Cmd
	.thumb
	.thumb_func
	.type	TIM_Cmd, %function
TIM_Cmd:
.LFB115:
	.loc 1 594 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL10:
	.loc 1 602 0
	ldrh	r3, [r0, #0]
	.loc 1 599 0
	cbnz	r1, .L22
	.loc 1 607 0
	bic	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0, #0]	@ movhi
	bx	lr
.L22:
	.loc 1 602 0
	uxth	r3, r3
	orr	r3, r3, #1
	strh	r3, [r0, #0]	@ movhi
	bx	lr
	.cfi_endproc
.LFE115:
	.size	TIM_Cmd, .-TIM_Cmd
	.section	.text.TIM_OC1Init,"ax",%progbits
	.align	2
	.global	TIM_OC1Init
	.thumb
	.thumb_func
	.type	TIM_OC1Init, %function
TIM_OC1Init:
.LFB116:
	.loc 1 675 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL11:
	push	{r4, r5, r6, r7, r8}
.LCFI1:
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 8, -4
	.loc 1 685 0
	ldrh	r4, [r0, #32]
	.loc 1 704 0
	ldrh	r5, [r1, #12]
	ldrh	r7, [r1, #2]
	.loc 1 699 0
	ldrh	ip, [r1, #0]
	.loc 1 685 0
	bic	r4, r4, #1
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	strh	r4, [r0, #32]	@ movhi
	.loc 1 688 0
	ldrh	r3, [r0, #32]
.LVL12:
	.loc 1 690 0
	ldrh	r4, [r0, #4]
	.loc 1 693 0
	ldrh	r2, [r0, #24]
	.loc 1 704 0
	orrs	r7, r7, r5
	.loc 1 702 0
	bic	r3, r3, #2
.LVL13:
	.loc 1 709 0
	movs	r5, #0
	.loc 1 697 0
	bic	r2, r2, #115
	.loc 1 709 0
	mov	r6, #1024
	.loc 1 697 0
	lsls	r2, r2, #16
	.loc 1 702 0
	lsls	r3, r3, #16
	.loc 1 709 0
	movt	r6, 16385
	movt	r5, 16385
	.loc 1 697 0
	lsrs	r2, r2, #16
	.loc 1 702 0
	lsrs	r3, r3, #16
	.loc 1 704 0
	uxth	r7, r7
	.loc 1 709 0
	cmp	r0, r5
	it	ne
	cmpne	r0, r6
	.loc 1 690 0
	uxth	r4, r4
.LVL14:
	.loc 1 699 0
	orr	r2, r2, ip
.LVL15:
	.loc 1 707 0
	orr	r3, r7, r3
.LVL16:
	.loc 1 709 0
	bne	.L24
	.loc 1 717 0
	movw	r5, #65527
	.loc 1 719 0
	ldrh	ip, [r1, #14]
	.loc 1 729 0
	ldrh	r8, [r1, #18]
	ldrh	r7, [r1, #16]
	.loc 1 724 0
	ldrh	r6, [r1, #4]
	.loc 1 717 0
	ands	r5, r5, r3
.LVL17:
	.loc 1 719 0
	orr	ip, r5, ip
.LVL18:
	.loc 1 721 0
	movw	r3, #65531
	.loc 1 727 0
	movw	r5, #64767
	.loc 1 729 0
	orr	r7, r8, r7
	.loc 1 727 0
	ands	r5, r5, r4
	.loc 1 721 0
	and	r3, ip, r3
.LVL19:
	.loc 1 729 0
	uxth	r4, r7
.LVL20:
	.loc 1 724 0
	orrs	r3, r3, r6
.LVL21:
	.loc 1 731 0
	orrs	r4, r4, r5
.LVL22:
.L24:
	.loc 1 740 0
	ldr	r1, [r1, #8]
.LVL23:
	.loc 1 734 0
	strh	r4, [r0, #4]	@ movhi
	.loc 1 737 0
	strh	r2, [r0, #24]	@ movhi
	.loc 1 740 0
	str	r1, [r0, #52]
	.loc 1 743 0
	strh	r3, [r0, #32]	@ movhi
	.loc 1 744 0
	pop	{r4, r5, r6, r7, r8}
	bx	lr
	.cfi_endproc
.LFE116:
	.size	TIM_OC1Init, .-TIM_OC1Init
	.section	.text.TIM_OC2Init,"ax",%progbits
	.align	2
	.global	TIM_OC2Init
	.thumb
	.thumb_func
	.type	TIM_OC2Init, %function
TIM_OC2Init:
.LFB117:
	.loc 1 756 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL24:
	push	{r4, r5, r6, r7, r8, r9}
.LCFI2:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 9, -4
	.loc 1 766 0
	ldrh	r4, [r0, #32]
	.loc 1 786 0
	ldrh	r5, [r1, #12]
	.loc 1 781 0
	ldrh	ip, [r1, #0]
	.loc 1 789 0
	ldrh	r7, [r1, #2]
	.loc 1 766 0
	bic	r4, r4, #16
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	strh	r4, [r0, #32]	@ movhi
	.loc 1 769 0
	ldrh	r2, [r0, #32]
.LVL25:
	.loc 1 771 0
	ldrh	r4, [r0, #4]
	.loc 1 774 0
	ldrh	r3, [r0, #24]
	.loc 1 784 0
	bic	r2, r2, #32
.LVL26:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	.loc 1 778 0
	bic	r3, r3, #29440
	lsls	r3, r3, #16
	.loc 1 786 0
	orr	r2, r2, r5, lsl #4
	.loc 1 791 0
	mov	r6, #1024
	movs	r5, #0
	.loc 1 778 0
	lsrs	r3, r3, #16
	.loc 1 791 0
	movt	r6, 16385
	movt	r5, 16385
	.loc 1 781 0
	orr	r3, r3, ip, lsl #8
	.loc 1 789 0
	orr	r2, r2, r7, lsl #4
	.loc 1 791 0
	cmp	r0, r5
	it	ne
	cmpne	r0, r6
	.loc 1 771 0
	uxth	r4, r4
.LVL27:
	.loc 1 781 0
	uxth	r3, r3
.LVL28:
	.loc 1 789 0
	uxth	r2, r2
.LVL29:
	.loc 1 791 0
	bne	.L29
	.loc 1 799 0
	movw	r6, #65407
	.loc 1 801 0
	ldrh	r9, [r1, #14]
	.loc 1 811 0
	ldrh	r8, [r1, #16]
	.loc 1 806 0
	ldrh	ip, [r1, #4]
	.loc 1 813 0
	ldrh	r7, [r1, #18]
	.loc 1 799 0
	ands	r6, r6, r2
.LVL30:
	.loc 1 809 0
	movw	r5, #62463
	ands	r5, r5, r4
	.loc 1 801 0
	orr	r6, r6, r9, lsl #4
.LVL31:
	.loc 1 803 0
	movw	r2, #65471
	ands	r2, r2, r6
.LVL32:
	.loc 1 811 0
	orr	r4, r5, r8, lsl #2
.LVL33:
	.loc 1 806 0
	orr	r2, r2, ip, lsl #4
.LVL34:
	.loc 1 813 0
	orr	r4, r4, r7, lsl #2
	.loc 1 806 0
	uxth	r2, r2
.LVL35:
	.loc 1 813 0
	uxth	r4, r4
.LVL36:
.L29:
	.loc 1 822 0
	ldr	r1, [r1, #8]
.LVL37:
	.loc 1 816 0
	strh	r4, [r0, #4]	@ movhi
	.loc 1 819 0
	strh	r3, [r0, #24]	@ movhi
	.loc 1 822 0
	str	r1, [r0, #56]
	.loc 1 825 0
	strh	r2, [r0, #32]	@ movhi
	.loc 1 826 0
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
	.cfi_endproc
.LFE117:
	.size	TIM_OC2Init, .-TIM_OC2Init
	.section	.text.TIM_OC3Init,"ax",%progbits
	.align	2
	.global	TIM_OC3Init
	.thumb
	.thumb_func
	.type	TIM_OC3Init, %function
TIM_OC3Init:
.LFB118:
	.loc 1 837 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL38:
	push	{r4, r5, r6, r7, r8, r9}
.LCFI3:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 9, -4
	.loc 1 847 0
	ldrh	r4, [r0, #32]
	.loc 1 866 0
	ldrh	r5, [r1, #12]
	.loc 1 869 0
	ldrh	ip, [r1, #2]
	.loc 1 861 0
	ldrh	r7, [r1, #0]
	.loc 1 847 0
	bic	r4, r4, #256
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	strh	r4, [r0, #32]	@ movhi
	.loc 1 850 0
	ldrh	r2, [r0, #32]
.LVL39:
	.loc 1 852 0
	ldrh	r4, [r0, #4]
	.loc 1 855 0
	ldrh	r3, [r0, #28]
	.loc 1 864 0
	bic	r2, r2, #512
.LVL40:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	.loc 1 866 0
	orr	r2, r2, r5, lsl #8
	.loc 1 859 0
	bic	r3, r3, #115
	.loc 1 871 0
	movs	r5, #0
	mov	r6, #1024
	.loc 1 859 0
	lsls	r3, r3, #16
	.loc 1 871 0
	movt	r6, 16385
	movt	r5, 16385
	.loc 1 859 0
	lsrs	r3, r3, #16
	.loc 1 869 0
	orr	r2, r2, ip, lsl #8
	.loc 1 871 0
	cmp	r0, r5
	it	ne
	cmpne	r0, r6
	.loc 1 852 0
	uxth	r4, r4
.LVL41:
	.loc 1 861 0
	orr	r3, r3, r7
.LVL42:
	.loc 1 869 0
	uxth	r2, r2
.LVL43:
	.loc 1 871 0
	bne	.L34
	.loc 1 879 0
	movw	r6, #63487
	.loc 1 881 0
	ldrh	r9, [r1, #14]
	.loc 1 891 0
	ldrh	r8, [r1, #16]
	.loc 1 886 0
	ldrh	ip, [r1, #4]
	.loc 1 893 0
	ldrh	r7, [r1, #18]
	.loc 1 879 0
	ands	r6, r6, r2
.LVL44:
	.loc 1 889 0
	movw	r5, #53247
	ands	r5, r5, r4
	.loc 1 881 0
	orr	r6, r6, r9, lsl #8
.LVL45:
	.loc 1 883 0
	movw	r2, #64511
	ands	r2, r2, r6
.LVL46:
	.loc 1 891 0
	orr	r4, r5, r8, lsl #4
.LVL47:
	.loc 1 886 0
	orr	r2, r2, ip, lsl #8
.LVL48:
	.loc 1 893 0
	orr	r4, r4, r7, lsl #4
	.loc 1 886 0
	uxth	r2, r2
.LVL49:
	.loc 1 893 0
	uxth	r4, r4
.LVL50:
.L34:
	.loc 1 902 0
	ldr	r1, [r1, #8]
.LVL51:
	.loc 1 896 0
	strh	r4, [r0, #4]	@ movhi
	.loc 1 899 0
	strh	r3, [r0, #28]	@ movhi
	.loc 1 902 0
	str	r1, [r0, #60]
	.loc 1 905 0
	strh	r2, [r0, #32]	@ movhi
	.loc 1 906 0
	pop	{r4, r5, r6, r7, r8, r9}
	bx	lr
	.cfi_endproc
.LFE118:
	.size	TIM_OC3Init, .-TIM_OC3Init
	.section	.text.TIM_OC4Init,"ax",%progbits
	.align	2
	.global	TIM_OC4Init
	.thumb
	.thumb_func
	.type	TIM_OC4Init, %function
TIM_OC4Init:
.LFB119:
	.loc 1 917 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL52:
	push	{r4, r5, r6, r7}
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 927 0
	ldrh	r4, [r0, #32]
	.loc 1 947 0
	ldrh	r5, [r1, #12]
	.loc 1 942 0
	ldrh	ip, [r1, #0]
	.loc 1 950 0
	ldrh	r7, [r1, #2]
	.loc 1 927 0
	bic	r4, r4, #4096
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	strh	r4, [r0, #32]	@ movhi
	.loc 1 930 0
	ldrh	r2, [r0, #32]
.LVL53:
	.loc 1 932 0
	ldrh	r4, [r0, #4]
	.loc 1 935 0
	ldrh	r3, [r0, #28]
	.loc 1 945 0
	bic	r2, r2, #8192
.LVL54:
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	.loc 1 947 0
	orr	r2, r2, r5, lsl #12
	.loc 1 939 0
	bic	r3, r3, #29440
	.loc 1 952 0
	movs	r5, #0
	mov	r6, #1024
	movt	r5, 16385
	movt	r6, 16385
	.loc 1 939 0
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	.loc 1 952 0
	cmp	r0, r5
	it	ne
	cmpne	r0, r6
	.loc 1 958 0
	it	eq
	ldrheq	r6, [r1, #16]
	.loc 1 967 0
	ldr	r1, [r1, #8]
.LVL55:
	.loc 1 932 0
	uxth	r4, r4
	.loc 1 956 0
	ittt	eq
	movweq	r5, #49151
	andeq	r5, r4, r5
	.loc 1 958 0
	orreq	r4, r5, r6, lsl #6
	.loc 1 942 0
	orr	r3, r3, ip, lsl #8
.LVL56:
	.loc 1 950 0
	orr	r2, r2, r7, lsl #12
	.loc 1 942 0
	uxth	r3, r3
.LVL57:
	.loc 1 950 0
	uxth	r2, r2
.LVL58:
	.loc 1 958 0
	it	eq
	uxtheq	r4, r4
.LVL59:
	.loc 1 961 0
	strh	r4, [r0, #4]	@ movhi
	.loc 1 964 0
	strh	r3, [r0, #28]	@ movhi
	.loc 1 967 0
	str	r1, [r0, #64]
	.loc 1 970 0
	strh	r2, [r0, #32]	@ movhi
	.loc 1 971 0
	pop	{r4, r5, r6, r7}
	bx	lr
	.cfi_endproc
.LFE119:
	.size	TIM_OC4Init, .-TIM_OC4Init
	.section	.text.TIM_OCStructInit,"ax",%progbits
	.align	2
	.global	TIM_OCStructInit
	.thumb
	.thumb_func
	.type	TIM_OCStructInit, %function
TIM_OCStructInit:
.LFB120:
	.loc 1 980 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL60:
	.loc 1 982 0
	movs	r3, #0
	strh	r3, [r0, #0]	@ movhi
	.loc 1 983 0
	strh	r3, [r0, #2]	@ movhi
	.loc 1 984 0
	strh	r3, [r0, #4]	@ movhi
	.loc 1 985 0
	str	r3, [r0, #8]
	.loc 1 986 0
	strh	r3, [r0, #12]	@ movhi
	.loc 1 987 0
	strh	r3, [r0, #14]	@ movhi
	.loc 1 988 0
	strh	r3, [r0, #16]	@ movhi
	.loc 1 989 0
	strh	r3, [r0, #18]	@ movhi
	bx	lr
	.cfi_endproc
.LFE120:
	.size	TIM_OCStructInit, .-TIM_OCStructInit
	.section	.text.TIM_OC1PreloadConfig,"ax",%progbits
	.align	2
	.global	TIM_OC1PreloadConfig
	.thumb
	.thumb_func
	.type	TIM_OC1PreloadConfig, %function
TIM_OC1PreloadConfig:
.LFB121:
	.loc 1 1240 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL61:
	.loc 1 1247 0
	ldrh	r3, [r0, #24]
.LVL62:
	.loc 1 1250 0
	bic	r3, r3, #8
.LVL63:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LVL64:
	.loc 1 1253 0
	orrs	r1, r1, r3
.LVL65:
	.loc 1 1256 0
	strh	r1, [r0, #24]	@ movhi
	bx	lr
	.cfi_endproc
.LFE121:
	.size	TIM_OC1PreloadConfig, .-TIM_OC1PreloadConfig
	.section	.text.TIM_OC2PreloadConfig,"ax",%progbits
	.align	2
	.global	TIM_OC2PreloadConfig
	.thumb
	.thumb_func
	.type	TIM_OC2PreloadConfig, %function
TIM_OC2PreloadConfig:
.LFB122:
	.loc 1 1270 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL66:
	.loc 1 1277 0
	ldrh	r3, [r0, #24]
.LVL67:
	.loc 1 1280 0
	bic	r3, r3, #2048
.LVL68:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LVL69:
	.loc 1 1283 0
	orr	r1, r3, r1, lsl #8
.LVL70:
	uxth	r3, r1
.LVL71:
	.loc 1 1286 0
	strh	r3, [r0, #24]	@ movhi
	bx	lr
	.cfi_endproc
.LFE122:
	.size	TIM_OC2PreloadConfig, .-TIM_OC2PreloadConfig
	.section	.text.TIM_OC3PreloadConfig,"ax",%progbits
	.align	2
	.global	TIM_OC3PreloadConfig
	.thumb
	.thumb_func
	.type	TIM_OC3PreloadConfig, %function
TIM_OC3PreloadConfig:
.LFB123:
	.loc 1 1299 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL72:
	.loc 1 1306 0
	ldrh	r3, [r0, #28]
.LVL73:
	.loc 1 1309 0
	bic	r3, r3, #8
.LVL74:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LVL75:
	.loc 1 1312 0
	orrs	r1, r1, r3
.LVL76:
	.loc 1 1315 0
	strh	r1, [r0, #28]	@ movhi
	bx	lr
	.cfi_endproc
.LFE123:
	.size	TIM_OC3PreloadConfig, .-TIM_OC3PreloadConfig
	.section	.text.TIM_OC4PreloadConfig,"ax",%progbits
	.align	2
	.global	TIM_OC4PreloadConfig
	.thumb
	.thumb_func
	.type	TIM_OC4PreloadConfig, %function
TIM_OC4PreloadConfig:
.LFB124:
	.loc 1 1328 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL77:
	.loc 1 1335 0
	ldrh	r3, [r0, #28]
.LVL78:
	.loc 1 1338 0
	bic	r3, r3, #2048
.LVL79:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
.LVL80:
	.loc 1 1341 0
	orr	r1, r3, r1, lsl #8
.LVL81:
	uxth	r3, r1
.LVL82:
	.loc 1 1344 0
	strh	r3, [r0, #28]	@ movhi
	bx	lr
	.cfi_endproc
.LFE124:
	.size	TIM_OC4PreloadConfig, .-TIM_OC4PreloadConfig
	.section	.text.TIM_ITConfig,"ax",%progbits
	.align	2
	.global	TIM_ITConfig
	.thumb
	.thumb_func
	.type	TIM_ITConfig, %function
TIM_ITConfig:
.LFB125:
	.loc 1 2374 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL83:
	.loc 1 2383 0
	ldrh	r3, [r0, #12]
	uxth	r3, r3
	.loc 1 2380 0
	cbnz	r2, .L51
	.loc 1 2388 0
	bic	r1, r3, r1
.LVL84:
	strh	r1, [r0, #12]	@ movhi
	bx	lr
.LVL85:
.L51:
	.loc 1 2383 0
	orrs	r1, r1, r3
.LVL86:
	strh	r1, [r0, #12]	@ movhi
	bx	lr
	.cfi_endproc
.LFE125:
	.size	TIM_ITConfig, .-TIM_ITConfig
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.file 3 "./added/stm32f4xx.h"
	.file 4 "./added/stm32f4xx_tim.h"
	.file 5 "./added/core_cm4.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x827
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.4byte	.LASF88
	.4byte	.LASF89
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
	.uleb128 0x5
	.4byte	0x49
	.uleb128 0x5
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.2byte	0x200
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF14
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF15
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x3
	.2byte	0x200
	.4byte	0xb1
	.uleb128 0x9
	.byte	0x54
	.byte	0x3
	.2byte	0x501
	.4byte	0x2f7
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x3
	.2byte	0x503
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x504
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x3
	.2byte	0x505
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x3
	.2byte	0x506
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.2byte	0x507
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x508
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x509
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.2byte	0x50a
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x3
	.2byte	0x50b
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.2byte	0x50c
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.ascii	"EGR\000"
	.byte	0x3
	.2byte	0x50d
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x3
	.2byte	0x50e
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.2byte	0x50f
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.2byte	0x510
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x3
	.2byte	0x511
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.2byte	0x512
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x3
	.2byte	0x513
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x3
	.2byte	0x514
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.ascii	"CNT\000"
	.byte	0x3
	.2byte	0x515
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.ascii	"PSC\000"
	.byte	0x3
	.2byte	0x516
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x3
	.2byte	0x517
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xa
	.ascii	"ARR\000"
	.byte	0x3
	.2byte	0x518
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.ascii	"RCR\000"
	.byte	0x3
	.2byte	0x519
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x3
	.2byte	0x51a
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.2byte	0x51b
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x3
	.2byte	0x51c
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x3
	.2byte	0x51d
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x3
	.2byte	0x51e
	.4byte	0xa2
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x3
	.2byte	0x51f
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x3
	.2byte	0x520
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x46
	.uleb128 0xa
	.ascii	"DCR\000"
	.byte	0x3
	.2byte	0x521
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x3
	.2byte	0x522
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x3
	.2byte	0x523
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x3
	.2byte	0x524
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0xa
	.ascii	"OR\000"
	.byte	0x3
	.2byte	0x525
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x3
	.2byte	0x526
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.byte	0
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x3
	.2byte	0x527
	.4byte	0xd3
	.uleb128 0xc
	.byte	0xc
	.byte	0x4
	.byte	0x37
	.4byte	0x352
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x4
	.byte	0x39
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x4
	.byte	0x3c
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x4
	.byte	0x3f
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x4
	.byte	0x43
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x4
	.byte	0x46
	.4byte	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.byte	0x4e
	.4byte	0x303
	.uleb128 0xc
	.byte	0x14
	.byte	0x4
	.byte	0x54
	.4byte	0x3d6
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x4
	.byte	0x56
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x4
	.byte	0x59
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x4
	.byte	0x5c
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x4
	.byte	0x60
	.4byte	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x4
	.byte	0x63
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x4
	.byte	0x66
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x4
	.byte	0x6a
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x4
	.byte	0x6e
	.4byte	0x49
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x4
	.byte	0x71
	.4byte	0x35d
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x121
	.byte	0x1
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x429
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x121
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x121
	.4byte	0x42f
	.byte	0x1
	.byte	0x51
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x123
	.4byte	0x49
	.4byte	.LLST1
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2f7
	.uleb128 0x11
	.byte	0x4
	.4byte	0x352
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x155
	.byte	0x1
	.4byte	.LFB113
	.4byte	.LFE113
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x45e
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x155
	.4byte	0x42f
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x169
	.byte	0x1
	.4byte	.LFB114
	.4byte	.LFE114
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4a3
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x169
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x169
	.4byte	0x49
	.byte	0x1
	.byte	0x51
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x169
	.4byte	0x49
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x251
	.byte	0x1
	.4byte	.LFB115
	.4byte	.LFE115
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4da
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x251
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x251
	.4byte	0xc7
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x2a2
	.byte	0x1
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x544
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x544
	.4byte	.LLST3
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x49
	.4byte	.LLST4
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x49
	.4byte	.LLST5
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x49
	.4byte	.LLST6
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x3d6
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x2f3
	.byte	0x1
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x5b4
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x2f3
	.4byte	0x544
	.4byte	.LLST8
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x49
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x49
	.4byte	.LLST10
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2f5
	.4byte	0x49
	.4byte	.LLST11
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x344
	.byte	0x1
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x61e
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x344
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x344
	.4byte	0x544
	.4byte	.LLST13
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x346
	.4byte	0x49
	.4byte	.LLST14
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x346
	.4byte	0x49
	.4byte	.LLST15
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x346
	.4byte	0x49
	.4byte	.LLST16
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x394
	.byte	0x1
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LLST17
	.byte	0x1
	.4byte	0x688
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x394
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x394
	.4byte	0x544
	.4byte	.LLST18
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x396
	.4byte	0x49
	.4byte	.LLST19
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x396
	.4byte	0x49
	.4byte	.LLST20
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x396
	.4byte	0x49
	.4byte	.LLST21
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3d3
	.byte	0x1
	.4byte	.LFB120
	.4byte	.LFE120
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6b1
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x3d3
	.4byte	0x544
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x4d7
	.byte	0x1
	.4byte	.LFB121
	.4byte	.LFE121
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6fa
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x4d7
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x4d7
	.4byte	0x49
	.4byte	.LLST22
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x4d9
	.4byte	0x49
	.4byte	.LLST23
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x4f5
	.byte	0x1
	.4byte	.LFB122
	.4byte	.LFE122
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x743
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x49
	.4byte	.LLST24
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x4f7
	.4byte	0x49
	.4byte	.LLST25
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x512
	.byte	0x1
	.4byte	.LFB123
	.4byte	.LFE123
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x78c
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x512
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x512
	.4byte	0x49
	.4byte	.LLST26
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x514
	.4byte	0x49
	.4byte	.LLST27
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x52f
	.byte	0x1
	.4byte	.LFB124
	.4byte	.LFE124
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x7d5
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x52f
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x52f
	.4byte	0x49
	.4byte	.LLST28
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x531
	.4byte	0x49
	.4byte	.LLST29
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x945
	.byte	0x1
	.4byte	.LFB125
	.4byte	.LFE125
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x81c
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x945
	.4byte	0x429
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x945
	.4byte	0x49
	.4byte	.LLST30
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x945
	.4byte	0xc7
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x6a7
	.4byte	0xac
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.4byte	.LFB112
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE112
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LFE112
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB116
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE116
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL23
	.4byte	.LFE116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x8
	.byte	0x71
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x71
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE116
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB117
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE117
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37
	.4byte	.LFE117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0xffbf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE117
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB118
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE118
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51
	.4byte	.LFE118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE118
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x7
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.2byte	0xfbff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE118
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE118
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB119
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE119
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55
	.4byte	.LFE119
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LFE119
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL61
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65
	.4byte	.LFE121
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65
	.4byte	.LFE121
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL66
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70
	.4byte	.LFE122
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71
	.4byte	.LFE122
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76
	.4byte	.LFE123
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76
	.4byte	.LFE123
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL81
	.4byte	.LFE124
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82
	.4byte	.LFE124
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL86
	.4byte	.LFE125
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x84
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
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
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
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF59:
	.ascii	"TIMx\000"
.LASF29:
	.ascii	"CCER\000"
.LASF84:
	.ascii	"TIM_OC4PreloadConfig\000"
.LASF68:
	.ascii	"TIM_OC1Init\000"
.LASF40:
	.ascii	"DMAR\000"
.LASF75:
	.ascii	"TIM_OC3Init\000"
.LASF25:
	.ascii	"CCMR1\000"
.LASF71:
	.ascii	"tmpccmrx\000"
.LASF72:
	.ascii	"tmpccer\000"
.LASF2:
	.ascii	"short int\000"
.LASF76:
	.ascii	"TIM_OC4Init\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF79:
	.ascii	"TIM_OCPreload\000"
.LASF44:
	.ascii	"TIM_Prescaler\000"
.LASF57:
	.ascii	"TIM_OCNIdleState\000"
.LASF82:
	.ascii	"TIM_OC3PreloadConfig\000"
.LASF47:
	.ascii	"TIM_ClockDivision\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF67:
	.ascii	"NewState\000"
.LASF50:
	.ascii	"TIM_OCMode\000"
.LASF10:
	.ascii	"long long int\000"
.LASF89:
	.ascii	"C:\\\\Documents and Settings\\\\mauzy\\\\My Documen"
	.ascii	"ts\\\\ENEE440\\\\Project\\\\wetzel_440S15_project\000"
.LASF52:
	.ascii	"TIM_OutputNState\000"
.LASF33:
	.ascii	"CCR1\000"
.LASF34:
	.ascii	"CCR2\000"
.LASF35:
	.ascii	"CCR3\000"
.LASF36:
	.ascii	"CCR4\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF74:
	.ascii	"TIM_OC2Init\000"
.LASF38:
	.ascii	"RESERVED11\000"
.LASF27:
	.ascii	"CCMR2\000"
.LASF65:
	.ascii	"TIM_PSCReloadMode\000"
.LASF70:
	.ascii	"tmpcr1\000"
.LASF73:
	.ascii	"tmpcr2\000"
.LASF64:
	.ascii	"Prescaler\000"
.LASF43:
	.ascii	"TIM_TypeDef\000"
.LASF78:
	.ascii	"TIM_OC1PreloadConfig\000"
.LASF19:
	.ascii	"SMCR\000"
.LASF60:
	.ascii	"TIM_TimeBaseInitStruct\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"RESERVED10\000"
.LASF63:
	.ascii	"TIM_PrescalerConfig\000"
.LASF39:
	.ascii	"RESERVED12\000"
.LASF41:
	.ascii	"RESERVED13\000"
.LASF42:
	.ascii	"RESERVED14\000"
.LASF69:
	.ascii	"TIM_OCInitStruct\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF58:
	.ascii	"TIM_OCInitTypeDef\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF49:
	.ascii	"TIM_TimeBaseInitTypeDef\000"
.LASF87:
	.ascii	"GNU C 4.7.2\000"
.LASF37:
	.ascii	"BDTR\000"
.LASF21:
	.ascii	"DIER\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"TIM_IT\000"
.LASF7:
	.ascii	"long int\000"
.LASF14:
	.ascii	"DISABLE\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF85:
	.ascii	"TIM_ITConfig\000"
.LASF17:
	.ascii	"RESERVED0\000"
.LASF18:
	.ascii	"RESERVED1\000"
.LASF20:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"RESERVED3\000"
.LASF23:
	.ascii	"RESERVED4\000"
.LASF24:
	.ascii	"RESERVED5\000"
.LASF26:
	.ascii	"RESERVED6\000"
.LASF28:
	.ascii	"RESERVED7\000"
.LASF30:
	.ascii	"RESERVED8\000"
.LASF31:
	.ascii	"RESERVED9\000"
.LASF16:
	.ascii	"FunctionalState\000"
.LASF48:
	.ascii	"TIM_RepetitionCounter\000"
.LASF80:
	.ascii	"tmpccmr1\000"
.LASF83:
	.ascii	"tmpccmr2\000"
.LASF53:
	.ascii	"TIM_Pulse\000"
.LASF88:
	.ascii	"./added/stm32f4xx_tim.c\000"
.LASF55:
	.ascii	"TIM_OCNPolarity\000"
.LASF51:
	.ascii	"TIM_OutputState\000"
.LASF46:
	.ascii	"TIM_Period\000"
.LASF54:
	.ascii	"TIM_OCPolarity\000"
.LASF45:
	.ascii	"TIM_CounterMode\000"
.LASF90:
	.ascii	"ITM_RxBuffer\000"
.LASF81:
	.ascii	"TIM_OC2PreloadConfig\000"
.LASF62:
	.ascii	"TIM_TimeBaseStructInit\000"
.LASF66:
	.ascii	"TIM_Cmd\000"
.LASF56:
	.ascii	"TIM_OCIdleState\000"
.LASF61:
	.ascii	"TIM_TimeBaseInit\000"
.LASF15:
	.ascii	"ENABLE\000"
.LASF77:
	.ascii	"TIM_OCStructInit\000"
	.ident	"GCC: (GNU) 4.7.2"
