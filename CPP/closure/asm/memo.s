        movq    16(%rdi), %rax
        movl    $42, (%rax)
        movq    8(%rdi), %rax
        movb    $1, (%rax)

.L8:
        movzbl  19(%rsp), %eax
        testb   %al, %al
        je      .L8
        movl    20(%rsp), %edx
