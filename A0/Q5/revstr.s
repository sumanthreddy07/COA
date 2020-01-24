# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: Reversing a string
# Date:	   22/01/2020		 
###################################
.data
OldString: .asciiz "Hello, I'm Sumanth"			#default selected string
NewString: .asciiz "\n" 

.text
.globl main

main:
	li $v0, 4					#display old string
	la $a0, OldString       
	syscall

	li $v0, 4					#display new string
	la $a0, NewString
	syscall

	li $t2, 0					#calculating the length of the old string
	strlen:
		lb $t0, OldString($t2) 
		add $t2, $t2, 1
		bne $t0, $zero, strlen

	
	li $v0, 11					#printing new string

	loop:
		sub     $t2, $t2, 1     
		la      $t0, OldString($t2)
		lb      $a0, ($t0)
		syscall

	bnez    $t2, loop
	li      $v0, 10            
	syscall