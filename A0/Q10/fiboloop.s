# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: Fibonacci via loop
# Date:	   22/01/2020		 
###################################

.data
	n: .space 4
	str: .asciiz "the nth and (n+1)th numbers are: "
	spa: .asciiz "  "
.text
main:
							#reading n
	li $v0,5
	syscall
	sw $v0,n
	lw $s0,n
							#first two values
	li $t0,0
	li $t1,1
	li $t3,2
	beq $s0,$t1,pass1
	beq $s0,$t3,pass2
	sub $s0,$s0,$t3
	li $t3,1
loop:
	add $t2,$t1,$t0
	move $t0,$t1
	move $t1,$t2
	sub $s0,$s0,$t3
	beq $s0,$zero,exit
	j loop

exit:
	la $a0,str
	li $v0,4
	syscall

	li $v0,1
	move $a0,$t1
	syscall

	la $a0,spa
	li $v0,4
	syscall

	add $t2,$t1,$t0
	li $v0,1
	move $a0,$t2
	syscall

	li $v0,10
	syscall

pass1:
	li $a0,0
	li $v0,1
	syscall
	
	la $a0,spa
	li $v0,4
	syscall
	
	li $a0,1
	li $v0,1
	syscall
	
	li $v0,10
	syscall
pass2:
	li $a0,1
	li $v0,1
	syscall
	
	la $a0,spa
	li $v0,4
	syscall
	
	li $a0,1
	li $v0,1
	syscall
	
	li $v0,10
	syscall
