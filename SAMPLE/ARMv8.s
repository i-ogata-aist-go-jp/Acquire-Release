	mov	w2, 42
	str	w2, [x0]
	mov	w0, 1
	stlr	w0, [x1]

.L4:
	ldar	w2, [x1]
	cbz	w2, .L4
	ldr	w0, [x0]
