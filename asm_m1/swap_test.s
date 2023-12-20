	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_swap_tmp                       ; -- Begin function swap_tmp
	.p2align	2
_swap_tmp:                              ; @swap_tmp
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_swap_tmps                      ; -- Begin function swap_tmps
	.p2align	2
_swap_tmps:                             ; @swap_tmps
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
	.globl	_swap_xor                       ; -- Begin function swap_xor
	.p2align	2
_swap_xor:                              ; @swap_xor
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
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	eor	w8, w8, w9
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	eor	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_swap_dif                       ; -- Begin function swap_dif
	.p2align	2
_swap_dif:                              ; @swap_dif
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
	.globl	_swap_sum                       ; -- Begin function swap_sum
	.p2align	2
_swap_sum:                              ; @swap_sum
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
	add	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	ldr	w9, [x9]
	subs	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_my_sqrt                        ; -- Begin function my_sqrt
	.p2align	2
_my_sqrt:                               ; @my_sqrt
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #24]
	mov	w8, #16
	str	w8, [sp, #12]
	ldr	w9, [sp, #12]
	mov	w8, #1
	lsl	w8, w8, w9
	str	w8, [sp, #20]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB5_8
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #20]
	mul	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB5_4
	b	LBB5_3
LBB5_3:
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	b	LBB5_9
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w9, [sp, #12]
	mov	w8, #1
	lsl	w9, w8, w9
	ldr	w8, [sp, #20]
	add	w8, w8, w9
	str	w8, [sp, #20]
	b	LBB5_7
LBB5_6:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w9, [sp, #12]
	mov	w8, #1
	lsl	w9, w8, w9
	ldr	w8, [sp, #20]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	b	LBB5_7
LBB5_7:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB5_1
LBB5_8:
	ldr	w8, [sp, #20]
	str	w8, [sp, #28]
	b	LBB5_9
LBB5_9:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	w8, #3
	stur	w8, [x29, #-20]
	mov	w8, #-4
	str	w8, [sp, #24]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #3
	cset	w8, ne
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_atoi
	stur	w0, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #16]
	bl	_atoi
	str	w0, [sp, #24]
	b	LBB6_2
LBB6_2:
	sub	x0, x29, #20
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x1, sp, #24
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	adrp	x2, _swap_tmp@PAGE
	add	x2, x2, _swap_tmp@PAGEOFF
	bl	_test
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x2, _swap_tmps@PAGE
	add	x2, x2, _swap_tmps@PAGEOFF
	bl	_test
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x2, _swap_xor@PAGE
	add	x2, x2, _swap_xor@PAGEOFF
	bl	_test
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x2, _swap_dif@PAGE
	add	x2, x2, _swap_dif@PAGEOFF
	bl	_test
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function test
_test:                                  ; @test
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	wzr, [sp, #36]
	b	LBB7_1
LBB7_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	mov	w0, #51712
	movk	w0, #15258, lsl #16
	bl	_my_sqrt
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	cset	w8, ge
	tbnz	w8, #0, LBB7_4
	b	LBB7_2
LBB7_2:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	blr	x8
	b	LBB7_3
LBB7_3:                                 ;   in Loop: Header=BB7_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB7_1
LBB7_4:
	mov	x0, #0
	bl	_time
	str	x0, [sp, #48]
	bl	_clock
	stur	x0, [x29, #-32]
	str	wzr, [sp, #32]
	b	LBB7_5
LBB7_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB7_8
	b	LBB7_6
LBB7_6:                                 ;   in Loop: Header=BB7_5 Depth=1
	ldur	x8, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	blr	x8
	b	LBB7_7
LBB7_7:                                 ;   in Loop: Header=BB7_5 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB7_5
LBB7_8:
	bl	_clock
	stur	x0, [x29, #-40]
	mov	x0, #0
	bl	_time
	str	x0, [sp, #40]
	ldur	x10, [x29, #-24]
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	x10, [x29, #-24]
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"[%p]\t%ld clocks\n"

l_.str.1:                               ; @.str.1
	.asciz	"[%p]\t%ld seconds\n"

.subsections_via_symbols
