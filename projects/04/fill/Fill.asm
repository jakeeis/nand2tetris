// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Start infinite loop to poll for keyboard input
(LOOP)

// Get keyboard input
@KBD
D=M

// Initilize fill color to 16 white pixels
@screenColor
M=0

// If key is pressed, goto KEYPRESSED subroutine
@KEYPRESSED
D;JNE
(CONTINUE)

// 8192 is the number of words in the screen
// Set screenPosition to end of screen
@8192
D=A
@screenPosition
M=D

// Loops through all words in the screen and sets the proper value
(PAINTSCREEN)
// Set wordPosition pointer which is screenPosition + SCREEN
@SCREEN
D=A
@screenPosition
D=D+M
@wordPosition
M=D

// Get the screen color
@screenColor
D=M

// Use the wordPosition pointer to draw on the screen
@wordPosition
A=M
M=D

// Decrement the screenPosition and set it to D
@screenPosition
M=M-1
D=M

// If the end of the screen hasn't been reached, start PAINTSCREEN loop again
@PAINTSCREEN
D;JGE

// Restart outer loop
@LOOP
0;JMP

// KEYPRESSED subroutine, sets screenColor to 16 black pixels
(KEYPRESSED)
@screenColor
M=-1
@CONTINUE
0;JMP