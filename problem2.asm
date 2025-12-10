# Problem 2: Multiplication using Repeated Addition
# Multiply 3 x 6 by adding 3 six times (3 + 3 + 3 + 3 + 3 + 3)

.data
    result_msg: .asciiz "Result of 3 x 6 (using repeated addition): "
    newline: .asciiz "\n"

.text
.globl main

main:
    # Initialize values
    li $t0, 3              # First number (multiplicand)
    li $t1, 6              # Second number (multiplier - loop counter)
    li $t2, 0              # Result accumulator
    
    # Loop to add 3 six times
loop:
    beq $t1, $zero, end_loop   # If counter == 0, exit loop
    add $t2, $t2, $t0          # result = result + 3
    addi $t1, $t1, -1          # Decrement counter
    j loop
    
end_loop:
    # Display result message
    li $v0, 4
    la $a0, result_msg
    syscall
    
    # Display result
    li $v0, 1
    move $a0, $t2
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall
    
    # Exit program
    li $v0, 10
    syscall

