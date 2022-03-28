	.data
	.globl	_gstr
_gstr:
	.asciz	"hello, world!"
	.text
	.globl	_main
_main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	leaq	_gstr(%rip), %rbx
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
	movq	%rax, -16(%rbp)
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