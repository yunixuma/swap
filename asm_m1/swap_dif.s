	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_my_swap                        ; -- Begin function my_swap
	.p2align	2
_my_swap:                               ; @my_swap
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	add	w8, w8, w9
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
