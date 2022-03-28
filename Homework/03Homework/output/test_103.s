	.text
	.globl	_factorial
_factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$120, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -112(%rbp)
	movq	%rdi, %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	$1, %r11
	movq	-112(%rbp), %rbx
	movq	%r11, (%rbx)
	jmp	start
	.text
start:
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -16(%rbp)
	movq	-16(%rbp), %r11
	movq	$0, %r12
	movq	$0, -24(%rbp)
	cmpq	%r11, %r12
	setg	-24(%rbp)
	movq	-24(%rbp), %r11
	cmpq	$0, %r11
	je	then
	jmp	end
	.text
then:
	movq	-112(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -32(%rbp)
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -40(%rbp)
	movq	-32(%rbp), %r11
	movq	-40(%rbp), %r12
	imulq	%r11, %r12
	movq	%r12, -48(%rbp)
	movq	-48(%rbp), %r11
	movq	-112(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -56(%rbp)
	movq	-56(%rbp), %r11
	movq	$1, %r12
	subq	%r12, %r11
	movq	%r11, -64(%rbp)
	movq	-64(%rbp), %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	jmp	start
	.text
end:
	movq	-112(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -72(%rbp)
	movq	-72(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	movq	$0, %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	$5, %r11
	movq	%r11, %rdi
	callq	factorial
	movq	%rax, -16(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-16(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	