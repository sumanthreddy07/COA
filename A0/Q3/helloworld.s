# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: print 'Hello World'
# Date:	   22/01/2020		 
###################################

.data
	message: .asciiz "Hello World\n"

.text
.globl main
main:
	li $v0, 4
	la $a0, message
	syscall