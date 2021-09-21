	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.file	1 "/Users/jackkieny/Documents/School/Fall 2021/CSCE 231/integer-lab" "./alu.h"
	.file	2 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.globl	_add                            ## -- Begin function add
	.p2align	4, 0x90
_add:                                   ## @add
Lfunc_begin0:
	.file	3 "/Users/jackkieny/Documents/School/Fall 2021/CSCE 231/integer-lab" "alu.c"
	.loc	3 43 0                          ## alu.c:43:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: add:augend <- $edi
	##DEBUG_VALUE: add:augend <- $edi
	##DEBUG_VALUE: add:addend <- $esi
	##DEBUG_VALUE: add:addend <- $esi
	.loc	3 48 15 prologue_end            ## alu.c:48:15
	testw	%di, %di
Ltmp0:
	.loc	3 48 8 is_stmt 0                ## alu.c:48:8
	je	LBB0_10
Ltmp1:
## %bb.1:
	##DEBUG_VALUE: add:addend <- $esi
	##DEBUG_VALUE: add:augend <- $edi
	.loc	3 53 20 is_stmt 1               ## alu.c:53:20
	testw	%si, %si
Ltmp2:
	.loc	3 53 13 is_stmt 0               ## alu.c:53:13
	je	LBB0_11
Ltmp3:
## %bb.2:
	##DEBUG_VALUE: add:addend <- $esi
	##DEBUG_VALUE: add:augend <- $edi
	.loc	3 0 13                          ## alu.c:0:13
	movl	%edi, %ecx
	movl	%esi, %eax
Ltmp4:
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: add:augend <- $cx
	##DEBUG_VALUE: add:addend <- $ax
	.loc	3 68 24 is_stmt 1               ## alu.c:68:24
	movl	%ecx, %edx
	andl	%eax, %edx
Ltmp5:
	##DEBUG_VALUE: add:carry <- undef
	.loc	3 69 25                         ## alu.c:69:25
	xorl	%eax, %ecx
Ltmp6:
	##DEBUG_VALUE: add:augend <- $cx
	.loc	3 70 24                         ## alu.c:70:24
	addl	%edx, %edx
	movl	%edx, %eax
Ltmp7:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] undef
	##DEBUG_VALUE: add:addend <- $ax
	.loc	3 67 18                         ## alu.c:67:18
	testw	%dx, %dx
	.loc	3 67 5 is_stmt 0                ## alu.c:67:5
	jne	LBB0_3
Ltmp8:
## %bb.4:
	##DEBUG_VALUE: add:augend <- $cx
	##DEBUG_VALUE: add:addend <- $ax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorw	%cx, %ax
Ltmp9:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 0 5                           ## alu.c:0:5
	setne	%r8b
Ltmp10:
	.loc	3 74 25 is_stmt 1               ## alu.c:74:25
	cmpw	%di, %ax
	setb	%dl
	cmpw	%si, %ax
	setb	%cl
Ltmp11:
	.loc	3 74 39 is_stmt 0               ## alu.c:74:39
	andb	%dl, %cl
	andb	%r8b, %cl
Ltmp12:
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	.loc	3 84 8 is_stmt 1                ## alu.c:84:8
	movq	_is_signed@GOTPCREL(%rip), %rdx
	cmpb	$0, (%rdx)
Ltmp13:
	.loc	3 84 8 is_stmt 0                ## alu.c:84:8
	popq	%rbp
	je	LBB0_12
Ltmp14:
## %bb.5:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	.loc	3 85 29 is_stmt 1               ## alu.c:85:29
	movl	%esi, %edx
	orw	%di, %dx
	js	LBB0_7
Ltmp15:
## %bb.6:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	testw	%ax, %ax
	js	LBB0_9
Ltmp16:
LBB0_7:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 86 34                         ## alu.c:86:34
	testw	%di, %si
	jns	LBB0_13
Ltmp17:
## %bb.8:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	testw	%ax, %ax
	js	LBB0_13
Ltmp18:
LBB0_9:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 0 34 is_stmt 0                ## alu.c:0:34
	movl	%eax, %esi
	movb	$1, %cl
Ltmp19:
	jmp	LBB0_16
Ltmp20:
LBB0_10:
	##DEBUG_VALUE: add:addend <- $esi
	##DEBUG_VALUE: add:augend <- $edi
	xorl	%ecx, %ecx
	jmp	LBB0_16
