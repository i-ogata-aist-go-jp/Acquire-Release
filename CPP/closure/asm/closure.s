	.file	"closure.cpp"
	.text
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev:
.LFB4205:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE(%rip), %rax
	movq	%rax, (%rdi)
	jmp	_ZNSt6thread6_StateD2Ev@PLT
	.cfi_endproc
.LFE4205:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev:
.LFB4207:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	call	_ZNSt6thread6_StateD2Ev@PLT
	movq	%rbp, %rdi
	movl	$24, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4207:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv:
.LFB4225:
	.cfi_startproc
	endbr64
	movq	16(%rdi), %rax
	movl	$42, (%rax)
	movq	8(%rdi), %rax
	movb	$1, (%rax)
	ret
	.cfi_endproc
.LFE4225:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"data = %d\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.section	.text.startup,"ax",@progbits
.LHOTB1:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3497:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3497
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE(%rip), %rcx
	movl	$24, %edi
	movq	%rcx, %xmm0
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	19(%rsp), %rax
	movb	$0, 19(%rsp)
	leaq	24(%rsp), %rbp
	movq	%rax, %xmm1
	movl	$0, 20(%rsp)
	movq	$0, 24(%rsp)
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm0, (%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	leaq	20(%rsp), %rdx
	movdqa	(%rsp), %xmm0
	movq	%rbp, %rdi
	movq	%rdx, 16(%rax)
	movq	pthread_create@GOTPCREL(%rip), %rdx
	leaq	32(%rsp), %rsi
	movups	%xmm0, (%rax)
	movq	%rax, 32(%rsp)
.LEHB1:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE1:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L8
	movq	(%rdi), %rax
	call	*8(%rax)
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	19(%rsp), %eax
	testb	%al, %al
	je	.L8
	movl	20(%rsp), %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LEHB2:
	call	__printf_chk@PLT
	movq	%rbp, %rdi
	call	_ZNSt6thread4joinEv@PLT
.LEHE2:
	cmpq	$0, 24(%rsp)
	jne	.L13
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L27
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	call	_ZSt9terminatev@PLT
.L27:
	call	__stack_chk_fail@PLT
.L15:
	endbr64
	movq	%rax, %rdi
	jmp	.L12
.L16:
	endbr64
	movq	%rax, %rbp
	jmp	.L9
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3497:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3497-.LLSDACSB3497
.LLSDACSB3497:
	.uleb128 .LEHB0-.LFB3497
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3497
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB3497
	.uleb128 0
	.uleb128 .LEHB2-.LFB3497
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB3497
	.uleb128 0
.LLSDACSE3497:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3497
	.type	main.cold, @function
main.cold:
.LFSB3497:
.L12:
	.cfi_def_cfa_offset 64
	.cfi_offset 6, -16
	cmpq	$0, 24(%rsp)
	jne	.L13
.LEHB3:
	call	_Unwind_Resume@PLT
.L9:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L10
	movq	(%rdi), %rax
	call	*8(%rax)
.L10:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE3497:
	.section	.gcc_except_table
.LLSDAC3497:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3497-.LLSDACSBC3497
.LLSDACSBC3497:
	.uleb128 .LEHB3-.LCOLDB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC3497:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE1:
	.section	.text.startup
.LHOTE1:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB4236:
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
.LFE4236:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.section	.rodata
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 67
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.string	"*NSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv
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
