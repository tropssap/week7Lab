.data 
prompt: .asciiz "Inter Number to check"
.text
li $v0, 4
la $a0, prompt
syscall
li $v0, 5 
syscall
la $t0, ($v0)

beqz $t0, EqZero
bgtz $t0, One
j Neg
EqZero:
	li $t7, 0
	j Exit
One: 
	li $t7, 1
	j Exit
Neg:
	li $t7, -1
Exit:	
	li $v0, 1
	move $a0, $t7
	syscall

