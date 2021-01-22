	.arch armv8-a
	.file	"sample.cpp"
	.text
	.align	2
	.p2align 3,,7
	.global	_Z8producerv
	.type	_Z8producerv, %function
_Z8producerv:
.LFB342:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	mov	w1, 42
	add	x0, x0, :lo12:.LANCHOR0
	str	w1, [x0]
	add	x0, x0, 8
	mov	w1, 1
	stlr	w1, [x0]
	ret
	.cfi_endproc
.LFE342:
	.size	_Z8producerv, .-_Z8producerv
	.align	2
	.p2align 3,,7
	.global	_Z8consumerv
	.type	_Z8consumerv, %function
_Z8consumerv:
.LFB343:
	.cfi_startproc
	adrp	x2, .LANCHOR0
	add	x2, x2, :lo12:.LANCHOR0
	add	x1, x2, 8
	.p2align 3
.L4:
	ldar	w0, [x1]
	cbz	w0, .L4
	ldr	w0, [x2]
	ret
	.cfi_endproc
.LFE343:
	.size	_Z8consumerv, .-_Z8consumerv
	.global	ready
	.global	data
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	data, %object
	.size	data, 4
data:
	.zero	4
	.zero	4
	.type	ready, %object
	.size	ready, 4
ready:
	.zero	4
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-3ubuntu1) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
