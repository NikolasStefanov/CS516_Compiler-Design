	.data
	.globl	_toofew
_toofew:
	.asciz	"argc < 3"
	.data
	.globl	_toomany
_toomany:
	.asciz	"argc > 3"
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rdi, %r11
	movq	$3, %r12
	movq	$0, -96(%rbp)
	cmpq	%r11, %r12
	setl	-96(%rbp)
	movq	-96(%rbp), %r11
	cmpq	$0, %r11
	je	few
	jmp	else
	.text
few:
	leaq	_toofew(%rip), %rbx
	movq	$0, %r11
	addq	%r11, %rbx
	movq	$0, %r11
	imulq	$8, %r11
	addq	%r11, %rbx
	movq	%rbx, -8(%rbp)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-8(%rbp), %r11
	movq	%r11, %rdi
	callq	ll_puts
	movq	%rax, -64(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	$0, %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
else:
	movq	%rdi, %r11
	movq	$3, %r12
	movq	$0, -88(%rbp)
	cmpq	%r11, %r12
	setg	-88(%rbp)
	movq	-88(%rbp), %r11
	cmpq	$0, %r11
	je	many
	jmp	right
	.text
many:
	leaq	_toomany(%rip), %rbx
	movq	$0, %r11
	addq	%r11, %rbx
	movq	$0, %r11
	imulq	$8, %r11
	addq	%r11, %rbx
	movq	%rbx, -16(%rbp)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-16(%rbp), %r11
	movq	%r11, %rdi
	callq	ll_puts
	movq	%rax, -72(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	$0, %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
right:
	movq	%rsi, %rbx
	movq	$1, %r11
	addq	%r11, %rbx
	movq	%rbx, -24(%rbp)
	movq	-24(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -32(%rbp)
	movq	%rsi, %rbx
	movq	$2, %r11
	addq	%r11, %rbx
	movq	%rbx, -40(%rbp)
	movq	-40(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -48(%rbp)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-32(%rbp), %r11
	movq	%r11, %rdi
	movq	-48(%rbp), %r11
	movq	%r11, %rsi
	callq	ll_strcat
	movq	%rax, -56(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	-56(%rbp), %r11
	movq	%r11, %rdi
	callq	ll_puts
	movq	%rax, -80(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	$0, %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	