	.file	"reg7.c"
	.text
	.section	.rodata
.LC0:
	.string	"hello,world\n"
.LC1:
	.string	"wrote %d bytes\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$16, %esp
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	leal	.LC0@GOTOFF(%edx), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %ecx
#APP
# 6 "reg7.c" 1
	pushl -20(%ebp);				call printf;			addl $4,%esp;			movl $6,%ecx;
# 0 "" 2
#NO_APP
	movl	%eax, -12(%ebp)
	subl	$8, %esp
	pushl	-12(%ebp)
	leal	.LC1@GOTOFF(%edx), %eax
	pushl	%eax
	movl	%edx, %ebx
	call	printf@PLT
	addl	$16, %esp
	nop
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.dx,"axG",@progbits,__x86.get_pc_thunk.dx,comdat
	.globl	__x86.get_pc_thunk.dx
	.hidden	__x86.get_pc_thunk.dx
	.type	__x86.get_pc_thunk.dx, @function
__x86.get_pc_thunk.dx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %edx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