Ltmp21:
LBB0_11:
	##DEBUG_VALUE: add:addend <- $esi
	##DEBUG_VALUE: add:augend <- $edi
	xorl	%ecx, %ecx
	movl	%edi, %esi
Ltmp22:
	##DEBUG_VALUE: add:addend <- [DW_OP_LLVM_entry_value 1] $esi
	jmp	LBB0_16
Ltmp23:
LBB0_13:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 87 34 is_stmt 1               ## alu.c:87:34
	orl	%eax, %edx
	xorl	%r9d, %r9d
	testw	%dx, %dx
	movzbl	%cl, %r8d
	movl	%r8d, %ecx
Ltmp24:
	cmovnsl	%r9d, %ecx
	testw	%di, %dx
	js	LBB0_15
Ltmp25:
LBB0_12:
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 0 34 is_stmt 0                ## alu.c:0:34
	movl	%eax, %esi
Ltmp26:
LBB0_16:
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $si
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 16 8] $cl
	.loc	3 92 1 is_stmt 1                ## alu.c:92:1
	movzbl	%cl, %ecx
Ltmp27:
	shll	$16, %ecx
	movzwl	%si, %eax
	orl	%ecx, %eax
	retq
Ltmp28:
LBB0_15:
	##DEBUG_VALUE: add:result_sign <- [DW_OP_constu 15, DW_OP_shr, DW_OP_stack_value] $ax
	##DEBUG_VALUE: add:addition <- [DW_OP_LLVM_fragment 0 16] $ax
	.loc	3 88 54                         ## alu.c:88:54
	testw	%si, %ax
	cmovsl	%r9d, %r8d
	movl	%eax, %esi
Ltmp29:
	.loc	3 0 0 is_stmt 0                 ## alu.c:0:0
	movl	%r8d, %ecx
	jmp	LBB0_16
Ltmp30:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_subtract                       ## -- Begin function subtract
	.p2align	4, 0x90
_subtract:                              ## @subtract
Lfunc_begin1:
	.loc	3 97 0 is_stmt 1                ## alu.c:97:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: subtract:menuend <- $edi
	##DEBUG_VALUE: subtract:subtrahend <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
Ltmp31:
	##DEBUG_VALUE: subtract:augend <- $edi
	movl	%edi, %ebx
Ltmp32:
	##DEBUG_VALUE: subtract:i <- 1
	##DEBUG_VALUE: subtract:augend <- $ebx
	##DEBUG_VALUE: subtract:subtrahend <- $esi
	##DEBUG_VALUE: subtract:menuend <- $ebx
	.loc	3 100 23 prologue_end           ## alu.c:100:23
	xorl	$65535, %esi                    ## imm = 0xFFFF
Ltmp33:
	##DEBUG_VALUE: subtract:subtrahend <- [DW_OP_LLVM_entry_value 1] $esi
	movl	%esi, %edi
	movl	$1, %esi
	callq	_add
Ltmp34:
	.loc	3 111 12                        ## alu.c:111:12
	movzwl	%ax, %esi
Ltmp35:
	##DEBUG_VALUE: subtract:addend <- $esi
	movl	%ebx, %edi
Ltmp36:
	##DEBUG_VALUE: subtract:augend <- $edi
	##DEBUG_VALUE: subtract:menuend <- $edi
	callq	_add
Ltmp37:
	.loc	3 112 1                         ## alu.c:112:1
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
Ltmp38:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.globl	_multiply                       ## -- Begin function multiply
	.p2align	4, 0x90
_multiply:                              ## @multiply
Lfunc_begin2:
	.loc	3 118 0                         ## alu.c:118:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: multiply:multiplicand <- $edi
	##DEBUG_VALUE: multiply:multiplier <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp39:
	.loc	3 131 5 prologue_end            ## alu.c:131:5
	xorl	%eax, %eax
	xorl	%edx, %edx
	popq	%rbp
	retq
Ltmp40:
Lfunc_end2:
	.cfi_endproc
                                        ## -- End function
	.globl	_divide                         ## -- Begin function divide
	.p2align	4, 0x90
_divide:                                ## @divide
Lfunc_begin3:
	.loc	3 138 0                         ## alu.c:138:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: divide:dividend <- $edi
	##DEBUG_VALUE: divide:divisor <- $esi
	##DEBUG_VALUE: divide:divisor <- $esi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp41:
	.loc	3 146 15 prologue_end           ## alu.c:146:15
	xorl	%eax, %eax
	testw	%si, %si
	sete	%al
