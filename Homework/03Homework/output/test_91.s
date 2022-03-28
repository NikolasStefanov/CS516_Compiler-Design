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
	leaq	_gstr(%rip), %r9 
	addq	$8, %r9 
	movq	%r9 , -8(%rbp)
	movq	-8(%rbp), %r9 
	pushq	%r9 
	callq	ll_puts
	movq	%rax, -16(%rbp)
	movq	$0, %r10
	movq	%r10, %rax
	movq	%rbp, %rsp
	popq	%r9 
	movq	%r9 , %rbp
	retq	