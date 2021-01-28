	movl	$42, (%rdi)
	movl	$1, (%rsi)

.L4:
	movl	(%rsi), %eax
	testl	%eax, %eax
	je	.L4
	movl	(%rdi), %eax
