# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: Factorial using loop
# Date:	   22/01/2020		 
###################################


.data

number: .word 5
outputmessage: .asciiz "Factorial of the number(number=5) is:- "

.text
.globl main

main:

    lw $t0, number
    li $t1, 1						#t1 is counter
    li $t2, 1 						#t2 is product
    
    loop:
        bgt $t1, $t0, end   				# If greater then number, go to end
        mul $t2, $t2, $t1   				# t2=t2*t1
        addi $t1, 1         				# t1+=1
        j loop

    end:
        la $a0, outputmessage
        li $v0, 4
        syscall

        add $a0, $0, $t2
        li $v0, 1
        syscall

        li $v0, 10
        syscall