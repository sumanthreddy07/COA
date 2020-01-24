# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: To add two constants
# Date:	   22/01/2020		 
###################################

.data

X: 	.word 5
Y: 	.word 10
SUM:	.word 0

.text
.globl main
main:
	la $t0, X			#load address
	la $t1, Y
	lw $s0, 0($t0)			#load value
	lw $s1, 0($t1)
	add $s2, $s0, $s1

	la $t2, SUM			#load SUM address
	sw $s2, 0($t2)			#store SUM

	addi $v0, $zero, 1		#printing result
	add $a0, $s2, $zero
	li $v0, 1
	syscall