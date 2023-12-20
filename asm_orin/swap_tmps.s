	.arch armv8-a
	.file	"swap_tmps.c"
	.text
	.align	2
	.global	my_swap
	.type	my_swap, %function
my_swap:
.LFB0:
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
.LFE0:
	.size	my_swap, .-my_swap
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
