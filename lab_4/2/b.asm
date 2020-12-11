// Program: b.asm
// RAM[1] = RAM[0] - RAM[1]
// Computes: if R1>0
// R3=1
// else if R1=0
// R3=0
// else
// R3=2
// Usage: put a value in RAM[0], RAM[1]
// run and inspect RAM[3]

@R0
 D=M // D = RAM[0]

@R1
D=D-M // D = RAM[1]



 @GREATERTHAN
 D;JGT

 @EQUAL
 D;JEQ

 @2
 D=A
 @R3
 M=D // RAM[2]=2


 @END
 0;JMP // goto end

(GREATERTHAN)
 @R3
 M=1 // RAM[2]=1

 @END
 0;JMP // goto end

(EQUAL)
 @R3
 M=0 // RAM[2]=0

(END)
 @END
 0;JMP