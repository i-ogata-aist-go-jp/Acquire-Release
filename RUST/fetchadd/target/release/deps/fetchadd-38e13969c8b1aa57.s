	.text
	.file	"fetchadd.83xo6wtw-cgu.0"
	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	movq	%rsp, %rax
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E, .Lfunc_end0-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E
	.cfi_endproc

	.section	.text._ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE,@function
_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movabsq	$-10000000000, %rax
	.p2align	4, 0x90
.LBB1_1:
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	lock		addq	$1, 16(%rdi)
	addq	$8, %rax
	jne	.LBB1_1
	lock		subq	$1, (%rdi)
	jne	.LBB1_4
	#MEMBARRIER
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE
.LBB1_4:
	movq	%rsp, %rax
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE, .Lfunc_end1-_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE
	.cfi_endproc

	.section	.text._ZN3std2rt10lang_start17haf9641e2178a5107E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17haf9641e2178a5107E
	.globl	_ZN3std2rt10lang_start17haf9641e2178a5107E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17haf9641e2178a5107E,@function
_ZN3std2rt10lang_start17haf9641e2178a5107E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, (%rsp)
	leaq	.L__unnamed_1(%rip), %rsi
	movq	%rsp, %rdi
	callq	*_ZN3std2rt19lang_start_internal17ha53ab63f88fee728E@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start17haf9641e2178a5107E, .Lfunc_end2-_ZN3std2rt10lang_start17haf9641e2178a5107E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E, .Lfunc_end3-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h61d1f2035e868611E
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE, .Lfunc_end4-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movb	$1, %r13b
.Ltmp0:
	movb	$1, %bpl
	callq	*_ZN3std6thread6Thread5cname17h1d22449f769293c4E@GOTPCREL(%rip)
.Ltmp1:
	testq	%rax, %rax
	je	.LBB5_3
.Ltmp2:
	movb	$1, %bpl
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*_ZN3std3sys4unix6thread6Thread8set_name17hcb8af76e35a00413E@GOTPCREL(%rip)
.Ltmp3:
.LBB5_3:
	movq	8(%r15), %rdi
	movq	16(%r15), %rsi
	xorl	%ebp, %ebp
.Ltmp4:
	callq	*_ZN3std2io5stdio9set_print17hc4152c8d7d4e9accE@GOTPCREL(%rip)
.Ltmp5:
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB5_8
	movq	%rdx, %r12
.Ltmp6:
	movq	%rbx, %rdi
	callq	*(%rdx)
.Ltmp7:
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB5_8
	movq	16(%r12), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_8:
	movq	24(%r15), %rdi
	movq	32(%r15), %rsi
	xorl	%r13d, %r13d
.Ltmp9:
	xorl	%ebp, %ebp
	callq	*_ZN3std2io5stdio9set_panic17hcf1e5c38cefca0deE@GOTPCREL(%rip)
.Ltmp10:
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB5_13
	movq	%rdx, %r12
.Ltmp11:
	movq	%rbx, %rdi
	callq	*(%rdx)
.Ltmp12:
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB5_13
	movq	16(%r12), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_13:
	xorl	%r13d, %r13d
.Ltmp14:
	movq	%rsp, %rdi
	xorl	%ebp, %ebp
	callq	*_ZN3std3sys4unix6thread5guard7current17h1cade2fb3866dbc6E@GOTPCREL(%rip)
.Ltmp15:
	movq	(%r15), %rsi
.Ltmp17:
	movq	%rsp, %rdi
	callq	*_ZN3std10sys_common11thread_info3set17hb1c900a8eba5ed39E@GOTPCREL(%rip)
.Ltmp18:
	movq	40(%r15), %rdi
	callq	_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17he7768736e2d6d4afE
	movq	48(%r15), %rbx
	cmpq	$0, 16(%rbx)
	je	.LBB5_20
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_20
	movq	32(%rbx), %rax
.Ltmp20:
	callq	*(%rax)
