## Generated by MIPS GCC program - Assembly of sortc.c ##

	# .gnu_attribute - Registre um atributo de objeto GNU para este arquivo. Usado para compatibilidade entre arquivos de objeto.

	.file	1 "sortc.c"				# Mostra que estamos prestes a começar um novo arquivo
	.section .mdebug.abi32	 # Para fazer o asemble do codigo para a seção .mdebug.abi32 # .mdebug força a saida de depuração
	.previous #  troca a seção atual (e a subseção) com o par de seções / subseções referenciados mais recentemente antes deste.
	.nan	legacy # é usado para designar o tipo "não um número", para as operações de ponto flutuante IEEE 754.
	.module	fp=32
	.module	oddspreg
	.globl	v # torna o símbolo visível para ld.
	.data #  informa como fazer o assemble  das seguintes declarações no final da subseção numerada da subseção de dados (que é uma expressão absoluta).
	.align	2 # Coloca o contador de localização (na subseção atual) para um limite de armazenamento específico.
	.type	v, @object # setar o tipo de um simbolo
	.size	v, 40 # setar o tamanho do simbolo
v:
	.word	5 # espera zero ou mais expressões, de qualquer seção, separadas por vírgulas.
	.word	8
	.word	3
	.word	4
	.word	7
	.word	6
	.word	8
	.word	0
	.word	1
	.word	9
	.rdata # le os dados
	.align	2
.LC0:
	.ascii	"%d\011\000" # espera que zero ou mais palavras e que sejam separados por vírgulas.
	.text # Informa sobre como montar as seguintes declarações no final da subsecção numerada da subseção de texto, que é uma expressão absoluta
	.align	2
	.globl	show
	.set	nomips16
	.set	nomicromips
	.ent	show
	.type	show, @function
show:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0 # é usada para mostrar o ponteiro do quadro para a pilha;
	.mask	0xc0000000,-4 # é usada para operações bit a bit bitwise.
	.fmask	0x00000000,0
	.set	noreorder #Define o valor do símbolo para a expressão.
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,16($fp)
	b	.L2
	nop

.L3:
	lw	$2,16($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	move	$5,$2
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	printf
	nop

	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L2:
	lw	$3,16($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L3
	nop

	li	$4,10			# 0xa
	jal	putchar
	nop

	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	show
	.size	show, .-show
	.align	2
	.globl	swap
	.set	nomips16
	.set	nomicromips
	.ent	swap
	.type	swap, @function
swap:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$5,20($fp)
	lw	$2,20($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,0($fp)
	lw	$2,20($fp)
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$3,20($fp)
	addiu	$3,$3,1
	sll	$3,$3,2
	lw	$4,16($fp)
	addu	$3,$4,$3
	lw	$3,0($3)
	sw	$3,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$3,16($fp)
	addu	$2,$3,$2
	lw	$3,0($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	swap
	.size	swap, .-swap
	.align	2
	.globl	sort
	.set	nomips16
	.set	nomicromips
	.ent	sort
	.type	sort, @function
sort:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$0,16($fp)
	b	.L6
	nop

.L10:
	lw	$2,16($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
	b	.L7
	nop

.L9:
	lw	$5,20($fp)
	lw	$4,32($fp)
	jal	swap
	nop

	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
.L7:
	lw	$2,20($fp)
	bltz	$2,.L8
	nop

	lw	$2,20($fp)
	sll	$2,$2,2
	lw	$3,32($fp)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,20($fp)
	addiu	$2,$2,1
	sll	$2,$2,2
	lw	$4,32($fp)
	addu	$2,$4,$2
	lw	$2,0($2)
	slt	$2,$2,$3
	bne	$2,$0,.L9
	nop

.L8:
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L6:
	lw	$3,16($fp)
	lw	$2,36($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L10
	nop

	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	sort
	.size	sort, .-sort
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	sw	$fp,16($sp)
	move	$fp,$sp
	li	$5,10			# 0xa
	lui	$2,%hi(v)
	addiu	$4,$2,%lo(v)
	jal	show
	nop

	li	$5,10			# 0xa
	lui	$2,%hi(v)
	addiu	$4,$2,%lo(v)
	jal	sort
	nop

	li	$5,10			# 0xa
	lui	$2,%hi(v)
	addiu	$4,$2,%lo(v)
	jal	show
	nop

	nop
	move	$sp,$fp
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Sourcery CodeBench Lite 2016.05-7) 5.3.0"
