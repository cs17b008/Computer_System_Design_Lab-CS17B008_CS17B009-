// modulo; RAM[0] % RAM[1], store in RAM[0]

// repeatedly subtract RAM[1] from RAM[0],
// until RAM[0]-RAM[1] < 0


@0
D=M   // load RAM[0] into D
(Sub)
@1
D=D-M // D=D-RAM[1] (i.e., D=RAM[0]-RAM[1])
@Save
D;JLT // jump to Save label if D < 0 (RAM[0]-RAM[1]<0)
@Sub
0;JMP // otherwise (else), jump back to top Sub label (subtract again)
(Save)
@1
D=D+M // save operation involves saving D into RAM[0]
@0    // but we gotta add back RAM[1] because D<0 currently
M=D
(End)
@End  // loop forever
0;JMP