.Ltmp21:
	movq	32(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB5_20
	movq	24(%rbx), %rdi
	movq	16(%rax), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB5_20:
	addq	$48, %r15
	movq	$1, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	(%r15), %rax
	lock		subq	$1, (%rax)
	jne	.LBB5_31
	#MEMBARRIER
	movq	%r15, %rdi
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.LBB5_31:
	.cfi_def_cfa_offset 80
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_22:
	.cfi_def_cfa_offset 80
.Ltmp22:
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	movq	32(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	$1, 16(%rbx)
	movq	$0, 24(%rbx)
	jmp	.LBB5_23
.LBB5_26:
.Ltmp13:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	%r15, %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	jmp	.LBB5_27
.LBB5_32:
.Ltmp8:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	%r15, %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	jmp	.LBB5_25
.LBB5_30:
.Ltmp19:
	movq	%rax, %r14
	jmp	.LBB5_27
.LBB5_28:
.Ltmp16:
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	testb	%bpl, %bpl
	je	.LBB5_24
	leaq	8(%r15), %rdi
	callq	_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E
.LBB5_24:
	testb	%r13b, %r13b
	je	.LBB5_27
.LBB5_25:
	leaq	24(%r15), %rdi
	callq	_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E
.LBB5_27:
	leaq	40(%r15), %rdi
	callq	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
.LBB5_23:
	addq	$48, %r15
	movq	%r15, %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E, .Lfunc_end5-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp0
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Ltmp7-.Ltmp6
	.uleb128 .Ltmp8-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp9-.Lfunc_begin0
	.uleb128 .Ltmp10-.Ltmp9
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin0
	.uleb128 .Ltmp12-.Ltmp11
	.uleb128 .Ltmp13-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp14-.Lfunc_begin0
	.uleb128 .Ltmp15-.Ltmp14
	.uleb128 .Ltmp16-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin0
	.uleb128 .Ltmp18-.Ltmp17
	.uleb128 .Ltmp19-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp22-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin0
	.uleb128 .Lfunc_end5-.Ltmp21
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17h194ef8c87e465907E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h194ef8c87e465907E,@function
_ZN4core3ptr13drop_in_place17h194ef8c87e465907E:
	.cfi_startproc
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB6_2
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB6_2
	movl	$1, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_2:
	retq
.Lfunc_end6:
	.size	_ZN4core3ptr13drop_in_place17h194ef8c87e465907E, .Lfunc_end6-_ZN4core3ptr13drop_in_place17h194ef8c87e465907E
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E,@function
_ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	je	.LBB7_2
	leaq	8(%rbx), %rdi
.Ltmp23:
	callq	*_ZN72_$LT$std..sys..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91b5d26bc9ceb57cE@GOTPCREL(%rip)
.Ltmp24:
.LBB7_2:
	movq	16(%rbx), %rax
	lock		subq	$1, (%rax)
	jne	.LBB7_4
	leaq	16(%rbx), %rdi
	#MEMBARRIER
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
.LBB7_4:
	movq	24(%rbx), %rax
	lock		subq	$1, (%rax)
	jne	.LBB7_5
	addq	$24, %rbx
	#MEMBARRIER
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.LBB7_5:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_6:
	.cfi_def_cfa_offset 32
.Ltmp25:
	movq	%rax, %r14
	leaq	16(%rbx), %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	addq	$24, %rbx
	movq	%rbx, %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end7:
	.size	_ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E, .Lfunc_end7-_ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table7:
.Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp23-.Lfunc_begin1
	.uleb128 .Ltmp24-.Ltmp23
	.uleb128 .Ltmp25-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin1
	.uleb128 .Lfunc_end7-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end1:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E,@function
_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E:
	.cfi_startproc
	movq	(%rdi), %rax
	lock		subq	$1, (%rax)
	jne	.LBB8_1
	#MEMBARRIER
	movq	(%rdi), %rdi
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE
.LBB8_1:
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E, .Lfunc_end8-_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E,@function
_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB9_5
	movq	8(%rbx), %rax
.Ltmp26:
	callq	*(%rax)
.Ltmp27:
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB9_5
	movq	(%rbx), %rdi
	movq	16(%rax), %rdx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_5:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB9_4:
	.cfi_def_cfa_offset 32
.Ltmp28:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end9:
	.size	_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E, .Lfunc_end9-_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp26-.Lfunc_begin2
	.uleb128 .Ltmp27-.Ltmp26
	.uleb128 .Ltmp28-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp27-.Lfunc_begin2
	.uleb128 .Lfunc_end9-.Ltmp27
	.byte	0
	.byte	0
.Lcst_end2:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17h499a337b1014d17fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE,@function
_ZN4core3ptr13drop_in_place17h499a337b1014d17fE:
	.cfi_startproc
	movq	(%rdi), %rax
	lock		subq	$1, (%rax)
	jne	.LBB10_1
	#MEMBARRIER
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.LBB10_1:
	retq
.Lfunc_end10:
	.size	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE, .Lfunc_end10-_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17h6738408af4844283E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h6738408af4844283E,@function
_ZN4core3ptr13drop_in_place17h6738408af4844283E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	lock		subq	$1, (%rax)
	jne	.LBB11_2
	#MEMBARRIER
	movq	%rbx, %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
.LBB11_2:
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_6
	movq	16(%rbx), %rax
.Ltmp29:
	callq	*(%rax)
.Ltmp30:
	movq	16(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_6
	movq	8(%rbx), %rdi
	movq	16(%rax), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_6:
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_10
	movq	32(%rbx), %rax
.Ltmp32:
	callq	*(%rax)
.Ltmp33:
	movq	32(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_10
	movq	24(%rbx), %rdi
	movq	16(%rax), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_10:
	movq	40(%rbx), %rax
	lock		subq	$1, (%rax)
	jne	.LBB11_11
	#MEMBARRIER
	movq	40(%rbx), %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE
.LBB11_11:
	movq	48(%rbx), %rax
	lock		subq	$1, (%rax)
	jne	.LBB11_12
	addq	$48, %rbx
	#MEMBARRIER
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.LBB11_12:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB11_14:
	.cfi_def_cfa_offset 32
.Ltmp34:
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	movq	32(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	jmp	.LBB11_16
.LBB11_15:
.Ltmp31:
	movq	%rax, %r14
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	leaq	24(%rbx), %rdi
	callq	_ZN4core3ptr13drop_in_place17h3c0c0c1a1641ca96E
.LBB11_16:
	leaq	40(%rbx), %rdi
	callq	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
	addq	$48, %rbx
	movq	%rbx, %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end11:
	.size	_ZN4core3ptr13drop_in_place17h6738408af4844283E, .Lfunc_end11-_ZN4core3ptr13drop_in_place17h6738408af4844283E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table11:
.Lexception3:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp29-.Lfunc_begin3
	.uleb128 .Ltmp30-.Ltmp29
	.uleb128 .Ltmp31-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin3
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp33-.Lfunc_begin3
	.uleb128 .Lfunc_end11-.Ltmp33
	.byte	0
	.byte	0
.Lcst_end3:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17haf43afd2cafc700aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17haf43afd2cafc700aE,@function
_ZN4core3ptr13drop_in_place17haf43afd2cafc700aE:
	.cfi_startproc
	retq
.Lfunc_end12:
	.size	_ZN4core3ptr13drop_in_place17haf43afd2cafc700aE, .Lfunc_end12-_ZN4core3ptr13drop_in_place17haf43afd2cafc700aE
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE,@function
_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %rax
.Ltmp35:
	callq	*(%rax)
.Ltmp36:
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB13_2
	movq	(%rbx), %rdi
	movq	16(%rax), %rdx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB13_2:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB13_3:
	.cfi_def_cfa_offset 32
.Ltmp37:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end13:
	.size	_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE, .Lfunc_end13-_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception4:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp35-.Lfunc_begin4
	.uleb128 .Ltmp36-.Ltmp35
	.uleb128 .Ltmp37-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp36-.Lfunc_begin4
	.uleb128 .Lfunc_end13-.Ltmp36
	.byte	0
	.byte	0
.Lcst_end4:
	.p2align	2

	.section	.text._ZN4core3ptr13drop_in_place17hbc85b2667d006280E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E,@function
_ZN4core3ptr13drop_in_place17hbc85b2667d006280E:
	.cfi_startproc
	movq	(%rdi), %rax
	lock		subq	$1, (%rax)
	jne	.LBB14_1
	#MEMBARRIER
	jmp	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
.LBB14_1:
	retq
.Lfunc_end14:
	.size	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E, .Lfunc_end14-_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17hd84338e37703e353E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17hd84338e37703e353E,@function
_ZN4core3ptr13drop_in_place17hd84338e37703e353E:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpb	$2, (%rdi)
	jae	.LBB15_1
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB15_1:
	.cfi_def_cfa_offset 32
	movq	%rdi, %r15
	movq	8(%rdi), %rbx
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
.Ltmp38:
	callq	*(%rax)
.Ltmp39:
	movq	8(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB15_4
	movq	(%rbx), %rdi
	movq	16(%rax), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB15_4:
	movq	8(%r15), %rdi
	movl	$24, %esi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB15_6:
	.cfi_def_cfa_offset 32
.Ltmp40:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	8(%r15), %rdi
	callq	_ZN5alloc5alloc8box_free17h364e719565a887beE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end15:
	.size	_ZN4core3ptr13drop_in_place17hd84338e37703e353E, .Lfunc_end15-_ZN4core3ptr13drop_in_place17hd84338e37703e353E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table15:
.Lexception5:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp38-.Lfunc_begin5
	.uleb128 .Ltmp39-.Ltmp38
	.uleb128 .Ltmp40-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp39-.Lfunc_begin5
	.uleb128 .Lfunc_end15-.Ltmp39
	.byte	0
	.byte	0
.Lcst_end5:
	.p2align	2

	.section	".text._ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E,@function
_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rbx
	cmpq	$0, 16(%rbx)
	je	.LBB16_6
	movq	%rdi, %r14
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_5
	movq	32(%rbx), %rax
.Ltmp41:
	callq	*(%rax)
.Ltmp42:
	movq	32(%rbx), %rax
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB16_5
	movq	24(%rbx), %rdi
	movq	16(%rax), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_5:
	movq	(%r14), %rbx
.LBB16_6:
	cmpq	$-1, %rbx
	je	.LBB16_8
	lock		subq	$1, 8(%rbx)
	jne	.LBB16_8
	#MEMBARRIER
	movl	$40, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_8:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB16_9:
	.cfi_def_cfa_offset 32
.Ltmp43:
	movq	%rax, %r14
	movq	24(%rbx), %rdi
	movq	32(%rbx), %rsi
	callq	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end16:
	.size	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E, .Lfunc_end16-_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp41-.Lfunc_begin6
	.uleb128 .Ltmp42-.Ltmp41
	.uleb128 .Ltmp43-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp42-.Lfunc_begin6
	.uleb128 .Lfunc_end16-.Ltmp42
	.byte	0
	.byte	0
.Lcst_end6:
	.p2align	2

	.section	".text._ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE,@function
_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE:
	.cfi_startproc
	cmpq	$-1, %rdi
	je	.LBB17_2
	lock		subq	$1, 8(%rdi)
	jne	.LBB17_2
	#MEMBARRIER
	movl	$24, %esi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB17_2:
	retq
.Lfunc_end17:
	.size	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE, .Lfunc_end17-_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE
	.cfi_endproc

	.section	".text._ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE,@function
_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB18_4
	movb	$0, (%rax)
	movq	24(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB18_3
	movq	16(%rdi), %rdi
	movl	$1, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_3:
	movq	(%rbx), %rdi
.LBB18_4:
	cmpq	$-1, %rdi
	je	.LBB18_6
	lock		subq	$1, 8(%rdi)
	jne	.LBB18_6
	#MEMBARRIER
	movl	$48, %esi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_6:
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE, .Lfunc_end18-_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc8box_free17h364e719565a887beE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc8box_free17h364e719565a887beE,@function
_ZN5alloc5alloc8box_free17h364e719565a887beE:
	.cfi_startproc
	movl	$24, %esi
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.Lfunc_end19:
	.size	_ZN5alloc5alloc8box_free17h364e719565a887beE, .Lfunc_end19-_ZN5alloc5alloc8box_free17h364e719565a887beE
	.cfi_endproc

	.section	.text._ZN5alloc5alloc8box_free17h683ac22e63e2825fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE,@function
_ZN5alloc5alloc8box_free17h683ac22e63e2825fE:
	.cfi_startproc
	movq	%rsi, %rax
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB20_1
	movq	16(%rax), %rdx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB20_1:
	retq
.Lfunc_end20:
	.size	_ZN5alloc5alloc8box_free17h683ac22e63e2825fE, .Lfunc_end20-_ZN5alloc5alloc8box_free17h683ac22e63e2825fE
	.cfi_endproc

	.section	".text._ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E,@function
_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h1b9a3fd174d52e0aE@GOTPCREL(%rip)
.Lfunc_end21:
	.size	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E, .Lfunc_end21-_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI22_0:
	.quad	1
	.quad	1
	.section	.text._ZN8fetchadd4main17h141726ac67279f5eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN8fetchadd4main17h141726ac67279f5eE,@function
_ZN8fetchadd4main17h141726ac67279f5eE:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$24, %edi
	movl	$8, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB22_1
	movq	%rax, %r12
	movaps	.LCPI22_0(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movq	%rax, 64(%rsp)
	lock		addq	$1, (%rax)
	jle	.LBB22_54
	movq	%r12, 144(%rsp)
.Ltmp44:
	leaq	16(%rsp), %rdi
	callq	*_ZN3std6thread7Builder3new17h6194af5542382cb4E@GOTPCREL(%rip)
.Ltmp45:
	movq	48(%rsp), %r14
	cmpq	$0, 40(%rsp)
	movq	%r12, 152(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 128(%rsp)
	movups	16(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	jne	.LBB22_8
.Ltmp47:
	callq	*_ZN3std10sys_common6thread9min_stack17ha8d435787c72edd6E@GOTPCREL(%rip)
.Ltmp48:
	movq	%rax, %r14
.LBB22_8:
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movaps	112(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
.Ltmp50:
	leaq	80(%rsp), %rdi
	callq	*_ZN3std6thread6Thread3new17h789830631d5c1098E@GOTPCREL(%rip)
.Ltmp51:
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	lock		addq	$1, (%rax)
	jle	.LBB22_54
	movq	%r15, 160(%rsp)
	movl	$40, %edi
	movl	$8, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB22_11
	movq	%rax, %rbx
	movaps	.LCPI22_0(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	$0, 16(%rax)
	movups	80(%rsp), %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 72(%rsp)
	lock		addq	$1, (%rax)
	jle	.LBB22_54
	movq	%rbx, 168(%rsp)
.Ltmp53:
	leaq	80(%rsp), %rdi
	callq	*_ZN3std2io5stdio8clone_io17hd8180b7fe8d78870E@GOTPCREL(%rip)
.Ltmp54:
	movaps	80(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	96(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$56, %edi
	movl	$8, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB22_15
	movq	%r15, (%rax)
	movaps	192(%rsp), %xmm0
	movups	%xmm0, 8(%rax)
	movaps	176(%rsp), %xmm0
	movups	%xmm0, 24(%rax)
	movq	%r12, 40(%rax)
	movq	%rbx, 48(%rax)
.Ltmp60:
	leaq	.L__unnamed_2(%rip), %rcx
	leaq	80(%rsp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*_ZN3std3sys4unix6thread6Thread3new17hfa48bd20a6aa58a1E@GOTPCREL(%rip)
.Ltmp61:
	movq	88(%rsp), %r14
	cmpq	$1, 80(%rsp)
	je	.LBB22_18
	movq	%r14, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 16(%rsp)
.Ltmp65:
	movq	%r14, %rdi
	callq	*_ZN3std3sys4unix6thread6Thread4join17h4a14516b87ef8a32E@GOTPCREL(%rip)
.Ltmp66:
	movq	40(%rsp), %rax
	movq	16(%rax), %rcx
	movq	$0, 16(%rax)
	cmpq	$1, %rcx
	jne	.LBB22_37
	leaq	32(%rsp), %r13
	leaq	40(%rsp), %r15
	movq	24(%rax), %rbx
	movq	32(%rax), %r14
	cmpq	$0, 16(%rsp)
	je	.LBB22_40
	leaq	24(%rsp), %rdi
.Ltmp72:
	callq	*_ZN72_$LT$std..sys..unix..thread..Thread$u20$as$u20$core..ops..drop..Drop$GT$4drop17h91b5d26bc9ceb57cE@GOTPCREL(%rip)
.Ltmp73:
.LBB22_40:
	movq	32(%rsp), %rax
	lock		subq	$1, (%rax)
	jne	.LBB22_42
	#MEMBARRIER
	movq	%r13, %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
.LBB22_42:
	movq	40(%rsp), %rax
	lock		subq	$1, (%rax)
	jne	.LBB22_44
	#MEMBARRIER
.Ltmp77:
	movq	%r15, %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.Ltmp78:
.LBB22_44:
	testq	%rbx, %rbx
	jne	.LBB22_45
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movabsq	$1237940039285380275, %rcx
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$26, %rdx
	addq	%rax, %rdx
	movq	%rdx, 112(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17he9dfa35ff17e5872E@GOTPCREL(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	.L__unnamed_3(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$2, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%r12, 48(%rsp)
	movq	$1, 56(%rsp)
.Ltmp84:
	leaq	16(%rsp), %rdi
	callq	*_ZN3std2io5stdio7_eprint17h0c327c21d6acd3ebE@GOTPCREL(%rip)
.Ltmp85:
	movq	64(%rsp), %rax
	lock		subq	$1, (%rax)
	jne	.LBB22_51
	#MEMBARRIER
	movq	64(%rsp), %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h3fe249508a95a35aE
.LBB22_51:
	addq	$208, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB22_54:
	.cfi_def_cfa_offset 256
	ud2
	ud2
.LBB22_1:
	movl	$24, %edi
	jmp	.LBB22_2
.LBB22_11:
	movl	$40, %edi
	jmp	.LBB22_2
.LBB22_15:
	movl	$56, %edi
.LBB22_2:
	movl	$8, %esi
	callq	*_ZN5alloc5alloc18handle_alloc_error17hff9c7b75d4b02d59E@GOTPCREL(%rip)
	ud2
.LBB22_18:
	movq	96(%rsp), %r15
	lock		subq	$1, (%rbx)
	jne	.LBB22_20
	#MEMBARRIER
.Ltmp86:
	leaq	72(%rsp), %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h1be9cc656b072f64E
.Ltmp87:
.LBB22_20:
	movq	8(%rsp), %rax
	lock		subq	$1, (%rax)
	jne	.LBB22_22
	#MEMBARRIER
	leaq	8(%rsp), %rdi
	callq	_ZN5alloc4sync12Arc$LT$T$GT$9drop_slow17h7a79785c5a0c597aE
.LBB22_22:
	movq	%r15, 24(%rsp)
	movq	%r14, 16(%rsp)
.Ltmp89:
	leaq	.L__unnamed_4(%rip), %rdi
	leaq	.L__unnamed_5(%rip), %rcx
	leaq	.L__unnamed_6(%rip), %r8
	leaq	16(%rsp), %rdx
	movl	$22, %esi
	callq	*_ZN4core6result13unwrap_failed17h53240067144083fbE@GOTPCREL(%rip)
.Ltmp90:
	jmp	.LBB22_23
.LBB22_37:
.Ltmp67:
	leaq	.L__unnamed_7(%rip), %rdi
	leaq	.L__unnamed_8(%rip), %rdx
	movl	$43, %esi
	callq	*_ZN4core9panicking5panic17h339b30ca166fd852E@GOTPCREL(%rip)
.Ltmp68:
	jmp	.LBB22_23
.LBB22_45:
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
.Ltmp79:
	leaq	.L__unnamed_9(%rip), %rdi
	leaq	.L__unnamed_10(%rip), %rcx
	leaq	.L__unnamed_11(%rip), %r8
	leaq	16(%rsp), %rdx
	movl	$43, %esi
	callq	*_ZN4core6result13unwrap_failed17h53240067144083fbE@GOTPCREL(%rip)
.Ltmp80:
.LBB22_23:
	ud2
.LBB22_24:
.Ltmp88:
	movq	%rax, %r14
	jmp	.LBB22_29
.LBB22_47:
.Ltmp81:
	movq	%rax, %r14
.Ltmp82:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE
.Ltmp83:
	jmp	.LBB22_53
.LBB22_33:
.Ltmp91:
	movq	%rax, %r14
.Ltmp92:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hd84338e37703e353E
.Ltmp93:
	jmp	.LBB22_53
.LBB22_30:
.Ltmp49:
	movq	%rax, %r14
	leaq	112(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h194ef8c87e465907E
	jmp	.LBB22_32
.LBB22_55:
.Ltmp74:
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
.Ltmp75:
	movq	%r15, %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
.Ltmp76:
	jmp	.LBB22_53
.LBB22_46:
.Ltmp69:
	movq	%rax, %r14
.Ltmp70:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h1b614f0c6bee5132E
.Ltmp71:
	jmp	.LBB22_53
.LBB22_28:
.Ltmp62:
	movq	%rax, %r14
.Ltmp63:
	leaq	72(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
.Ltmp64:
.LBB22_29:
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	jmp	.LBB22_53
.LBB22_25:
.Ltmp55:
	movq	%rax, %r14
.Ltmp56:
	leaq	168(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
.Ltmp57:
.Ltmp58:
	leaq	72(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h499a337b1014d17fE
.Ltmp59:
	leaq	160(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hbc85b2667d006280E
	jmp	.LBB22_32
.LBB22_31:
.Ltmp52:
	movq	%rax, %r14
.LBB22_32:
	leaq	152(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
	jmp	.LBB22_53
.LBB22_34:
.Ltmp46:
	movq	%rax, %r14
	leaq	144(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
	jmp	.LBB22_53
.LBB22_52:
.Ltmp94:
	movq	%rax, %r14
.LBB22_53:
	leaq	64(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h2dc03dfdc26521d2E
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end22:
	.size	_ZN8fetchadd4main17h141726ac67279f5eE, .Lfunc_end22-_ZN8fetchadd4main17h141726ac67279f5eE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table22:
.Lexception7:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp44-.Lfunc_begin7
	.uleb128 .Ltmp45-.Ltmp44
	.uleb128 .Ltmp46-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp47-.Lfunc_begin7
	.uleb128 .Ltmp48-.Ltmp47
	.uleb128 .Ltmp49-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp50-.Lfunc_begin7
	.uleb128 .Ltmp51-.Ltmp50
	.uleb128 .Ltmp52-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp53-.Lfunc_begin7
	.uleb128 .Ltmp54-.Ltmp53
	.uleb128 .Ltmp55-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp60-.Lfunc_begin7
	.uleb128 .Ltmp61-.Ltmp60
	.uleb128 .Ltmp62-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp65-.Lfunc_begin7
	.uleb128 .Ltmp66-.Ltmp65
	.uleb128 .Ltmp69-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp72-.Lfunc_begin7
	.uleb128 .Ltmp73-.Ltmp72
	.uleb128 .Ltmp74-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp77-.Lfunc_begin7
	.uleb128 .Ltmp85-.Ltmp77
	.uleb128 .Ltmp94-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp86-.Lfunc_begin7
	.uleb128 .Ltmp87-.Ltmp86
	.uleb128 .Ltmp88-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp89-.Lfunc_begin7
	.uleb128 .Ltmp90-.Ltmp89
	.uleb128 .Ltmp91-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp67-.Lfunc_begin7
	.uleb128 .Ltmp68-.Ltmp67
	.uleb128 .Ltmp69-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp79-.Lfunc_begin7
	.uleb128 .Ltmp80-.Ltmp79
	.uleb128 .Ltmp81-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp82-.Lfunc_begin7
	.uleb128 .Ltmp59-.Ltmp82
	.uleb128 .Ltmp94-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp59-.Lfunc_begin7
	.uleb128 .Lfunc_end22-.Ltmp59
	.byte	0
	.byte	0
.Lcst_end7:
	.p2align	2

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rcx
	movslq	%edi, %rdx
	leaq	_ZN8fetchadd4main17h141726ac67279f5eE(%rip), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_1(%rip), %rsi
	movq	%rsp, %rdi
	callq	*_ZN3std2rt19lang_start_internal17ha53ab63f88fee728E@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	main, .Lfunc_end23-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr13drop_in_place17haf43afd2cafc700aE
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h8dda043c0c00f435E
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hb43bfaa47094ff8dE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
.L__unnamed_12:
	.ascii	"/rustc/e1884a8e3c3e813aada8254edfa120e85bf5ffca/library/std/src/thread/mod.rs"
	.size	.L__unnamed_12, 77

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3
.L__unnamed_8:
	.quad	.L__unnamed_12
	.asciz	"M\000\000\000\000\000\000\000\335\004\000\0000\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_4,@object
	.section	.rodata..L__unnamed_4,"a",@progbits
.L__unnamed_4:
	.ascii	"failed to spawn thread"
	.size	.L__unnamed_4, 22

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	.L__unnamed_12
	.asciz	"M\000\000\000\000\000\000\000l\002\000\000\035\000\000"
	.size	.L__unnamed_6, 24

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	_ZN4core3ptr13drop_in_place17h6738408af4844283E
	.quad	56
	.quad	8
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf28719940adb9873E
	.size	.L__unnamed_2, 32

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
.L__unnamed_7:
	.ascii	"called `Option::unwrap()` on a `None` value"
	.size	.L__unnamed_7, 43

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	_ZN4core3ptr13drop_in_place17hd84338e37703e353E
	.quad	16
	.quad	8
	.quad	_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h6e0748719e3787f7E
	.size	.L__unnamed_5, 32

	.type	.L__unnamed_9,@object
	.section	.rodata..L__unnamed_9,"a",@progbits
.L__unnamed_9:
	.ascii	"called `Result::unwrap()` on an `Err` value"
	.size	.L__unnamed_9, 43

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3
.L__unnamed_10:
	.quad	_ZN4core3ptr13drop_in_place17hb404fc9053a0b71fE
	.quad	16
	.quad	8
	.quad	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h9ca5741aaf1d2286E
	.size	.L__unnamed_10, 32

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	"src/main.rs"
	.size	.L__unnamed_13, 11

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3
.L__unnamed_11:
	.quad	.L__unnamed_13
	.asciz	"\013\000\000\000\000\000\000\000\020\000\000\000\016\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"counter = "
	.size	.L__unnamed_14, 10

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"G\n"
	.size	.L__unnamed_15, 2

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_14
	.asciz	"\n\000\000\000\000\000\000"
	.quad	.L__unnamed_15
	.asciz	"\002\000\000\000\000\000\000"
	.size	.L__unnamed_3, 32

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits
