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
spim -file problem1.asm
```

### Problem 2: Multiplication by Repeated Addition (`problem2.asm`)
Multiplies two positive numbers (3 × 6) using a loop that performs repeated addition:
- Adds 3 six times: 3 + 3 + 3 + 3 + 3 + 3 = 18
- Displays the result

**To run:**
```bash
spim -file problem2.asm
```

### Problem 3: Sum of Squares (`problem3.asm`)
Calculates the sum of squares from 1 to n (where n = 10):
- Computes 1² + 2² + 3² + ... + 10²
- Expected result: 385
- Displays the final sum

**To run:**
```bash
spim -file problem3.asm
```

## Installation & Running

### Option 1: Install SPIM (Command Line)
On macOS, install SPIM using Homebrew:
```bash
brew install spim
```

Then run programs with:
```bash
spim -file problem1.asm
spim -file problem2.asm
spim -file problem3.asm
```

### Option 2: Install MARS (Recommended - GUI)
MARS (MIPS Assembler and Runtime Simulator) is a popular GUI tool:
1. Download from: http://courses.missouristate.edu/kenvollmar/mars/
2. Open MARS application
3. File → Open → Select your `.asm` file
4. Click "Assemble" button
5. Click "Run" button

### Option 3: Install QtSpim (GUI)
QtSpim is a graphical version of SPIM:
1. Download from: https://sourceforge.net/projects/spimsimulator/
2. Open QtSpim
3. File → Load File → Select your `.asm` file
4. Click "Run" or press F5

### Option 4: Online MIPS Simulator
Use an online MIPS simulator:
- https://www.kvakil.me/venus/ (Venus MIPS Simulator)
- Copy and paste your code into the editor
- Click "Assemble & Simulate"

## Requirements
- MIPS simulator (SPIM, MARS, QtSpim, or online simulator)
- MIPS instruction set support
