	.file	"teste8.c"
	.option nopic
	.section	.rodata
	.align	2
.LC0:
	.string	"Digite um numero:"
	.align	2
.LC1:
	.string	"%d"
	.align	2
.LC2:
	.string	"Fora dos Limites"
	.align	2
.LC3:
	.string	"Dentro dos Limites"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sw	ra,124(sp)
	sw	s0,120(sp)
	addi	s0,sp,128
	li	a5,100
	sb	a5,-17(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	addi	a5,s0,-18
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	scanf
	lbu	a5,-18(s0)
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L2
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	puts
	j	.L4
.L2:
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	puts
.L4:
	nop
	lw	ra,124(sp)
	lw	s0,120(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"
