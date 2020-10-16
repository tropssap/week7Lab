.data 
string: .asciiz "word word word"
space: .byte ' '
.text
lb $t3, space
la $t2, string
li $t9, 1
li $t8, 0
loop:
	addu $t2,$t2, 1
	lbu $t4, ($t2)
	beq $t4,  $t3, good
	addi $t9, $t9, 1
	beq $t9, 40, continue
	bne $t9, 40, loop
good:
	addi, $t8, $t8, 1
	j loop
continue:
	li $v0, 1
	move $a0, $t8
	syscall