Ltmp42:
	##DEBUG_VALUE: divide:division <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 48 7, DW_OP_stack_value, DW_OP_LLVM_fragment 32 8] $al
	.loc	3 156 1                         ## alu.c:156:1
	shlq	$32, %rax
Ltmp43:
	popq	%rbp
	retq
Ltmp44:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.comm	_is_signed,1,0                  ## @is_signed
	.file	4 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp4-Lfunc_begin0
	.quad	Lset1
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset2, Ltmp4-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp11-Lfunc_begin0
	.quad	Lset3
	.short	1                               ## Loc expr size
	.byte	82                              ## super-register DW_OP_reg2
.set Lset4, Ltmp20-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp23-Lfunc_begin0
	.quad	Lset5
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Lfunc_begin0-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp4-Lfunc_begin0
	.quad	Lset7
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset8, Ltmp4-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp9-Lfunc_begin0
	.quad	Lset9
	.short	1                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
.set Lset10, Ltmp20-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp22-Lfunc_begin0
	.quad	Lset11
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset12, Ltmp22-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp23-Lfunc_begin0
	.quad	Lset13
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset14, Ltmp9-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp12-Lfunc_begin0
	.quad	Lset15
	.short	3                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset16, Ltmp12-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp19-Lfunc_begin0
	.quad	Lset17
	.short	6                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	82                              ## super-register DW_OP_reg2
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset18, Ltmp19-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp20-Lfunc_begin0
	.quad	Lset19
	.short	3                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset20, Ltmp23-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp24-Lfunc_begin0
	.quad	Lset21
	.short	6                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	82                              ## super-register DW_OP_reg2
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset22, Ltmp24-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp26-Lfunc_begin0
	.quad	Lset23
	.short	3                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset24, Ltmp26-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp27-Lfunc_begin0
	.quad	Lset25
	.short	6                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.byte	82                              ## super-register DW_OP_reg2
	.byte	147                             ## DW_OP_piece
	.byte	1                               ## 1
.set Lset26, Ltmp27-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp28-Lfunc_begin0
	.quad	Lset27
	.short	3                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
.set Lset28, Ltmp28-Lfunc_begin0
	.quad	Lset28
.set Lset29, Lfunc_end0-Lfunc_begin0
	.quad	Lset29
	.short	3                               ## Loc expr size
	.byte	80                              ## super-register DW_OP_reg0
	.byte	147                             ## DW_OP_piece
	.byte	2                               ## 2
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset30, Ltmp12-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp20-Lfunc_begin0
	.quad	Lset31
	.short	10                              ## Loc expr size
	.byte	112                             ## DW_OP_breg0
	.byte	0                               ## 0
	.byte	16                              ## DW_OP_constu
	.byte	255                             ## 65535
	.byte	255                             ## 
	.byte	3                               ## 
	.byte	26                              ## DW_OP_and
	.byte	63                              ## DW_OP_lit15
	.byte	37                              ## DW_OP_shr
	.byte	159                             ## DW_OP_stack_value
.set Lset32, Ltmp23-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp26-Lfunc_begin0
	.quad	Lset33
	.short	10                              ## Loc expr size
	.byte	112                             ## DW_OP_breg0
	.byte	0                               ## 0
	.byte	16                              ## DW_OP_constu
	.byte	255                             ## 65535
	.byte	255                             ## 
	.byte	3                               ## 
	.byte	26                              ## DW_OP_and
	.byte	63                              ## DW_OP_lit15
	.byte	37                              ## DW_OP_shr
	.byte	159                             ## DW_OP_stack_value
.set Lset34, Ltmp28-Lfunc_begin0
	.quad	Lset34
.set Lset35, Lfunc_end0-Lfunc_begin0
	.quad	Lset35
	.short	10                              ## Loc expr size
	.byte	112                             ## DW_OP_breg0
	.byte	0                               ## 0
	.byte	16                              ## DW_OP_constu
	.byte	255                             ## 65535
	.byte	255                             ## 
	.byte	3                               ## 
	.byte	26                              ## DW_OP_and
	.byte	63                              ## DW_OP_lit15
	.byte	37                              ## DW_OP_shr
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset36, Lfunc_begin1-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp32-Lfunc_begin0
	.quad	Lset37
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset38, Ltmp32-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp36-Lfunc_begin0
	.quad	Lset39
	.short	1                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
