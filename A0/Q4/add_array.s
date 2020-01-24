# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: Add Array values
# Date:	   22/01/2020		 
###################################

.data

array:		.word 5, 10, 15, 20, 25, 30, 35, 40, 45, 50 
#Array consisting of [5,10,15,20,25,30,35,40,45,50]
message:	.asciiz "Result: "

.text
.globl main

main:
	addi $t0, $0, 0				#initialising i=0 
	addi $t1, $0, 0				#initialising sum=0
	addi $t2, $0, 10			#initinalising t2=10
	la $t3, array				#load address

loop:
	beq $t0, $t2, end			#if(i==10) exit, else continue
	lw $t4, 0($t3)				#t4 will have the value of t3[i]
	add $t1, $t1, $t4			#add the value to sum
	add $t0, $t0, 1				#increasing the value of i (i=i+1)
	add $t3, $t3, 4				#t3 will update to the next element's address
	j loop
    
end:
	addi $v0, $0, 4				#printing   
	la $a0, message
	syscall

	addi $v0, $0, 1    
	add $a0, $t1, $0
	syscall

