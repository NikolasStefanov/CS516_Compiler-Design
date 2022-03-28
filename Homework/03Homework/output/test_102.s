	.text
	.globl	_foo
_foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$42, %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	
	.text
	.globl	_bar
_bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	$0, %r12
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
	subq	$96, %rsp
	subq	$8, %rsp
	movq	%rsp, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, -88(%rbp)
	movq	$0, %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	$100, %r11
	movq	-88(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	-88(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -16(%rbp)
	movq	-16(%rbp), %r11
	movq	$0, %r12
	movq	$0, -24(%rbp)
	cmpq	%r11, %r12
	setne	-24(%rbp)
	movq	-24(%rbp), %r11
	cmpq	$0, %r11
	je	then
	jmp	else
	.text
then:
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	callq	foo
	movq	%rax, -32(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-32(%rbp), %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	jmp	end
	.text
else:
	pushq	%rbx
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	callq	bar
	movq	%rax, -40(%rbp)
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%rbx
	movq	-40(%rbp), %r11
	movq	-8(%rbp), %rbx
	movq	%r11, (%rbx)
	jmp	end
	.text
end:
	movq	-8(%rbp), %rbx
	movq	(%rbx), %r11
	movq	%r11, -48(%rbp)
	movq	-48(%rbp), %r12
	movq	%r12, %rax
	movq	%rbp, %rsp
	popq	%r11
	movq	%r11, %rbp
	retq	