.set Lset40, Ltmp36-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp37-Lfunc_begin0
	.quad	Lset41
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset42, Lfunc_begin1-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp33-Lfunc_begin0
	.quad	Lset43
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
.set Lset44, Ltmp33-Lfunc_begin0
	.quad	Lset44
.set Lset45, Lfunc_end1-Lfunc_begin0
	.quad	Lset45
	.short	4                               ## Loc expr size
	.byte	163                             ## DW_OP_entry_value
	.byte	1                               ## 1
	.byte	84                              ## super-register DW_OP_reg4
	.byte	159                             ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset46, Ltmp31-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp32-Lfunc_begin0
	.quad	Lset47
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
.set Lset48, Ltmp32-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp36-Lfunc_begin0
	.quad	Lset49
	.short	1                               ## Loc expr size
	.byte	83                              ## super-register DW_OP_reg3
.set Lset50, Ltmp36-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp37-Lfunc_begin0
	.quad	Lset51
	.short	1                               ## Loc expr size
	.byte	85                              ## super-register DW_OP_reg5
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset52, Ltmp35-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp37-Lfunc_begin0
	.quad	Lset53
	.short	1                               ## Loc expr size
	.byte	84                              ## super-register DW_OP_reg4
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset54, Ltmp42-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp43-Lfunc_begin0
	.quad	Lset55
	.short	14                              ## Loc expr size
	.byte	147                             ## DW_OP_piece
	.byte	4                               ## 4
	.byte	112                             ## DW_OP_breg0
	.byte	0                               ## 0
	.byte	16                              ## DW_OP_constu
	.byte	255                             ## 255
	.byte	1                               ## 
	.byte	26                              ## DW_OP_and
	.byte	16                              ## DW_OP_constu
	.byte	1                               ## 1
	.byte	26                              ## DW_OP_and
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
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	28                              ## DW_AT_const_value
	.byte	13                              ## DW_FORM_sdata
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
	.byte	10                              ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	1                               ## DW_CHILDREN_yes
	.byte	127                             ## DW_AT_call_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	125                             ## DW_AT_call_return_pc
	.byte	1                               ## DW_FORM_addr
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	73                              ## DW_TAG_call_site_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	126                             ## DW_AT_call_value
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
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
	.byte	13                              ## Abbreviation Code
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
	.byte	14                              ## Abbreviation Code
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
.set Lset56, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset56
Ldebug_info_start0:
	.short	4                               ## DWARF version number
.set Lset57, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset57
	.byte	8                               ## Address Size (in bytes)
	.byte	1                               ## Abbrev [1] 0xb:0x297 DW_TAG_compile_unit
	.long	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.long	48                              ## DW_AT_name
	.long	54                              ## DW_AT_LLVM_sysroot
	.long	149                             ## DW_AT_APPLE_sdk
.set Lset58, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset58
	.long	160                             ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset59, Lfunc_end3-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset59
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
	.byte	5                               ## Abbrev [5] 0x60:0x8d DW_TAG_subprogram
	.quad	Lfunc_begin0                    ## DW_AT_low_pc
.set Lset60, Lfunc_end0-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset60
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	265                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	43                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	504                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                               ## Abbrev [6] 0x79:0xf DW_TAG_formal_parameter
.set Lset61, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset61
	.long	455                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	43                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x88:0xf DW_TAG_formal_parameter
.set Lset62, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset62
	.long	462                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	43                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x97:0xb DW_TAG_variable
	.long	469                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	65                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xa2:0xf DW_TAG_variable
.set Lset63, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset63
	.long	475                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	44                              ## DW_AT_decl_line
	.long	504                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0xb1:0xf DW_TAG_variable
.set Lset64, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset64
	.long	484                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	82                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0xc0:0xb DW_TAG_variable
	.long	496                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	59                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0xcb:0xb DW_TAG_variable
	.long	508                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	60                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0xd6:0xb DW_TAG_variable
	.long	520                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	62                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0xe1:0xb DW_TAG_variable
	.long	532                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	63                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0xed:0x89 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ## DW_AT_low_pc
