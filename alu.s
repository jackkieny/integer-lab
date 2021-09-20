	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.file	1 "/Users/jackkieny/Documents/School/Fall 2021/CSCE 231/integer-lab" "./alu.h"
	.file	2 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.globl	_add                            ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
Lfunc_begin0:
	.file	3 "/Users/jackkieny/Documents/School/Fall 2021/CSCE 231/integer-lab" "alu.c"
	.loc	3 22 0                          ## alu.c:22:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: add:augend <- $edi
	##DEBUG_VALUE: add:addend <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %ebx
	movl	%edi, %r14d
Ltmp0:
	##DEBUG_VALUE: add:already_checked <- 0
	##DEBUG_VALUE: add:addend <- $ebx
	##DEBUG_VALUE: add:augend <- $r14d
	.loc	3 29 15 prologue_end            ## alu.c:29:15
	testw	%r14w, %r14w
Ltmp1:
	.loc	3 29 8 is_stmt 0                ## alu.c:29:8
	je	LBB0_6
Ltmp2:
## %bb.1:
	##DEBUG_VALUE: add:augend <- $r14d
	##DEBUG_VALUE: add:addend <- $ebx
	##DEBUG_VALUE: add:already_checked <- 0
	.loc	3 33 21 is_stmt 1               ## alu.c:33:21
	testw	%bx, %bx
Ltmp3:
	.loc	3 33 14 is_stmt 0               ## alu.c:33:14
	je	LBB0_2
Ltmp4:
## %bb.3:
	##DEBUG_VALUE: add:augend <- $r14d
	##DEBUG_VALUE: add:addend <- $ebx
	##DEBUG_VALUE: add:already_checked <- 0
	.loc	3 0 14                          ## alu.c:0:14
	leaq	L_.str.2(%rip), %r13
Ltmp5:
	.p2align	4, 0x90
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: add:already_checked <- 0
	##DEBUG_VALUE: add:augend <- $r14w
	##DEBUG_VALUE: add:addend <- $bx
	.loc	3 42 24 is_stmt 1               ## alu.c:42:24
	movl	%ebx, %eax
	andl	%r14d, %eax
	.loc	3 43 25                         ## alu.c:43:25
	xorl	%r14d, %ebx
Ltmp6:
	movl	%ebx, %r14d
Ltmp7:
	.loc	3 44 18                         ## alu.c:44:18
	movzwl	%ax, %esi
Ltmp8:
	##DEBUG_VALUE: add:carry <- $esi
	.loc	3 44 24 is_stmt 0               ## alu.c:44:24
	addl	%eax, %eax
	movl	%eax, %ebx
	.loc	3 45 27 is_stmt 1               ## alu.c:45:27
	movzwl	%r14w, %r15d
Ltmp9:
	##DEBUG_VALUE: add:augend <- $r15d
	.loc	3 45 36 is_stmt 0               ## alu.c:45:36
	movzwl	%ax, %r12d
Ltmp10:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] undef
	##DEBUG_VALUE: add:addend <- $r12d
	.loc	3 47 9 is_stmt 1                ## alu.c:47:9
	leaq	L_.str(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
Ltmp11:
	.loc	3 48 9                          ## alu.c:48:9
	leaq	L_.str.1(%rip), %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_printf
Ltmp12:
	.loc	3 49 9                          ## alu.c:49:9
	movq	%r13, %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	callq	_printf
Ltmp13:
	.loc	3 40 18                         ## alu.c:40:18
	testw	%r12w, %r12w
	.loc	3 40 5 is_stmt 0                ## alu.c:40:5
	jne	LBB0_4
Ltmp14:
## %bb.5:
	##DEBUG_VALUE: add:augend <- $r15d
	##DEBUG_VALUE: add:addend <- $r12d
	##DEBUG_VALUE: add:already_checked <- 0
	.loc	3 45 34 is_stmt 1               ## alu.c:45:34
	xorl	%r14d, %ebx
Ltmp15:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $bx
	.loc	3 52 5                          ## alu.c:52:5
	movl	$10, %edi
	callq	_putchar
Ltmp16:
	.loc	3 0 5 is_stmt 0                 ## alu.c:0:5
	jmp	LBB0_6
Ltmp17:
LBB0_2:
	##DEBUG_VALUE: add:augend <- $r14d
	##DEBUG_VALUE: add:addend <- $ebx
	##DEBUG_VALUE: add:already_checked <- 0
	movl	%r14d, %ebx
Ltmp18:
LBB0_6:
	##DEBUG_VALUE: add:already_checked <- 0
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $bx
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] 0
	.loc	3 58 1 is_stmt 1                ## alu.c:58:1
	movzwl	%bx, %eax
	addq	$8, %rsp
	popq	%rbx
