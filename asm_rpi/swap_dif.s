	.arch armv8-a
	.file	"swap_dif.c"
	.text
	.align	2
	.global	my_swap
	.type	my_swap, %function
my_swap:
.LFB0:
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
.LFE0:
	.size	my_swap, .-my_swap
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