.set Lset65, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset65
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	269                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	97                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	504                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	6                               ## Abbrev [6] 0x106:0xf DW_TAG_formal_parameter
.set Lset66, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset66
	.long	544                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	97                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x115:0xf DW_TAG_formal_parameter
.set Lset67, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset67
	.long	552                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	97                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x124:0xf DW_TAG_variable
.set Lset68, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset68
	.long	455                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	98                              ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	9                               ## Abbrev [9] 0x133:0xc DW_TAG_variable
	.byte	1                               ## DW_AT_const_value
	.long	563                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	99                              ## DW_AT_decl_line
	.long	666                             ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x13f:0xf DW_TAG_variable
.set Lset69, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset69
	.long	462                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	100                             ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	10                              ## Abbrev [10] 0x14e:0x13 DW_TAG_call_site
	.long	96                              ## DW_AT_call_origin
	.quad	Ltmp34                          ## DW_AT_call_return_pc
	.byte	11                              ## Abbrev [11] 0x15b:0x5 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	1                               ## DW_AT_call_value
	.byte	49
	.byte	0                               ## End Of Children Mark
	.byte	10                              ## Abbrev [10] 0x161:0x14 DW_TAG_call_site
	.long	96                              ## DW_AT_call_origin
	.quad	Ltmp37                          ## DW_AT_call_return_pc
	.byte	11                              ## Abbrev [11] 0x16e:0x6 DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	2                               ## DW_AT_call_value
	.byte	115
	.byte	0
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x176:0x3f DW_TAG_subprogram
	.quad	Lfunc_begin2                    ## DW_AT_low_pc
.set Lset70, Lfunc_end2-Lfunc_begin2    ## DW_AT_high_pc
	.long	Lset70
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	278                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	118                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	544                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	12                              ## Abbrev [12] 0x18f:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	569                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	118                             ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0x19c:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	582                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	118                             ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x1a9:0xb DW_TAG_variable
	.long	593                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	119                             ## DW_AT_decl_line
	.long	544                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x1b5:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ## DW_AT_low_pc
.set Lset71, Lfunc_end3-Lfunc_begin3    ## DW_AT_high_pc
	.long	Lset71
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	287                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	138                             ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	614                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	12                              ## Abbrev [12] 0x1ce:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	608                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	138                             ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	12                              ## Abbrev [12] 0x1db:0xd DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.long	617                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	138                             ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	8                               ## Abbrev [8] 0x1e8:0xf DW_TAG_variable
.set Lset72, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset72
	.long	625                             ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	139                             ## DW_AT_decl_line
	.long	614                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x1f8:0xb DW_TAG_typedef
	.long	515                             ## DW_AT_type
	.long	294                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	27                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x203:0x1d DW_TAG_structure_type
	.byte	4                               ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	24                              ## DW_AT_decl_line
	.byte	14                              ## Abbrev [14] 0x207:0xc DW_TAG_member
	.long	322                             ## DW_AT_name
	.long	78                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	25                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	14                              ## Abbrev [14] 0x213:0xc DW_TAG_member
	.long	329                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	26                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x220:0xb DW_TAG_typedef
	.long	555                             ## DW_AT_type
	.long	338                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	33                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x22b:0x29 DW_TAG_structure_type
	.byte	12                              ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	29                              ## DW_AT_decl_line
	.byte	14                              ## Abbrev [14] 0x22f:0xc DW_TAG_member
	.long	360                             ## DW_AT_name
	.long	78                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	14                              ## Abbrev [14] 0x23b:0xc DW_TAG_member
	.long	368                             ## DW_AT_name
	.long	596                             ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	4                               ## DW_AT_data_member_location
	.byte	14                              ## Abbrev [14] 0x247:0xc DW_TAG_member
	.long	329                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	32                              ## DW_AT_decl_line
	.byte	8                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	4                               ## Abbrev [4] 0x254:0xb DW_TAG_typedef
	.long	607                             ## DW_AT_type
	.long	381                             ## DW_AT_name
	.byte	4                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	3                               ## Abbrev [3] 0x25f:0x7 DW_TAG_base_type
	.long	390                             ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	4                               ## Abbrev [4] 0x266:0xb DW_TAG_typedef
	.long	625                             ## DW_AT_type
	.long	403                             ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	39                              ## DW_AT_decl_line
	.byte	13                              ## Abbrev [13] 0x271:0x29 DW_TAG_structure_type
	.byte	6                               ## DW_AT_byte_size
	.byte	1                               ## DW_AT_decl_file
	.byte	35                              ## DW_AT_decl_line
	.byte	14                              ## Abbrev [14] 0x275:0xc DW_TAG_member
	.long	419                             ## DW_AT_name
	.long	89                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	36                              ## DW_AT_decl_line
	.byte	0                               ## DW_AT_data_member_location
	.byte	14                              ## Abbrev [14] 0x281:0xc DW_TAG_member
	.long	428                             ## DW_AT_name
	.long	89                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	37                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_data_member_location
	.byte	14                              ## Abbrev [14] 0x28d:0xc DW_TAG_member
	.long	438                             ## DW_AT_name
	.long	71                              ## DW_AT_type
	.byte	1                               ## DW_AT_decl_file
	.byte	38                              ## DW_AT_decl_line
	.byte	4                               ## DW_AT_data_member_location
	.byte	0                               ## End Of Children Mark
	.byte	3                               ## Abbrev [3] 0x29a:0x7 DW_TAG_base_type
	.long	565                             ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
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
	.asciz	"carry"                         ## string offset=469
	.asciz	"addition"                      ## string offset=475
	.asciz	"result_sign"                   ## string offset=484
	.asciz	"augend_orig"                   ## string offset=496
	.asciz	"addend_orig"                   ## string offset=508
	.asciz	"augend_sign"                   ## string offset=520
	.asciz	"addend_sign"                   ## string offset=532
	.asciz	"menuend"                       ## string offset=544
	.asciz	"subtrahend"                    ## string offset=552
	.asciz	"i"                             ## string offset=563
	.asciz	"int"                           ## string offset=565
	.asciz	"multiplicand"                  ## string offset=569
	.asciz	"multiplier"                    ## string offset=582
	.asciz	"multiplication"                ## string offset=593
	.asciz	"dividend"                      ## string offset=608
	.asciz	"divisor"                       ## string offset=617
	.asciz	"division"                      ## string offset=625
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
	.long	237
	.long	0
