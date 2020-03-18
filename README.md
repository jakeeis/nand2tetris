# NAND2TETRIS

## About
Throughout this course a computer will be constructed from the bottom up. The process will start at the level of logic gates and will build from there. Each week, the exercises will add a new layer of abstraction to what was previously build. The end result will be a simulation of a modern computer that is able to run high level programming languages.

## Week 0
Course introduction and information.

## Week 1
In this week's project I started with a Nand gate and was able to create an array of more complex logic gates. This consist of all basic boolean gates as well as some composite gates such as Multiplexers and 16 bit boolean gates.

## Week 2
This week, I created more advanced chips based on the chips created last week. These chips included the half-adder, full-adder, 16-bit adder, 16-bit incrementer and arithmetic logic unit (ALU). This was very interesting as we now have chip capable of 16-bit binary addition based on what boils down to just Nand gates. Also the ALU, which is capable of more complicated mathematical functions, will form a core part of the Hack computer's CPU.

## Week 3
This week focused on creating the memory units that will be used by the Hack computer. While the lectures did explain how flip flops could be created from Nand gates, the data flip flop (DFF) was used as a primitive building block in this project. A DFF was used to create a bit sized memory unit, which was in turn used to build a byte sized register and larger and larger memory units. This culminated with a 16K byte sized block of RAM. A program counter with reset, increment and set functionality was also created.

## Week 4
This week focused on the Hack machine language. This is the machine language used by the Hack computer being built in this course. The machine language is a 1:1 symbolic mapping between symbolic language that humans can easily understand and the raw binary instructions that get fed into the CPU. The project involved creating a machine language script that can multiply two numbers together as well as interacting with the keyboard and screen with the language.