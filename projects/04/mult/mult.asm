// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Initilize product to 0
@0
D=A
@R2
M=D

// Get value at R0 and store it in i
@R0
D=M
@i
M=D

// Loop R0 times and each time, add R1 to R3
(LOOP)
// If i == 0, end loop
@i
D=M
@END
D;JEQ

@R1
D=M
@R2
M=M+D

// Decrement i and store it in D
@i
M=M-1
D=M

// Loop
@LOOP
0;JMP

@END
(END)
0;JMP
