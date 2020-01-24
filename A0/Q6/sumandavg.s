# Name 	 : K V SUMANTH REDDY
# RollNo : 181CO225
# Program: Sum and Average
# Date:	   22/01/2020		 
###################################

.data

array: .word 3, 7, 12, 35, 47, 71, 63, 22, 40, 50
sum: .word 0
valsum: .asciiz "Sum: "
valaverage: .asciiz "Average: "
newline: .asciiz "\n" 

.text
.globl main

main:
    li $a0, 10					# Stored in $a0 to pass in function
    la $a1, array   				# Stored in $a1 to pass in function
    jal sumofArray				# Jump to function
    sw $v0, sum

    la $a0, valsum				#Display sum message
    li $v0, 4
    syscall

    lw $a0, sum					#value of Sum
    li $v0, 1
    syscall
   
    li $t0, 10					#calculating the average
    lw $t1, sum
    div $t1, $t1, $t0

    la $a0, newline				#New Line
    li $v0, 4
    syscall

    la $a0, valaverage				#Display message for Average
    li $v0, 4
    syscall
    
    add $a0, $0, $t1				# Display the average
    li $v0, 1
    syscall

    li $v0 10
    syscall

sumofArray:
    li $t0 0 
    li $v0 0 

loop:
    lw $t1, 0($a1)
    add $v0, $v0, $t1
    addi $t0, 1
    addi $a1, 4
    blt $t0, $a0, loop
    
    jr $ra