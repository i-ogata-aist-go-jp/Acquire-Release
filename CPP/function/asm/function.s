	.file	"function.cpp"
	.text
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv:
.LFB4279:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %r8
	movq	8(%rdi), %rsi
	movq	24(%rdi), %rax
	movq	%r8, %rdi
	jmp	*%rax
	.cfi_endproc
.LFE4279:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv
	.text
	.p2align 4
	.globl	_Z8producerRSt6atomicIbERS_IiE
	.type	_Z8producerRSt6atomicIbERS_IiE, @function
_Z8producerRSt6atomicIbERS_IiE:
.LFB3497:
	.cfi_startproc
	endbr64
	movl	$42, (%rsi)
	movb	$1, (%rdi)
	ret
	.cfi_endproc
.LFE3497:
	.size	_Z8producerRSt6atomicIbERS_IiE, .-_Z8producerRSt6atomicIbERS_IiE
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev:
.LFB4259:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE(%rip), %rax
	movq	%rax, (%rdi)
	jmp	_ZNSt6thread6_StateD2Ev@PLT
	.cfi_endproc
.LFE4259:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev:
.LFB4261:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	call	_ZNSt6thread6_StateD2Ev@PLT
	movq	%rbp, %rdi
	movl	$32, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4261:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"data = %d\n"
	.text
	.p2align 4
	.globl	_Z8consumerRSt6atomicIbERS_IiE
	.type	_Z8consumerRSt6atomicIbERS_IiE, @function
_Z8consumerRSt6atomicIbERS_IiE:
.LFB3498:
	.cfi_startproc
	endbr64
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	(%rdi), %eax
	testb	%al, %al
	je	.L8
	movl	(%rsi), %edx
	movl	$1, %edi
	leaq	.LC0(%rip), %rsi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT
	.cfi_endproc
.LFE3498:
	.size	_Z8consumerRSt6atomicIbERS_IiE, .-_Z8consumerRSt6atomicIbERS_IiE
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3499:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3499
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$32, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	20(%rsp), %r12
	movb	$0, 19(%rsp)
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE(%rip), %rax
	movq	%rax, %xmm0
	movq	%r12, %xmm1
	movl	$0, 20(%rsp)
	leaq	19(%rsp), %r13
	punpcklqdq	%xmm1, %xmm0
	leaq	24(%rsp), %rbp
	movq	$0, 24(%rsp)
	movaps	%xmm0, (%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	leaq	_Z8producerRSt6atomicIbERS_IiE(%rip), %rcx
	movdqa	(%rsp), %xmm0
	movq	%rbp, %rdi
	movq	%r13, 16(%rax)
	movq	pthread_create@GOTPCREL(%rip), %rdx
	leaq	32(%rsp), %rsi
	movq	%rcx, 24(%rax)
	movups	%xmm0, (%rax)
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE1:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L12
	movq	(%rdi), %rax
	call	*8(%rax)
.L12:
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB2:
	call	_Z8consumerRSt6atomicIbERS_IiE
	movq	%rbp, %rdi
	call	_ZNSt6thread4joinEv@PLT
.LEHE2:
	cmpq	$0, 24(%rsp)
	jne	.L18
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L31
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	call	_ZSt9terminatev@PLT
.L31:
	call	__stack_chk_fail@PLT
.L20:
	endbr64
	movq	%rax, %rdi
	jmp	.L17
.L21:
	endbr64
	movq	%rax, %rbp
	jmp	.L14
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3499:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3499-.LLSDACSB3499
.LLSDACSB3499:
	.uleb128 .LEHB0-.LFB3499
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3499
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB3499
	.uleb128 0
	.uleb128 .LEHB2-.LFB3499
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L20-.LFB3499
	.uleb128 0
.LLSDACSE3499:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3499
	.type	main.cold, @function
main.cold:
.LFSB3499:
.L17:
	.cfi_def_cfa_offset 80
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
	cmpq	$0, 24(%rsp)
	jne	.L18
.LEHB3:
	call	_Unwind_Resume@PLT
.L14:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L15
	movq	(%rdi), %rax
	call	*8(%rax)
.L15:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE3499:
	.section	.gcc_except_table
.LLSDAC3499:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3499-.LLSDACSBC3499
.LLSDACSBC3499:
	.uleb128 .LEHB3-.LCOLDB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC3499:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
	.p2align 4
	.type	_GLOBAL__sub_I__Z8producerRSt6atomicIbERS_IiE, @function
_GLOBAL__sub_I__Z8producerRSt6atomicIbERS_IiE:
.LFB4298:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4298:
	.size	_GLOBAL__sub_I__Z8producerRSt6atomicIbERS_IiE, .-_GLOBAL__sub_I__Z8producerRSt6atomicIbERS_IiE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z8producerRSt6atomicIbERS_IiE
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, 112
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE"
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE
	.section	.data.rel.ro.local._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvRSt6atomicIbERS3_IiEESt17reference_wrapperIS4_ESA_IS6_EEEEEE6_M_runEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