Ltmp19:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
Ltmp20:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_subtract                       ## -- Begin function subtract
	.p2align	4, 0x90
_subtract:                              ## @subtract
Lfunc_begin1:
	.loc	3 63 0                          ## alu.c:63:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: subtract:menuend <- $edi
	##DEBUG_VALUE: subtract:menuend <- $edi
	##DEBUG_VALUE: subtract:subtrahend <- $esi
	##DEBUG_VALUE: subtract:subtrahend <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp21:
	##DEBUG_VALUE: subtract:augend <- $edi
	##DEBUG_VALUE: subtract:augend <- $edi
	.loc	3 65 34 prologue_end            ## alu.c:65:34
	negl	%esi
Ltmp22:
	##DEBUG_VALUE: subtract:subtrahend <- [DW_OP_LLVM_entry_value 1] $esi
	.loc	3 74 12                         ## alu.c:74:12
	movzwl	%si, %esi
Ltmp23:
	##DEBUG_VALUE: subtract:addend <- $esi
	##DEBUG_VALUE: subtract:augend <- $edi
	##DEBUG_VALUE: subtract:menuend <- $edi
	callq	_add
Ltmp24:
	##DEBUG_VALUE: subtract:menuend <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 75 1                          ## alu.c:75:1
	popq	%rbp
	retq
Ltmp25:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_multiply                       ## -- Begin function multiply
	.p2align	4, 0x90
_multiply:                              ## @multiply
Lfunc_begin2:
	.loc	3 81 0                          ## alu.c:81:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: multiply:multiplicand <- $edi
	##DEBUG_VALUE: multiply:multiplier <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edi killed $edi def $rdi
	##DEBUG_VALUE: multiply:multiplier <- $esi
	##DEBUG_VALUE: multiply:multiplicand <- $edi
Ltmp26:
	.loc	3 83 43 prologue_end            ## alu.c:83:43
	imull	%esi, %edi
Ltmp27:
	##DEBUG_VALUE: multiply:multiplicand <- [DW_OP_LLVM_entry_value 1] $edi
	##DEBUG_VALUE: multiply:multiplication <- [DW_OP_LLVM_fragment 64 8] 0
	##DEBUG_VALUE: multiply:multiplication <- [DW_OP_LLVM_fragment 32 32] $edi
	##DEBUG_VALUE: multiply:multiplication <- [DW_OP_LLVM_convert 32 7, DW_OP_LLVM_convert 16 7, DW_OP_stack_value, DW_OP_LLVM_fragment 0 16] $edi
	.loc	3 86 5                          ## alu.c:86:5
	movzwl	%di, %eax
	shlq	$32, %rdi
Ltmp28:
	orq	%rdi, %rax
	xorl	%edx, %edx
	popq	%rbp
	retq
Ltmp29:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.globl	_divide                         ## -- Begin function divide
	.p2align	4, 0x90
_divide:                                ## @divide
Lfunc_begin3:
	.loc	3 93 0                          ## alu.c:93:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: divide:dividend <- $edi
	##DEBUG_VALUE: divide:dividend <- $edi
	##DEBUG_VALUE: divide:divisor <- $esi
	##DEBUG_VALUE: divide:divisor <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp30:
	.loc	3 95 9 prologue_end             ## alu.c:95:9
	testw	%si, %si
Ltmp31:
	.loc	3 95 9 is_stmt 0                ## alu.c:95:9
	je	LBB3_1
Ltmp32:
## %bb.2:
	##DEBUG_VALUE: divide:divisor <- $esi
	##DEBUG_VALUE: divide:dividend <- $edi
	.loc	3 97 39 is_stmt 1               ## alu.c:97:39
	movl	%edi, %eax
	xorl	%edx, %edx
	divw	%si
Ltmp33:
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_fragment 0 16] $ax
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_fragment 16 16] $dx
	.loc	3 0 39 is_stmt 0                ## alu.c:0:39
	jmp	LBB3_3
Ltmp34:
LBB3_1:
	##DEBUG_VALUE: divide:divisor <- $esi
	##DEBUG_VALUE: divide:dividend <- $edi
                                        ## implicit-def: $ax
                                        ## implicit-def: $dx
LBB3_3:
	##DEBUG_VALUE: divide:divisor <- $esi
	##DEBUG_VALUE: divide:dividend <- $edi
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_fragment 16 16] $dx
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_fragment 0 16] $ax
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_fragment 32 8] 0
	.loc	3 100 5 is_stmt 1               ## alu.c:100:5
	movzwl	%dx, %ecx
	shlq	$16, %rcx
	movzwl	%ax, %eax
Ltmp35:
	orq	%rcx, %rax
	popq	%rbp
	retq
Ltmp36:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Carry: %hu \n"

L_.str.1:                               ## @.str.1
	.asciz	"Augend: %hu \n"

L_.str.2:                               ## @.str.2
	.asciz	"Addend: %hu \n"

	.comm	_is_signed,1,0                  ## @is_signed
	.file	4 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp0-Lfunc_begin0
	.quad	Lset1
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset2, Ltmp0-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp5-Lfunc_begin0
	.quad	Lset3
	.short	1                               ## Loc expr size
	.byte	94                              ## super-register DW_OP_reg14
.set Lset4, Ltmp5-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp7-Lfunc_begin0
	.quad	Lset5
	.short	1                               ## Loc expr size
	.byte	94                              ## super-register DW_OP_reg14
.set Lset6, Ltmp9-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp17-Lfunc_begin0
	.quad	Lset7
	.short	1                               ## Loc expr size
	.byte	95                              ## super-register DW_OP_reg15
.set Lset8, Ltmp17-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp18-Lfunc_begin0
	.quad	Lset9
	.short	1                               ## Loc expr size
	.byte	94                              ## super-register DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset10, Lfunc_begin0-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp0-Lfunc_begin0
	.quad	Lset11
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset12, Ltmp0-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp5-Lfunc_begin0
	.quad	Lset13
	.short	1                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
.set Lset14, Ltmp5-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp6-Lfunc_begin0
	.quad	Lset15
	.short	1                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
.set Lset16, Ltmp10-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp17-Lfunc_begin0
	.quad	Lset17
	.short	1                               ## Loc expr size
	.byte	92                              ## super-register DW_OP_reg12
.set Lset18, Ltmp17-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp18-Lfunc_begin0
	.quad	Lset19
	.short	1                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset20, Ltmp8-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp11-Lfunc_begin0
	.quad	Lset21
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset22, Ltmp15-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp17-Lfunc_begin0
	.quad	Lset23
	.short	3                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset24, Ltmp18-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp19-Lfunc_begin0
	.quad	Lset25
	.short	7                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset26, Ltmp19-Lfunc_begin0
	.quad	Lset26
.set Lset27, Lfunc_end0-Lfunc_begin0
	.quad	Lset27
	.short	6                               ## Loc expr size
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset28, Lfunc_begin1-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp24-Lfunc_begin0
	.quad	Lset29
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset30, Ltmp24-Lfunc_begin0
	.quad	Lset30
