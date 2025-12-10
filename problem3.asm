# Problem 3: Sum of Squares from 1 to n
# Calculate 1² + 2² + 3² + ... + n² where n = 10
# Expected result: 385

.data
    n: .word 10
    result_msg: .asciiz "Sum of squares from 1 to 10: "
    newline: .asciiz "\n"

.text
.globl main

main:
    # Load n
    lw $t0, n              # $t0 = n (10)
    li $t1, 1              # $t1 = current number (starts at 1)
    li $t2, 0              # $t2 = sum accumulator
    
loop:
    # Check if current number > n
    bgt $t1, $t0, end_loop
    
    # Calculate square: current_number * current_number
    mul $t3, $t1, $t1      # $t3 = current_number²
    
    # Add square to sum
    add $t2, $t2, $t3      # sum = sum + current_number²
    
    # Increment current number
    addi $t1, $t1, 1       # current_number++
    
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

