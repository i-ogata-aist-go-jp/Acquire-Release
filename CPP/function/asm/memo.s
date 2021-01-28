        movl    $42, (%rsi)
        movb    $1, (%rdi)

.L8
        movzbl  (%rdi), %eax
        testb   %al, %al
        je      .L8
        movl    (%rsi), %edx