.set Lset31, Lfunc_end1-Lfunc_begin0
	.quad	Lset31
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## super-register DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset32, Lfunc_begin1-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp22-Lfunc_begin0
	.quad	Lset33
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset34, Ltmp22-Lfunc_begin0
	.quad	Lset34
.set Lset35, Lfunc_end1-Lfunc_begin0
	.quad	Lset35
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset36, Ltmp21-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp24-Lfunc_begin0
	.quad	Lset37
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset38, Ltmp23-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp24-Lfunc_begin0
	.quad	Lset39
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset40, Lfunc_begin2-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp27-Lfunc_begin0
	.quad	Lset41
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset42, Ltmp27-Lfunc_begin0
	.quad	Lset42
.set Lset43, Lfunc_end2-Lfunc_begin0
	.quad	Lset43
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	85                              ## super-register DW_OP_reg5
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset44, Ltmp27-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp28-Lfunc_begin0
	.quad	Lset45
	.short	21                              ## Loc expr size
	.byte	117                             ## DW_OP_breg5
	.byte	0                               ## 0
	.byte	16                              ## DW_OP_constu
	.byte	255                             ## 4294967295
	.byte	255                             ## 
	.byte	255                             ## 
	.byte	255                             ## 
	.byte	15                              ## 
	.byte	26                              ## DW_OP_and
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	85                              ## super-register DW_OP_reg5
	.byte	147                             ## DW_OP_piece
	.byte	4                               ## 4
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset46, Ltmp28-Lfunc_begin0
	.quad	Lset46
.set Lset47, Lfunc_end2-Lfunc_begin0
	.quad	Lset47
	.short	6                               ## Loc expr size
	.byte	147                             ## DW_OP_piece
	.byte	8                               ## 8
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset48, Ltmp33-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp34-Lfunc_begin0
	.quad	Lset49
	.short	6                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	81                              ## super-register DW_OP_reg1
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset50, Ltmp34-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp35-Lfunc_begin0
	.quad	Lset51
	.short	10                              ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	81                              ## super-register DW_OP_reg1
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset52, Ltmp35-Lfunc_begin0
	.quad	Lset52
.set Lset53, Lfunc_end3-Lfunc_begin0
	.quad	Lset53
	.short	9                               ## Loc expr size
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	81                              ## super-register DW_OP_reg1
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	48                              ## DW_OP_lit0
	.byte	159                             ## DW_OP_stack_value
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	14                              ## DW_FORM_strp
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	14                              ## DW_FORM_strp
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	14                              ## DW_FORM_strp
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	14                              ## DW_FORM_strp
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	22                              ## DW_TAG_typedef
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	1                               ## DW_FORM_addr
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	23                              ## DW_FORM_sec_offset
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	28                              ## DW_AT_const_value
	.byte	15                              ## DW_FORM_udata
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	23                              ## DW_FORM_sec_offset
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	1                               ## DW_CHILDREN_yes
	.byte	127                             ## DW_AT_call_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	125                             ## DW_AT_call_return_pc
	.byte	1                               ## DW_FORM_addr
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	73                              ## DW_TAG_call_site_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	126                             ## DW_AT_call_value
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
	.byte	19                              ## DW_TAG_structure_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
	.byte	13                              ## DW_TAG_member
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	14                              ## DW_FORM_strp
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	56                              ## DW_AT_data_member_location
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset54, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset54
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset55, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset55
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x24d DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	48                              ## DW_AT_name
	.long	54                              ## DW_AT_LLVM_sysroot
	.long	149                             ## DW_AT_APPLE_sdk
