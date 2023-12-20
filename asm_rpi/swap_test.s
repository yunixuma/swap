	.arch armv8-a
	.file	"swap_test.c"
	.text
	.align	2
	.global	swap_tmp
	.type	swap_tmp, %function
swap_tmp:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	swap_tmp, .-swap_tmp
	.align	2
	.global	swap_tmps
	.type	swap_tmps, %function
swap_tmps:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [sp, 44]
	str	w1, [x0]
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	swap_tmps, .-swap_tmps
	.align	2
	.global	swap_xor
	.type	swap_xor, %function
swap_xor:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	eor	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	swap_xor, .-swap_xor
	.align	2
	.global	swap_dif
	.type	swap_dif, %function
swap_dif:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	sub	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	swap_dif, .-swap_dif
	.align	2
	.global	swap_sum
	.type	swap_sum, %function
swap_sum:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	sub	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	swap_sum, .-swap_sum
	.align	2
	.global	my_sqrt
	.type	my_sqrt, %function
my_sqrt:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	mov	w0, 16
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	mov	w1, 1
	lsl	w0, w1, w0
	str	w0, [sp, 20]
	b	.L7
.L12:
	ldr	w0, [sp, 20]
	mul	w0, w0, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 20]
	b	.L9
.L8:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	mov	w1, 1
	lsl	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L11
.L10:
	ldr	w0, [sp, 24]
	mov	w1, 1
	lsl	w0, w1, w0
	ldr	w1, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 20]
.L11:
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
.L7:
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 20]
.L9:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	my_sqrt, .-my_sqrt
	.section	.rodata
	.align	3
.LC0:
	.string	"[%p]\t%ld clocks\n"
	.align	3
.LC1:
	.string	"[%p]\t%ld seconds\n"
	.text
	.align	2
	.type	test, %function
test:
.LFB12:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	x2, [sp, 24]
	str	wzr, [sp, 56]
	b	.L14
.L15:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	blr	x2
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
.L14:
	mov	w0, 51712
	movk	w0, 0x3b9a, lsl 16
	bl	my_sqrt
	mov	w1, w0
	ldr	w0, [sp, 56]
	cmp	w0, w1
	blt	.L15
	mov	x0, 0
	bl	time
	str	x0, [sp, 64]
	bl	clock
	str	x0, [sp, 72]
	str	wzr, [sp, 60]
	b	.L16
.L17:
	ldr	x2, [sp, 24]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	blr	x2
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
.L16:
	ldr	w1, [sp, 60]
	mov	w0, 51711
	movk	w0, 0x3b9a, lsl 16
	cmp	w1, w0
	ble	.L17
	bl	clock
	str	x0, [sp, 80]
	mov	x0, 0
	bl	time
	str	x0, [sp, 88]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	sub	x0, x1, x0
	mov	x2, x0
	ldr	x1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	x1, [sp, 88]
	ldr	x0, [sp, 64]
	sub	x0, x1, x0
	mov	x2, x0
	ldr	x1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	nop
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	test, .-test
	.align	2
	.global	main
	.type	main, %function
main:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 40]
	mov	x1,0
	mov	w0, 3
	str	w0, [sp, 32]
	mov	w0, -4
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L19
	ldr	x0, [sp, 16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 32]
	ldr	x0, [sp, 16]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	atoi
	str	w0, [sp, 36]
.L19:
	add	x1, sp, 36
	add	x3, sp, 32
	adrp	x0, swap_tmp
	add	x2, x0, :lo12:swap_tmp
	mov	x0, x3
	bl	test
	add	x1, sp, 36
	add	x3, sp, 32
	adrp	x0, swap_tmps
	add	x2, x0, :lo12:swap_tmps
	mov	x0, x3
	bl	test
	add	x1, sp, 36
	add	x3, sp, 32
	adrp	x0, swap_xor
	add	x2, x0, :lo12:swap_xor
	mov	x0, x3
	bl	test
	add	x1, sp, 36
	add	x3, sp, 32
	adrp	x0, swap_dif
	add	x2, x0, :lo12:swap_dif
	mov	x0, x3
	bl	test
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 40]
	ldr	x3, [x0]
	subs	x2, x2, x3
	mov	x3, 0
	beq	.L21
	bl	__stack_chk_fail
.L21:
	mov	w0, w1
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
