# MIPS-Project-CDA3101
Optional Project - MIPS Assembly Programming

## Project Description
This project contains three MIPS assembly language programs solving different programming problems.

## Programs

### Problem 1: If-Else Statement (`problem1.asm`)
Implements conditional logic with user input:
- Prompts user to enter values for X and Y
- If X != 1: sets Y = X + X and X = 0
- Else: sets Y = Y + 1
- Displays the final values of X and Y

**To run:**
```bash
spim -f problem1.asm
```

### Problem 2: Multiplication by Repeated Addition (`problem2.asm`)
Multiplies two positive numbers (3 × 6) using a loop that performs repeated addition:
- Adds 3 six times: 3 + 3 + 3 + 3 + 3 + 3 = 18
- Displays the result

**To run:**
```bash
spim -f problem2.asm
```

### Problem 3: Sum of Squares (`problem3.asm`)
Calculates the sum of squares from 1 to n (where n = 10):
- Computes 1² + 2² + 3² + ... + 10²
- Expected result: 385
- Displays the final sum

**To run:**
```bash
spim -f problem3.asm
```

## Requirements
- SPIM MIPS simulator (or compatible MIPS assembler)
- MIPS instruction set support