.set Lset56, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset56
	.long	160                             ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset57, Lfunc_end3-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset57
	.byte	2                               ## Abbrev [2] 0x32:0x15 DW_TAG_variable
	.long	225                             ## DW_AT_name
	.long	71                              ## DW_AT_type
                                        ## DW_AT_external
	.byte	1                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.byte	9                               ## DW_AT_location
	.byte	3
	.quad	_is_signed
	.byte	3                               ## Abbrev [3] 0x47:0x7 DW_TAG_base_type
	.long	235                             ## DW_AT_name
	.byte	2                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	4                               ## Abbrev [4] 0x4e:0xb DW_TAG_typedef
	.long	89                              ## DW_AT_type
	.long	241                             ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x59:0x7 DW_TAG_base_type
	.long	250                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	2                               ## DW_AT_byte_size
	.byte	5                               ## Abbrev [5] 0x60:0x62 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset58, Lfunc_end0-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset58
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	265                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	437                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                               ## Abbrev [6] 0x79:0xf DW_TAG_formal_parameter
.set Lset59, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset59
	.long	455                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x88:0xf DW_TAG_formal_parameter
.set Lset60, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset60
	.long	462                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	22                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x97:0xc DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.long	469                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	27                              ## DW_AT_decl_line
	.long	71                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xa3:0xf DW_TAG_variable
.set Lset61, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset61
	.long	485                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	39                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xb2:0xf DW_TAG_variable
.set Lset62, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset62
	.long	491                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	23                              ## DW_AT_decl_line
	.long	437                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0xc2:0x6b DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset63, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset63
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	269                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	63                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	437                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                               ## Abbrev [6] 0xdb:0xf DW_TAG_formal_parameter
.set Lset64, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset64
	.long	500                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	63                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0xea:0xf DW_TAG_formal_parameter
.set Lset65, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset65
	.long	508                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	63                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xf9:0xf DW_TAG_variable
.set Lset66, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset66
	.long	455                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	64                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x108:0xf DW_TAG_variable
.set Lset67, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset67
	.long	462                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	65                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x117:0x15 DW_TAG_call_site
	.long	96                              ## DW_AT_call_origin
	.quad	Ltmp24                          ## DW_AT_call_return_pc
	.byte	10                              ## Abbrev [10] 0x124:0x7 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	3                               ## DW_AT_call_value
	.byte	163
	.byte	1
	.byte	85
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x12d:0x45 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ## DW_AT_low_pc
.set Lset68, Lfunc_end2-Lfunc_begin2    ## DW_AT_high_pc
	.long	Lset68
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	278                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	81                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	477                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                               ## Abbrev [6] 0x146:0xf DW_TAG_formal_parameter
.set Lset69, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset69
	.long	519                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	81                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	11                              ## Abbrev [11] 0x155:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	532                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	81                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x162:0xf DW_TAG_variable