LNames0:
	.long	278                             ## multiply
	.long	1                               ## Num DIEs
	.long	374
	.long	0
LNames1:
	.long	225                             ## is_signed
	.long	1                               ## Num DIEs
	.long	50
	.long	0
LNames2:
	.long	287                             ## divide
	.long	1                               ## Num DIEs
	.long	437
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
	.long	9                               ## Header Bucket Count
	.long	9                               ## Header Hash Count
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
	.long	-1                              ## Bucket 4
	.long	5                               ## Bucket 5
	.long	-1                              ## Bucket 6
	.long	-1                              ## Bucket 7
	.long	6                               ## Bucket 8
	.long	878862258                       ## Hash in Bucket 0
	.long	1457695548                      ## Hash in Bucket 0
	.long	1827201457                      ## Hash in Bucket 1
	.long	193495088                       ## Hash in Bucket 2
	.long	249311216                       ## Hash in Bucket 2
	.long	-1304652851                     ## Hash in Bucket 5
	.long	290644127                       ## Hash in Bucket 8
	.long	290711645                       ## Hash in Bucket 8
	.long	-1855312952                     ## Hash in Bucket 8
.set Lset78, Ltypes7-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset78
.set Lset79, Ltypes1-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset79
.set Lset80, Ltypes6-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset80
.set Lset81, Ltypes8-Ltypes_begin       ## Offset in Bucket 2
	.long	Lset81
.set Lset82, Ltypes5-Ltypes_begin       ## Offset in Bucket 2
	.long	Lset82
.set Lset83, Ltypes3-Ltypes_begin       ## Offset in Bucket 5
	.long	Lset83
.set Lset84, Ltypes4-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset84
.set Lset85, Ltypes2-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset85
.set Lset86, Ltypes0-Ltypes_begin       ## Offset in Bucket 8
	.long	Lset86
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
	.long	504
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	338                             ## multiplication_result
	.long	1                               ## Num DIEs
	.long	544
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	565                             ## int
	.long	1                               ## Num DIEs
	.long	666
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	235                             ## _Bool
	.long	1                               ## Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	390                             ## unsigned int
	.long	1                               ## Num DIEs
	.long	607
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
Ltypes2:
	.long	381                             ## uint32_t
	.long	1                               ## Num DIEs
	.long	596
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	403                             ## division_result
	.long	1                               ## Num DIEs
	.long	614
	.short	22
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
