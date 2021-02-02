	.arch armv8-a
	.file	"sample.cpp"
	.text
	.align	2
	.p2align 3,,7
	.global	_Z8producerRSt6atomicIiES1_
	.type	_Z8producerRSt6atomicIiES1_, %function
_Z8producerRSt6atomicIiES1_:
.LFB342:
	.cfi_startproc
	mov	w2, 42
	str	w2, [x0]
	mov	w0, 1
	stlr	w0, [x1]
	ret
	.cfi_endproc
.LFE342:
	.size	_Z8producerRSt6atomicIiES1_, .-_Z8producerRSt6atomicIiES1_
	.align	2
	.p2align 3,,7
	.global	_Z8consumerRSt6atomicIiES1_
	.type	_Z8consumerRSt6atomicIiES1_, %function
_Z8consumerRSt6atomicIiES1_:
.LFB343:
	.cfi_startproc
	ldar	w1, [x1]
	ldr	w0, [x0]
	ret
	.cfi_endproc
.LFE343:
	.size	_Z8consumerRSt6atomicIiES1_, .-_Z8consumerRSt6atomicIiES1_
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-3ubuntu1) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
