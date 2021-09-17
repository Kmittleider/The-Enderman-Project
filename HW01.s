	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"HW01.c"
	.text
	.align	2
	.global	waitForVBlank
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r3, [r3]
.L2:
	ldrh	r2, [r3]
	cmp	r2, #159
	bhi	.L2
.L3:
	ldrh	r2, [r3]
	cmp	r2, #159
	bls	.L3
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3, #4]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r2, #0
	ldrh	ip, [sp, #8]
	ble	.L13
	ldr	lr, .L21
	add	r2, r1, r3
	rsb	r2, r2, r2, lsl #4
	ldr	r1, [lr, #4]
	add	r2, r0, r2, lsl #4
	sub	lr, r3, r3, lsl #4
	add	r4, r4, r0
	add	r1, r1, r2, lsl #1
	lsl	lr, lr, #5
.L15:
	cmp	r3, #0
	addgt	r2, r1, lr
	ble	.L18
.L16:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L16
.L18:
	add	r0, r0, #1
	cmp	r0, r4
	add	r1, r1, #2
	bne	.L15
.L13:
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	upClose
	.syntax unified
	.arm
	.fpu softvfp
	.type	upClose, %function
upClose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L91
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, [r3, #4]
	ldr	ip, .L91+4
	add	r1, r2, #70656
	ldr	r0, .L91+8
	add	r1, r1, #166
	add	ip, r2, ip
.L24:
	sub	r3, r1, #23808
	sub	r3, r3, #192
.L25:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L25
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L24
	add	lr, r2, #61696
	ldr	r0, .L91+12
	add	r1, lr, #6
	add	ip, lr, #20
.L28:
	sub	r3, r1, #3360
.L27:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L27
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L28
	ldr	ip, .L91+16
	add	r0, lr, #18
	add	r1, lr, #32
.L29:
	sub	r3, r0, #3360
.L30:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L30
	add	r0, r3, #2
	cmp	r0, r1
	bne	.L29
	ldr	r0, .L91+12
	add	ip, lr, #46
.L33:
	sub	r3, r1, #3360
.L32:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L32
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L33
	ldr	ip, .L91+12
	add	r0, lr, #72
	add	r1, lr, #86
.L34:
	sub	r3, r0, #3360
.L35:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L35
	add	r0, r0, #2
	cmp	r0, r1
	bne	.L34
	ldr	ip, .L91+16
	add	r0, lr, #100
.L38:
	sub	r3, r1, #3360
.L37:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L37
	add	r1, r1, #2
	cmp	r0, r1
	bne	.L38
	ldr	r1, .L91+12
	add	lr, lr, #114
.L39:
	sub	r3, r0, #3360
.L40:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L40
	add	r0, r3, #2
	cmp	r0, lr
	bne	.L39
	ldr	r1, .L91+20
	ldr	ip, .L91+24
	ldr	r0, .L91+8
	add	r1, r2, r1
	add	ip, r2, ip
.L43:
	sub	r3, r1, #5760
.L42:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L42
	add	r1, r3, #2
	cmp	ip, r1
	bne	.L43
	mov	ip, #120
	add	r1, r2, #53504
	ldr	r0, .L91+28
	add	r1, r1, #16
.L44:
	sub	r3, r1, #4288
	sub	r3, r3, #32
.L45:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L45
	add	ip, ip, #1
	cmp	ip, #123
	add	r1, r3, #2
	bne	.L44
	ldr	r3, .L91+16
	add	r1, r2, #49152
	add	r0, r1, #528
	strh	r3, [r0, #2]	@ movhi
	add	ip, r1, #1008
	add	r0, r2, #50432
	add	r7, r1, #1488
	add	r6, r1, #1968
	add	r5, r1, #2448
	add	r4, r1, #2928
	add	lr, r1, #3408
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	mov	r3, r0
	ldr	ip, .L91+28
	add	r0, r0, #202
	add	r3, r3, #218
.L47:
	strh	ip, [r0]	@ movhi
	add	r4, r0, #480
	add	lr, r0, #960
	add	r0, r0, #2
	cmp	r0, r3
	strh	ip, [r4]	@ movhi
	strh	ip, [lr]	@ movhi
	bne	.L47
	ldr	ip, .L91+16
	add	lr, r1, #1952
	strh	ip, [lr, #12]	@ movhi
	add	r0, r1, #1968
	strh	ip, [lr, #14]	@ movhi
	add	r3, r2, #60672
	ldr	lr, .L91+28
	strh	ip, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	add	r0, r3, #6
	add	r3, r3, #26
.L48:
	strh	lr, [r0]	@ movhi
	add	r4, r0, #480
	add	ip, r0, #960
	add	r0, r0, #2
	cmp	r0, r3
	strh	lr, [r4]	@ movhi
	strh	lr, [ip]	@ movhi
	bne	.L48
	add	r0, r2, #60928
	ldr	ip, .L91+12
	add	r3, r0, #232
	add	r0, r0, #248
.L49:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L49
	mov	lr, #103
	add	r0, r2, #62464
	ldr	ip, .L91+28
	add	r0, r0, #142
.L50:
	sub	r3, r0, #3360
.L51:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L51
	add	lr, lr, #1
	cmp	lr, #106
	add	r0, r0, #2
	bne	.L50
	ldr	r4, .L91+12
	add	r3, r2, #57344
	add	r5, r3, #2864
	add	r6, r3, #2384
	strh	r4, [r6]	@ movhi
	strh	r4, [r5]	@ movhi
	mov	r5, #202
	add	ip, r3, #3344
	add	lr, r2, #61440
	add	r3, r3, #3824
	strh	r4, [ip]	@ movhi
	add	r0, r2, #55040
	strh	r4, [r3]	@ movhi
	ldr	ip, .L91+28
	strh	r4, [lr, #208]	@ movhi
	add	r0, r0, #84
.L53:
	sub	r3, r0, #4288
	sub	r3, r3, #32
.L54:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r0, r3
	bne	.L54
	add	r5, r5, #1
	cmp	r5, #205
	add	r0, r0, #2
	bne	.L53
	ldr	r3, .L91+12
	add	r0, r2, #53248
	add	r6, r1, #2608
	add	r8, r0, #436
	add	ip, r0, #916
	add	r9, r1, #2128
	add	r0, r2, #51712
	add	r7, r1, #3088
	add	r5, r1, #3568
	add	r4, r1, #4048
	strh	r3, [r9, #6]	@ movhi
	strh	r3, [r6, #6]	@ movhi
	strh	r3, [r7, #6]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	strh	r3, [r8, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	mov	r3, r0
	ldr	r6, .L91+28
	add	r0, r0, #46
	add	r3, r3, #62
.L56:
	strh	r6, [r0]	@ movhi
	add	r4, r0, #480
	add	ip, r0, #960
	add	r0, r0, #2
	cmp	r0, r3
	strh	r6, [r4]	@ movhi
	strh	r6, [ip]	@ movhi
	bne	.L56
	mov	r4, #197
	ldr	r3, .L91+12
	add	r1, r1, #3088
	strh	r3, [r1]	@ movhi
	add	r0, r2, #64512
	strh	r3, [r1, #2]	@ movhi
	ldr	ip, .L91+28
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	add	r0, r0, #202
.L57:
	sub	r3, r0, #3360
.L58:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r0
	bne	.L58
	add	r4, r4, #1
	cmp	r4, #200
	add	r0, r3, #2
	bne	.L57
	ldr	r3, .L91+16
	add	r1, lr, #396
	add	r0, lr, #876
	strh	r3, [r1]	@ movhi
	add	r5, lr, #1344
	strh	r3, [r0]	@ movhi
	add	r4, lr, #1824
	add	r1, r2, #62208
	add	lr, lr, #2784
	add	ip, r2, #63744
	ldr	r0, .L91+28
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [lr, #12]	@ movhi
	add	r3, r1, #100
	add	r1, r1, #114
.L60:
	strh	r0, [r3]	@ movhi
	add	r4, r3, #480
	add	lr, r3, #960
	add	ip, r3, #1440
	add	r3, r3, #2
	cmp	r1, r3
	strh	r0, [r4]	@ movhi
	strh	r0, [lr]	@ movhi
	strh	r0, [ip]	@ movhi
	bne	.L60
	add	ip, r2, #62720
	ldr	r1, .L91+16
	add	r3, ip, #68
	add	ip, ip, #82
.L61:
	strh	r1, [r3]	@ movhi
	add	r0, r3, #480
	add	r3, r3, #2
	cmp	ip, r3
	strh	r1, [r0]	@ movhi
	bne	.L61
	ldr	r3, .L91+32
	add	r4, r2, #69632
	ldr	r1, .L91+28
	add	r3, r2, r3
	add	lr, r4, #396
.L62:
	strh	r1, [r3]	@ movhi
	add	ip, r3, #480
	add	r0, r3, #960
	add	r3, r3, #2
	cmp	r3, lr
	strh	r1, [ip]	@ movhi
	strh	r1, [r0]	@ movhi
	bne	.L62
	mov	r5, #210
	ldr	r3, .L91+12
	add	r0, r4, #864
	add	lr, r4, #868
	add	ip, r4, #872
	strh	r3, [r0]	@ movhi
	add	r1, r2, #71680
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [lr]	@ movhi
	ldr	r0, .L91+28
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	add	r1, r1, #740
.L63:
	sub	r3, r1, #3840
.L64:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L64
	add	r5, r5, #1
	cmp	r5, #214
	add	r1, r3, #2
	bne	.L63
	add	r3, r2, #65536
	ldr	r2, .L91+12
	add	ip, r3, #3520
	add	r1, r4, #388
	add	lr, r4, #868
	add	r3, r3, #4000
	strh	r2, [ip, #6]	@ movhi
	add	r0, r4, #1344
	strh	r2, [r3, #6]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	add	r1, r4, #1824
	add	lr, r4, #392
	add	r4, r4, #872
	strh	r2, [r0, #6]	@ movhi
	strh	r2, [r1, #6]	@ movhi
	strh	r2, [ip, #8]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [lr]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	strh	r2, [r1, #8]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
	.word	.LANCHOR0
	.word	70930
	.word	5285
	.word	31775
	.word	20788
	.word	76550
	.word	76726
	.word	22735
	.word	70014
	.size	upClose, .-upClose
	.align	2
	.global	topLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	topLeft, %function
topLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L147
	ldr	r0, [r3, #4]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r1, r0, #9088
	add	r3, r0, #9152
	ldr	lr, .L147+4
	add	ip, r1, #60
	add	r3, r3, #24
.L94:
	sub	r2, ip, #6208
	sub	r2, r2, #32
.L95:
	strh	lr, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, ip
	bne	.L95
	add	ip, r2, #2
	cmp	ip, r3
	bne	.L94
	ldr	r2, .L147+8
	add	ip, r0, #4096
	add	lr, ip, #1680
	add	r4, ip, #2160
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r4, #12]	@ movhi
	strh	r2, [lr, #14]	@ movhi
	add	lr, r0, #6272
	strh	r2, [r4, #14]	@ movhi
	add	r5, ip, #1696
	add	r4, ip, #2192
	add	r7, ip, #1712
	mov	ip, lr
	ldr	r6, .L147+12
	strh	r6, [r5]	@ movhi
	strh	r6, [lr]	@ movhi
	strh	r6, [r5, #2]	@ movhi
	strh	r6, [lr, #2]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r2, [lr, #4]	@ movhi
	strh	r2, [r5, #6]	@ movhi
	strh	r2, [lr, #6]	@ movhi
	strh	r2, [r5, #12]	@ movhi
	strh	r2, [lr, #12]	@ movhi
	strh	r2, [r5, #14]	@ movhi
	add	lr, r0, #19968
	strh	r2, [ip, #14]	@ movhi
	add	r5, r0, #20224
	strh	r6, [r7]	@ movhi
	strh	r6, [r4]	@ movhi
	strh	r6, [r7, #2]	@ movhi
	strh	r6, [r4, #2]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	strh	r2, [r4, #6]	@ movhi
	ldr	r4, .L147+4
	add	r5, r5, #4
	add	ip, lr, #208
.L97:
	sub	r2, ip, #11008
	sub	r2, r2, #32
.L98:
	strh	r4, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, ip
	bne	.L98
	add	ip, r2, #2
	cmp	r5, ip
	bne	.L97
	mov	ip, #0
	add	r2, r1, #58
	add	r1, lr, #218
.L100:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L100
	add	r2, r0, #30976
	ldr	ip, .L147+4
	add	r1, r2, #240
	add	r4, r2, #250
.L101:
	sub	r2, r1, #11008
	sub	r2, r2, #32
.L102:
	strh	ip, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L102
	add	r1, r2, #2
	cmp	r4, r1
	bne	.L101
	mov	r1, #0
	add	r2, lr, #248
.L104:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L104
	add	r3, r0, #31232
	ldr	r1, .L147+4
	add	r2, r3, #26
	add	ip, r3, #36
.L107:
	sub	r3, r2, #11008
	sub	r3, r3, #32
.L106:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L106
	add	r2, r2, #2
	cmp	r2, ip
	bne	.L107
	add	ip, r0, #40704
	ldr	r1, .L147+4
	add	r2, ip, #124
	add	lr, ip, #134
.L108:
	sub	r3, r2, #20480
	sub	r3, r3, #160
.L109:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L109
	add	r2, r3, #2
	cmp	lr, r2
	bne	.L108
	ldr	r1, .L147+4
	add	r2, ip, #142
	add	ip, ip, #152
.L112:
	sub	r3, r2, #20480
	sub	r3, r3, #160
.L111:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L111
	add	r2, r2, #2
	cmp	ip, r2
	bne	.L112
	add	lr, r0, #10624
	ldr	r2, .L147+16
	add	r3, lr, #12
	add	lr, lr, #26
.L113:
	strh	r2, [r3]	@ movhi
	add	ip, r3, #480
	add	r1, r3, #960
	add	r3, r3, #2
	cmp	r3, lr
	strh	r2, [ip]	@ movhi
	strh	r2, [r1]	@ movhi
	bne	.L113
	mov	r4, #41
	ldr	r3, .L147+8
	add	ip, r0, #8192
	add	lr, ip, #2928
	add	r1, ip, #2912
	strh	r3, [r1, #14]	@ movhi
	add	r2, r0, #12544
	strh	r3, [lr]	@ movhi
	ldr	r1, .L147+16
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	strh	r3, [lr, #6]	@ movhi
	add	r2, r2, #18
.L114:
	sub	r3, r2, #2880
.L115:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L115
	add	r4, r4, #1
	cmp	r4, #44
	add	r2, r2, #2
	bne	.L114
	ldr	r3, .L147+8
	add	lr, ip, #2448
	add	r4, ip, #1968
	strh	r3, [r4, #4]	@ movhi
	strh	r3, [lr, #4]	@ movhi
	mov	lr, #45
	add	r1, ip, #2928
	add	ip, ip, #3408
	strh	r3, [r1, #4]	@ movhi
	add	r2, r0, #24320
	ldr	r1, .L147+16
	strh	r3, [ip, #4]	@ movhi
	add	r2, r2, #250
.L117:
	sub	r3, r2, #3840
.L118:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L118
	add	lr, lr, #1
	cmp	lr, #48
	add	r2, r2, #2
	bne	.L117
	ldr	ip, .L147+12
	add	r2, r0, #20480
	add	r1, r2, #732
	add	r3, r2, #1200
	strh	ip, [r1]	@ movhi
	add	r6, r2, #1680
	strh	ip, [r3, #12]	@ movhi
	add	r1, r0, #22528
	add	r5, r2, #2160
	add	r4, r2, #2640
	add	lr, r2, #3120
	ldr	r3, .L147+16
	strh	ip, [r6, #12]	@ movhi
	strh	ip, [r5, #12]	@ movhi
	strh	ip, [r4, #12]	@ movhi
	strh	ip, [lr, #12]	@ movhi
	add	ip, r1, #118
	add	r1, r1, #130
.L120:
	strh	r3, [ip]	@ movhi
	add	r4, ip, #480
	add	lr, ip, #960
	add	ip, ip, #2
	cmp	ip, r1
	strh	r3, [r4]	@ movhi
	strh	r3, [lr]	@ movhi
	bne	.L120
	add	r1, r0, #36864
	ldr	r4, .L147+8
	ldr	r5, .L147+12
	add	ip, r0, #32768
	add	r2, r2, #2640
	add	r10, ip, #3776
	add	r9, r1, #652
	add	r7, r1, #1120
	add	r6, r1, #1600
	strh	r5, [r2, #8]	@ movhi
	add	lr, r0, #37376
	strh	r5, [r2, #10]	@ movhi
	ldr	r8, .L147+16
	strh	r5, [r2, #12]	@ movhi
	strh	r5, [r2, #14]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	strh	r3, [r1, #172]	@ movhi
	strh	r3, [r9]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r10, #14]	@ movhi
	strh	r3, [r1, #174]	@ movhi
	strh	r3, [r9, #2]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	strh	r4, [r10, #14]	@ movhi
	strh	r4, [r1, #174]	@ movhi
	strh	r4, [r9, #2]	@ movhi
	strh	r4, [r7, #14]	@ movhi
	strh	r4, [r6, #14]	@ movhi
	add	r2, lr, #134
	add	r3, lr, #148
.L121:
	strh	r8, [r2]	@ movhi
	add	r1, r2, #480
	add	r2, r2, #2
	cmp	r2, r3
	strh	r8, [r1]	@ movhi
	bne	.L121
	add	r2, r0, #37888
	ldr	r1, .L147+8
	add	r3, r2, #102
	add	r2, r2, #116
.L122:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L122
	mov	lr, #5
	add	r2, r0, #36352
	ldr	r1, .L147+16
	add	r2, r2, #138
.L123:
	sub	r3, r2, #2880
.L124:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L124
	add	lr, lr, #1
	cmp	lr, #8
	add	r2, r3, #2
	bne	.L123
	ldr	r3, .L147+12
	add	lr, ip, #1312
	strh	r3, [lr, #12]	@ movhi
	add	r4, r0, #34560
	add	r1, ip, #2272
	add	r0, r0, #34816
	add	r2, ip, #2752
	ldr	lr, .L147+16
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	add	r3, r0, #228
	add	r0, r0, #244
.L126:
	strh	lr, [r3]	@ movhi
	add	r1, r3, #480
	add	r2, r3, #960
	add	r3, r3, #2
	cmp	r0, r3
	strh	lr, [r1]	@ movhi
	strh	lr, [r2]	@ movhi
	bne	.L126
	ldr	r3, .L147+12
	add	r2, ip, #2752
	add	ip, ip, #2768
	strh	r3, [r2, #6]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	strh	r3, [r2, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	strh	r3, [ip]	@ movhi
	bx	lr
.L148:
	.align	2
.L147:
	.word	.LANCHOR0
	.word	5285
	.word	31775
	.word	20788
	.word	22735
	.size	topLeft, .-topLeft
	.align	2
	.global	center
	.syntax unified
	.arm
	.fpu softvfp
	.type	center, %function
center:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L199
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	ip, [r3, #4]
	ldr	r1, .L199+4
	add	r0, ip, #55808
	add	r2, r0, #76
	add	r0, r0, #126
.L150:
	sub	r3, r2, #30208
	sub	r3, r3, #32
.L151:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L151
	add	r2, r2, #2
	cmp	r2, r0
	bne	.L150
	ldr	r2, .L199+8
	add	r0, ip, #68608
	ldr	r1, .L199+4
	add	r2, ip, r2
	add	lr, r0, #712
.L152:
	sub	r3, r2, #32000
	sub	r3, r3, #160
.L153:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L153
	add	r2, r2, #2
	cmp	r2, lr
	bne	.L152
	ldr	r2, .L199+12
	ldr	r1, .L199+4
	add	r2, ip, r2
	add	lr, r0, #784
.L156:
	sub	r3, r2, #32000
	sub	r3, r3, #160
.L155:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L155
	add	r2, r3, #2
	cmp	r2, lr
	bne	.L156
	add	lr, ip, #76800
	ldr	r1, .L199+4
	add	r2, lr, #204
	add	r4, lr, #220
.L157:
	sub	r3, r2, #20992
	sub	r3, r3, #128
.L158:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L158
	add	r2, r3, #2
	cmp	r2, r4
	bne	.L157
	ldr	r1, .L199+4
	add	r2, lr, #238
	add	lr, lr, #254
.L161:
	sub	r3, r2, #20992
	sub	r3, r3, #128
.L160:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L160
	add	r2, r2, #2
	cmp	lr, r2
	bne	.L161
	ldr	r3, .L199+16
	add	lr, ip, #28672
	ldr	r1, .L199+20
	add	r5, lr, #1760
	add	r2, lr, #2240
	add	r8, lr, #2720
	add	r4, ip, #29952
	strh	r3, [r4, #12]	@ movhi
	add	r7, lr, #1296
	strh	r3, [r5, #12]	@ movhi
	add	r6, lr, #1776
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	add	r5, lr, #2256
	add	r2, lr, #2736
	strh	r3, [r8, #14]	@ movhi
	add	r10, lr, #2272
	strh	r3, [r7]	@ movhi
	add	r8, lr, #1312
	strh	r3, [r6]	@ movhi
	add	r9, lr, #2752
	strh	r3, [r5]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r7, #8]	@ movhi
	strh	r1, [r6, #8]	@ movhi
	strh	r1, [r5, #8]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	add	r6, ip, #30464
	strh	r3, [r5, #14]	@ movhi
	add	r7, lr, #2288
	strh	r3, [r2, #14]	@ movhi
	add	r5, lr, #1328
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r10, #10]	@ movhi
	strh	r3, [r9, #10]	@ movhi
	strh	r3, [r8, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	strh	r3, [r9, #12]	@ movhi
	strh	r3, [r8, #14]	@ movhi
	strh	r3, [r6, #14]	@ movhi
	add	r8, lr, #1808
	add	r6, lr, #2768
	strh	r3, [r10, #14]	@ movhi
	strh	r3, [r9, #14]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	r1, [r8]	@ movhi
	strh	r1, [r7]	@ movhi
	strh	r1, [r6]	@ movhi
	strh	r1, [r5, #2]	@ movhi
	strh	r1, [r8, #2]	@ movhi
	strh	r1, [r7, #2]	@ movhi
	strh	r1, [r6, #2]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r8, #4]	@ movhi
	strh	r1, [r7, #4]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r5, #6]	@ movhi
	strh	r1, [r8, #6]	@ movhi
	strh	r1, [r7, #6]	@ movhi
	strh	r1, [r6, #6]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	strh	r3, [r7, #8]	@ movhi
	strh	r3, [r6, #8]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r8, #10]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	strh	r3, [r6, #10]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r5, #86
	strh	r3, [r8, #12]	@ movhi
	add	r2, ip, #44288
	strh	r3, [r7, #12]	@ movhi
	ldr	r1, .L199+24
	strh	r3, [r6, #12]	@ movhi
	add	r2, r2, #44
.L162:
	sub	r3, r2, #3360
.L163:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r2
	bne	.L163
	add	r5, r5, #1
	cmp	r5, #89
	add	r2, r3, #2
	bne	.L162
	ldr	r1, .L199+16
	add	r3, ip, #40960
	add	r2, r3, #492
	add	r5, r3, #972
	strh	r1, [r2, #2]	@ movhi
	add	r8, r3, #1440
	strh	r1, [r5, #2]	@ movhi
	add	r2, ip, #41728
	add	r7, r3, #1920
	add	r6, r3, #2400
	ldr	r5, .L199+24
	strh	r1, [r8, #14]	@ movhi
	strh	r1, [r7, #14]	@ movhi
	strh	r1, [r6, #14]	@ movhi
	add	r1, r2, #198
	add	r2, r2, #214
.L165:
	strh	r5, [r1]	@ movhi
	add	r7, r1, #480
	add	r6, r1, #960
	add	r1, r1, #2
	cmp	r1, r2
	strh	r5, [r7]	@ movhi
	strh	r5, [r6]	@ movhi
	bne	.L165
	mov	r7, #85
	ldr	r5, .L199+16
	add	r6, r3, #1440
	ldr	r1, .L199+28
	add	r3, r3, #1456
	strh	r5, [r6, #8]	@ movhi
	ldr	r2, .L199+20
	strh	r5, [r6, #10]	@ movhi
	strh	r5, [r6, #12]	@ movhi
	strh	r5, [r6, #14]	@ movhi
	strh	r5, [r3]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	add	r1, ip, r1
.L166:
	sub	r3, r1, #4800
.L167:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L167
	add	r7, r7, #1
	cmp	r7, #88
	add	r1, r1, #2
	bne	.L166
	ldr	r3, .L199+24
	add	r8, ip, #61440
	add	r5, r8, #2080
	add	r7, r8, #1600
	add	r6, ip, #64000
	add	r1, r8, #1120
	add	r10, r8, #3040
	add	fp, r8, #652
	strh	r3, [r8, #172]	@ movhi
	strh	r3, [fp]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	strh	r3, [r7, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	mov	r10, #142
	add	r9, r8, #3520
	strh	r3, [r9, #12]	@ movhi
	add	r8, ip, #72704
	strh	r2, [r7, #2]	@ movhi
	ldr	r9, .L199+16
	strh	r2, [r5, #2]	@ movhi
	strh	r2, [r6, #2]	@ movhi
	strh	r2, [r7, #4]	@ movhi
	strh	r2, [r5, #4]	@ movhi
	strh	r2, [r6, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	strh	r2, [r5, #6]	@ movhi
	strh	r2, [r6, #6]	@ movhi
	strh	r2, [r7, #8]	@ movhi
	strh	r2, [r5, #8]	@ movhi
	strh	r2, [r6, #8]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	strh	r3, [r5, #6]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	add	r1, r8, #540
.L169:
	sub	r3, r1, #4800
.L170:
	strh	r9, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L170
	add	r10, r10, #1
	cmp	r10, #146
	add	r1, r1, #2
	bne	.L169
	ldr	r3, .L199+32
	ldr	r2, .L199+36
	ldr	r1, .L199+20
	add	r3, ip, r3
	add	r2, ip, r2
.L172:
	strh	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L172
	ldr	r3, .L199+20
	add	r0, r0, #320
	add	r8, r8, #544
.L173:
	strh	r3, [r0]	@ movhi
	add	r0, r0, #480
	cmp	r0, r8
	bne	.L173
	ldr	r6, .L199+40
	add	r3, ip, #69632
	ldr	r2, .L199+16
	add	r6, ip, r6
	add	r3, r3, #244
.L174:
	strh	r2, [r3]	@ movhi
	add	r5, r3, #480
	add	r0, r3, #960
	add	r1, r3, #1440
	add	r3, r3, #2
	cmp	r3, r6
	strh	r2, [r5]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r2, [r1]	@ movhi
	bne	.L174
	ldr	r3, .L199+44
	ldr	r0, .L199+48
	ldr	r2, .L199+20
	add	r3, ip, r3
	add	r0, ip, r0
.L175:
	strh	r2, [r3]	@ movhi
	add	r1, r3, #480
	add	r3, r3, #2
	cmp	r3, r0
	strh	r2, [r1]	@ movhi
	bne	.L175
	mov	r0, #147
	add	r1, ip, #55296
	ldr	r3, .L199+16
	add	r1, r1, #198
.L176:
	sub	r2, r1, #2880
.L177:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L177
	add	r0, r0, #1
	cmp	r0, #150
	add	r1, r2, #2
	bne	.L176
	ldr	r0, .L199+24
	add	r2, ip, #53248
	add	r1, ip, #54528
	add	r5, r2, #1760
	add	r7, r2, #808
	add	r6, ip, #52992
	add	r8, r2, #328
	add	r2, r2, #812
	strh	r0, [r6, #104]	@ movhi
	strh	r0, [r8]	@ movhi
	ldr	r6, .L199+20
	strh	r0, [r7]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	strh	r3, [r7, #2]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r2]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	strh	r3, [r5, #14]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	add	r3, r4, #80
	add	r4, r4, #92
.L179:
	strh	r6, [r3]	@ movhi
	add	r0, r3, #480
	add	r1, r3, #960
	add	r2, r3, #1440
	add	r3, r3, #2
	cmp	r4, r3
	strh	r6, [r0]	@ movhi
	strh	r6, [r1]	@ movhi
	strh	r6, [r2]	@ movhi
	bne	.L179
	ldr	r3, .L199+24
	add	r2, lr, #1840
	add	r1, lr, #2320
	strh	r3, [r2, #2]	@ movhi
	add	r0, lr, #2800
	strh	r3, [r1, #2]	@ movhi
	add	ip, ip, #32768
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	add	r2, lr, #3280
	add	lr, lr, #3760
	strh	r3, [r1, #8]	@ movhi
	strh	r6, [r0, #6]	@ movhi
	strh	r6, [r2, #6]	@ movhi
	strh	r6, [lr, #6]	@ movhi
	strh	r6, [ip, #150]	@ movhi
	strh	r6, [r0, #8]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	strh	r6, [lr, #8]	@ movhi
	strh	r6, [ip, #152]	@ movhi
	strh	r6, [r0, #10]	@ movhi
	strh	r6, [r2, #10]	@ movhi
	strh	r6, [lr, #10]	@ movhi
	strh	r6, [ip, #154]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L200:
	.align	2
.L199:
	.word	.LANCHOR0
	.word	5285
	.word	69306
	.word	69378
	.word	31775
	.word	20788
	.word	22735
	.word	65930
	.word	68926
	.word	73246
	.word	69898
	.word	70358
	.word	70378
	.size	center, .-center
	.align	2
	.global	topRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	topRight, %function
topRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L251
	push	{r4, r5, r6, r7, lr}
	ldr	r2, [r3, #4]
	ldr	r0, .L251+4
	add	ip, r2, #19456
	add	r1, ip, #128
	add	ip, ip, #156
.L202:
	sub	r3, r1, #15360
.L203:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L203
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L202
	mov	lr, #187
	add	r0, r2, #27136
	ldr	ip, .L251+4
	add	r1, r0, #118
.L206:
	sub	r3, r1, #17664
	sub	r3, r3, #96
.L205:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L205
	add	lr, lr, #1
	cmp	lr, #191
	add	r1, r1, #2
	bne	.L206
	mov	ip, #207
	add	r1, r0, #158
	ldr	r0, .L251+4
.L207:
	sub	r3, r1, #17664
	sub	r3, r3, #96
.L208:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L208
	add	ip, ip, #1
	cmp	ip, #211
	add	r1, r3, #2
	bne	.L207
	add	ip, r2, #37632
	ldr	r0, .L251+4
	add	r1, ip, #192
	add	lr, ip, #202
.L211:
	sub	r3, r1, #18176
	sub	r3, r3, #64
.L210:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L210
	add	r1, r3, #2
	cmp	r1, lr
	bne	.L211
	ldr	r0, .L251+4
	add	r1, ip, #210
	add	lr, ip, #220
.L212:
	sub	r3, r1, #18176
	sub	r3, r3, #64
.L213:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L213
	add	r1, r3, #2
	cmp	lr, r1
	bne	.L212
	ldr	r3, .L251+8
	ldr	r0, .L251+12
	add	r4, r2, #4096
	add	r1, r4, #2528
	add	lr, r2, #7104
	strh	r3, [r1]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	strh	r0, [lr, #4]	@ movhi
	strh	r0, [r1, #6]	@ movhi
	strh	r0, [lr, #6]	@ movhi
	strh	r3, [r1, #8]	@ movhi
	strh	r3, [lr, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [lr, #10]	@ movhi
	mov	lr, #177
	add	r5, r4, #2544
	add	r4, r4, #3024
	strh	r3, [r5]	@ movhi
	add	r1, r2, #23808
	strh	r3, [r4]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r0, [r5, #4]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	strh	r0, [r5, #6]	@ movhi
	strh	r0, [r4, #6]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	ldr	r0, .L251+16
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	add	r1, r1, #66
.L215:
	sub	r3, r1, #3840
.L216:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L216
	add	lr, lr, #1
	cmp	lr, #180
	add	r1, r3, #2
	bne	.L215
	ldr	r1, .L251+8
	add	r0, r2, #20480
	add	lr, r0, #516
	strh	r1, [r0, #36]	@ movhi
	add	r3, r2, #21248
	strh	r1, [lr]	@ movhi
	add	r7, r0, #996
	add	r6, r0, #1472
	add	r5, r0, #1952
	add	r4, r0, #2432
	ldr	lr, .L251+16
	strh	r1, [r7]	@ movhi
	strh	r1, [r6, #4]	@ movhi
	strh	r1, [r5, #4]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	add	r1, r3, #220
	add	r3, r3, #234
.L218:
	strh	lr, [r1]	@ movhi
	add	r5, r1, #480
	add	r4, r1, #960
	add	r1, r1, #2
	cmp	r1, r3
	strh	lr, [r5]	@ movhi
	strh	lr, [r4]	@ movhi
	bne	.L218
	ldr	lr, .L251+8
	add	r3, r0, #1456
	strh	lr, [r3, #14]	@ movhi
	add	r1, r0, #1472
	add	r3, r2, #35840
	ldr	r4, .L251+16
	strh	lr, [r1]	@ movhi
	strh	lr, [r1, #2]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	lr, [r1, #6]	@ movhi
	add	r1, r3, #40
	add	r3, r3, #56
.L219:
	strh	r4, [r1]	@ movhi
	add	r5, r1, #480
	add	lr, r1, #960
	add	r1, r1, #2
	cmp	r3, r1
	strh	r4, [r5]	@ movhi
	strh	r4, [lr]	@ movhi
	bne	.L219
	mov	r5, #184
	ldr	r3, .L251+8
	add	r4, r2, #36352
	strh	r3, [r4, #10]	@ movhi
	add	r1, r2, #38144
	strh	r3, [r4, #12]	@ movhi
	ldr	lr, .L251+16
	strh	r3, [r4, #14]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	strh	r3, [r4, #20]	@ movhi
	add	r1, r1, #144
.L220:
	sub	r3, r1, #5248
	sub	r3, r3, #32
.L221:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L221
	add	r5, r5, #1
	cmp	r5, #187
	add	r1, r1, #2
	bne	.L220
	add	r3, r2, #33280
	ldr	lr, .L251+8
	add	r1, ip, #178
	add	r3, r3, #210
.L223:
	strh	lr, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L223
	mov	lr, #215
	add	r1, r2, #25856
	ldr	ip, .L251+12
	add	r1, r1, #14
.L224:
	sub	r3, r1, #2880
.L225:
	strh	ip, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L225
	add	lr, lr, #1
	cmp	lr, #218
	add	r1, r1, #2
	bne	.L224
	ldr	r3, .L251+16
	add	r1, r0, #2992
	add	ip, r0, #3472
	strh	r3, [r1]	@ movhi
	add	lr, r2, #24832
	strh	r3, [ip]	@ movhi
	add	r1, r2, #24320
	add	r0, r0, #3952
	ldr	ip, .L251+12
	strh	r3, [r0]	@ movhi
	strh	r3, [lr, #80]	@ movhi
	add	r3, r1, #106
	add	r1, r1, #120
.L227:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L227
	add	r1, r2, #24832
	ldr	r0, .L251+16
	add	r3, r1, #74
	add	r1, r1, #88
.L228:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L228
	add	r3, r2, #30976
	ldr	r0, .L251+16
	add	r1, r3, #180
	add	r3, r3, #196
.L229:
	strh	r0, [r1]	@ movhi
	add	lr, r1, #480
	add	ip, r1, #960
	add	r1, r1, #2
	cmp	r1, r3
	strh	r0, [lr]	@ movhi
	strh	r0, [ip]	@ movhi
	bne	.L229
	mov	lr, #221
	ldr	r3, .L251+8
	add	r1, r2, #28672
	add	ip, r1, #2960
	add	r4, r1, #2976
	strh	r3, [ip, #6]	@ movhi
	add	r2, r2, #33536
	strh	r3, [ip, #8]	@ movhi
	ldr	r0, .L251+16
	strh	r3, [ip, #10]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	strh	r3, [ip, #14]	@ movhi
	strh	r3, [r4]	@ movhi
	add	r2, r2, #26
.L230:
	sub	r3, r2, #3360
.L231:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L231
	add	lr, lr, #1
	cmp	lr, #224
	add	r2, r2, #2
	bne	.L230
	ldr	r3, .L251+8
	add	lr, r1, #2000
	add	ip, r1, #2480
	add	r0, r1, #2960
	add	r2, r1, #3440
	add	r1, r1, #3920
	strh	r3, [lr, #12]	@ movhi
	strh	r3, [ip, #12]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	strh	r3, [r0, #12]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	strh	r3, [r1, #12]	@ movhi
	bx	lr
.L252:
	.align	2
.L251:
	.word	.LANCHOR0
	.word	5285
	.word	31775
	.word	20788
	.word	22735
	.size	topRight, .-topRight
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, #0
	mov	r3, #67108864
	mov	r4, r10
	ldr	r9, .L283
	ldr	r2, .L283+4
	ldr	r1, [r9, #4]
	strh	r2, [r3]	@ movhi
	ldr	r5, .L283+8
	ldr	r3, [r9]
	ldr	r7, .L283+12
	ldr	r8, .L283+16
	ldr	r6, .L283+20
.L255:
	ldrh	r2, [r3]
	cmp	r2, #159
	bhi	.L255
.L256:
	ldrh	r2, [r3]
	cmp	r2, #159
	bls	.L256
	add	r10, r10, #1
	cmp	r10, #40
	beq	.L280
	cmp	r10, #80
	addeq	r2, r1, #76800
	addeq	r1, r2, #186
	addeq	r2, r2, #440
	beq	.L263
	cmp	r10, #120
	addeq	r2, r1, #41728
	addeq	r2, r2, #34
	moveq	r1, #0
	beq	.L267
	cmp	r10, #160
	addgt	r2, r1, #76800
	addgt	r1, r2, #156
	addgt	r2, r2, #304
	ble	.L255
.L270:
	sub	r3, r1, #53760
.L271:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L271
	add	r1, r1, #2
	cmp	r2, r1
	bne	.L270
	mov	lr, pc
	bx	r6
	mov	r10, #0
	ldr	r3, [r9]
	ldr	r1, [r9, #4]
	b	.L255
.L281:
	add	r1, r1, #2
	cmp	r1, r2
	beq	.L265
.L263:
	sub	r3, r1, #32512
	sub	r3, r3, #128
.L264:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r1, r3
	bne	.L264
	b	.L281
.L282:
	cmp	r1, #49
	add	r2, r2, #2
	beq	.L269
.L267:
	sub	r3, r2, #39680
	add	r1, r1, #1
	sub	r3, r3, #160
.L268:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L268
	b	.L282
.L265:
	mov	lr, pc
	bx	r7
	ldr	r3, [r9]
	ldr	r1, [r9, #4]
	b	.L255
.L269:
	mov	lr, pc
	bx	r8
	ldr	r3, [r9]
	ldr	r1, [r9, #4]
	b	.L255
.L280:
	add	r2, r1, #39936
	add	r1, r1, #40192
	add	r2, r2, #240
	add	r1, r1, #112
.L258:
	sub	r3, r2, #37376
	sub	r3, r3, #64
.L259:
	strh	r4, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L259
	add	r2, r2, #2
	cmp	r1, r2
	bne	.L258
	mov	lr, pc
	bx	r5
	ldr	r3, [r9]
	ldr	r1, [r9, #4]
	b	.L255
.L284:
	.align	2
.L283:
	.word	.LANCHOR0
	.word	1027
	.word	upClose
	.word	topLeft
	.word	center
	.word	topRight
	.size	main, .-main
	.global	scanlineCounter
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	scanlineCounter, %object
	.size	scanlineCounter, 4
scanlineCounter:
	.word	67108870
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