.set Lset70, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset70
	.long	543                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	82                              ## DW_AT_decl_line
	.long	477                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x172:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset71, Lfunc_end3-Lfunc_begin3    ## DW_AT_high_pc
	.long	Lset71
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	287                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	93                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	547                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	11                              ## Abbrev [11] 0x18b:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	558                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	93                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	11                              ## Abbrev [11] 0x198:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	567                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	93                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x1a5:0xf DW_TAG_variable
.set Lset72, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset72
	.long	575                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	94                              ## DW_AT_decl_line
	.long	547                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x1b5:0xb DW_TAG_typedef
	.long	448                             ## DW_AT_type
	.long	294                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	27                              ## DW_AT_decl_line
	.byte	12                              ## Abbrev [12] 0x1c0:0x1d DW_TAG_structure_type
	.byte	4                               ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	24                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x1c4:0xc DW_TAG_member
	.long	322                             ## DW_AT_name
	.long	78                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	25                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	13                              ## Abbrev [13] 0x1d0:0xc DW_TAG_member
	.long	329                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	26                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x1dd:0xb DW_TAG_typedef
	.long	488                             ## DW_AT_type
	.long	338                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	33                              ## DW_AT_decl_line
	.byte	12                              ## Abbrev [12] 0x1e8:0x29 DW_TAG_structure_type
	.byte	12                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	29                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x1ec:0xc DW_TAG_member
	.long	360                             ## DW_AT_name
	.long	78                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	13                              ## Abbrev [13] 0x1f8:0xc DW_TAG_member
	.long	368                             ## DW_AT_name
	.long	529                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	4                               ## DW_AT_data_member_location
	.byte	13                              ## Abbrev [13] 0x204:0xc DW_TAG_member
	.long	329                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	32                              ## DW_AT_decl_line
	.byte	8                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x211:0xb DW_TAG_typedef
	.long	540                             ## DW_AT_type
	.long	381                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x21c:0x7 DW_TAG_base_type
	.long	390                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	4                               ## Abbrev [4] 0x223:0xb DW_TAG_typedef
	.long	558                             ## DW_AT_type
	.long	403                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	39                              ## DW_AT_decl_line
	.byte	12                              ## Abbrev [12] 0x22e:0x29 DW_TAG_structure_type
	.byte	6                               ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	35                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x232:0xc DW_TAG_member
	.long	419                             ## DW_AT_name
	.long	89                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	36                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	13                              ## Abbrev [13] 0x23e:0xc DW_TAG_member
	.long	428                             ## DW_AT_name
	.long	89                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	37                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_data_member_location
	.byte	13                              ## Abbrev [13] 0x24a:0xc DW_TAG_member
	.long	438                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	38                              ## DW_AT_decl_line
	.byte	4                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 12.0.5 (clang-1205.0.22.11)" ## string offset=0
	.asciz	"alu.c"                         ## string offset=48
	.asciz	"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk" ## string offset=54
	.asciz	"MacOSX.sdk"                    ## string offset=149
	.asciz	"/Users/jackkieny/Documents/School/Fall 2021/CSCE 231/integer-lab" ## string offset=160
	.asciz	"is_signed"                     ## string offset=225
	.asciz	"_Bool"                         ## string offset=235
	.asciz	"uint16_t"                      ## string offset=241
	.asciz	"unsigned short"                ## string offset=250
	.asciz	"add"                           ## string offset=265
	.asciz	"subtract"                      ## string offset=269
	.asciz	"multiply"                      ## string offset=278
	.asciz	"divide"                        ## string offset=287
	.asciz	"addition_subtraction_result"   ## string offset=294
	.asciz	"result"                        ## string offset=322
	.asciz	"overflow"                      ## string offset=329
	.asciz	"multiplication_result"         ## string offset=338
	.asciz	"product"                       ## string offset=360
	.asciz	"full_product"                  ## string offset=368
	.asciz	"uint32_t"                      ## string offset=381
	.asciz	"unsigned int"                  ## string offset=390
	.asciz	"division_result"               ## string offset=403
	.asciz	"quotient"                      ## string offset=419
	.asciz	"remainder"                     ## string offset=428
	.asciz	"division_by_zero"              ## string offset=438
	.asciz	"augend"                        ## string offset=455
	.asciz	"addend"                        ## string offset=462
	.asciz	"already_checked"               ## string offset=469
	.asciz	"carry"                         ## string offset=485
	.asciz	"addition"                      ## string offset=491
	.asciz	"menuend"                       ## string offset=500
	.asciz	"subtrahend"                    ## string offset=508
	.asciz	"multiplicand"                  ## string offset=519
	.asciz	"multiplier"                    ## string offset=532
	.asciz	"multiplication"                ## string offset=543
	.asciz	"dividend"                      ## string offset=558
	.asciz	"divisor"                       ## string offset=567
	.asciz	"division"                      ## string offset=575
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	5                               ## Header Bucket Count
	.long	5                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	0                               ## Bucket 0
	.long	1                               ## Bucket 1
	.long	2                               ## Bucket 2
	.long	3                               ## Bucket 3
	.long	-1                              ## Bucket 4
	.long	193486030                       ## Hash in Bucket 0
	.long	-1196391315                     ## Hash in Bucket 1
	.long	1182035717                      ## Hash in Bucket 2
	.long	2138946138                      ## Hash in Bucket 3
	.long	-120491718                      ## Hash in Bucket 3
.set Lset73, LNames4-Lnames_begin       ## Offset in Bucket 0
	.long	Lset73
