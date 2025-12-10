# Problem 1: If-Else Statement with User Input
# Pseudocode:
#   If X != 1 then
#       Y = X + X;
#       X = 0;
#   else
#       Y = Y + 1;

.data
    prompt_x: .asciiz "Enter the value of X: "
    prompt_y: .asciiz "Enter the value of Y: "
    result_msg: .asciiz "Final result - X: "
    result_msg2: .asciiz ", Y: "
    newline: .asciiz "\n"

.text
.globl main

main:
    # Prompt user for X
    li $v0, 4
    la $a0, prompt_x
    syscall
    
    # Read X
    li $v0, 5
    syscall
    move $t0, $v0          # $t0 = X
    
    # Prompt user for Y
    li $v0, 4
    la $a0, prompt_y
    syscall
    
    # Read Y
    li $v0, 5
    syscall
    move $t1, $v0          # $t1 = Y
    
    # If X != 1 then
    li $t2, 1
    beq $t0, $t2, else_block
    
    # Then block: Y = X + X; X = 0;
    add $t1, $t0, $t0      # Y = X + X
    li $t0, 0               # X = 0
    j end_if
    
else_block:
    # Else block: Y = Y + 1;
    addi $t1, $t1, 1        # Y = Y + 1
    
end_if:
    # Display final result
    li $v0, 4
    la $a0, result_msg
    syscall
    
    li $v0, 1
    move $a0, $t0          # Print X
    syscall
    
    li $v0, 4
    la $a0, result_msg2
    syscall
    
    li $v0, 1
    move $a0, $t1          # Print Y
    syscall
    
    li $v0, 4
    la $a0, newline
    syscall
    
    # Exit program
    li $v0, 10
    syscall

