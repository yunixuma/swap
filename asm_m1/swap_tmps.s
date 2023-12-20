	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_my_swap                        ; -- Begin function my_swap
	.p2align	2
_my_swap:                               ; @my_swap
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	str	w8, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	str	w8, [sp, #8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #32]
	str	w8, [x9]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