.set Lset74, LNames3-Lnames_begin       ## Offset in Bucket 1
	.long	Lset74
.set Lset75, LNames0-Lnames_begin       ## Offset in Bucket 2
	.long	Lset75
.set Lset76, LNames1-Lnames_begin       ## Offset in Bucket 3
	.long	Lset76
.set Lset77, LNames2-Lnames_begin       ## Offset in Bucket 3
	.long	Lset77
LNames4:
	.long	265                             ## add
	.long	1                               ## Num DIEs
	.long	96
	.long	0
LNames3:
	.long	269                             ## subtract
	.long	1                               ## Num DIEs
	.long	194
	.long	0
LNames0:
	.long	278                             ## multiply
	.long	1                               ## Num DIEs
	.long	301
	.long	0
LNames1:
	.long	225                             ## is_signed
	.long	1                               ## Num DIEs
	.long	50
	.long	0
LNames2:
	.long	287                             ## divide
	.long	1                               ## Num DIEs
	.long	370
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	1                               ## Header Bucket Count
	.long	0                               ## Header Hash Count
	.long	12                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	1                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.long	-1                              ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ## Header Magic
	.short	1                               ## Header Version
	.short	0                               ## Header Hash Function
	.long	8                               ## Header Bucket Count
	.long	8                               ## Header Hash Count
	.long	20                              ## Header Data Length
	.long	0                               ## HeaderData Die Offset Base
	.long	3                               ## HeaderData Atom Count
	.short	1                               ## DW_ATOM_die_offset
	.short	6                               ## DW_FORM_data4
	.short	3                               ## DW_ATOM_die_tag
	.short	5                               ## DW_FORM_data2
	.short	4                               ## DW_ATOM_type_flags
	.short	11                              ## DW_FORM_data1
	.long	0                               ## Bucket 0
	.long	2                               ## Bucket 1
	.long	3                               ## Bucket 2
	.long	-1                              ## Bucket 3
	.long	4                               ## Bucket 4
	.long	5                               ## Bucket 5
	.long	-1                              ## Bucket 6
	.long	7                               ## Bucket 7
	.long	249311216                       ## Hash in Bucket 0
	.long	-1855312952                     ## Hash in Bucket 0
	.long	1827201457                      ## Hash in Bucket 1
	.long	878862258                       ## Hash in Bucket 2
	.long	1457695548                      ## Hash in Bucket 4
	.long	290711645                       ## Hash in Bucket 5
	.long	-1304652851                     ## Hash in Bucket 5
	.long	290644127                       ## Hash in Bucket 7
.set Lset78, Ltypes5-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset78
.set Lset79, Ltypes0-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset79
.set Lset80, Ltypes6-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset80
.set Lset81, Ltypes7-Ltypes_begin       ## Offset in Bucket 2
	.long	Lset81
.set Lset82, Ltypes1-Ltypes_begin       ## Offset in Bucket 4
	.long	Lset82
.set Lset83, Ltypes2-Ltypes_begin       ## Offset in Bucket 5
	.long	Lset83
.set Lset84, Ltypes3-Ltypes_begin       ## Offset in Bucket 5
	.long	Lset84
.set Lset85, Ltypes4-Ltypes_begin       ## Offset in Bucket 7
	.long	Lset85
Ltypes5:
	.long	235                             ## _Bool
	.long	1                               ## Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	403                             ## division_result
	.long	1                               ## Num DIEs
	.long	547
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	338                             ## multiplication_result
	.long	1                               ## Num DIEs
	.long	477
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	250                             ## unsigned short
	.long	1                               ## Num DIEs
	.long	89
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	294                             ## addition_subtraction_result
	.long	1                               ## Num DIEs
	.long	437
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	381                             ## uint32_t
	.long	1                               ## Num DIEs
	.long	529
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	390                             ## unsigned int
	.long	1                               ## Num DIEs
	.long	540
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	241                             ## uint16_t
	.long	1                               ## Num DIEs
	.long	78
	.short	22
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
