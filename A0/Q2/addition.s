# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: To add two constants
# Date:	   22/01/2020		 
###################################

.data

X: .word 7
Y: .word 4

.text
.globl main
main:
	lui $t0, 4096
	lw $t1, X				#load value
	lw $t2, Y
	sw $t1, 0($t0)				
	sw $t2, 0($gp)
	add $t3, $t1, $t2			# adding constant and the value pointed by global pointer
	sw $t3, 396($t0)			# each word stores 4 bytes, so 4*100

	li $v0, 4				#printing result
	add $a0, $zero, $t3
	syscall