    ORG     0000H
    MOV     R0,#1000    ;not possible, split in 2 loops or increase delay in loop
loop:
    ;22) - 2µs
    DJNZ    R0,loop     ;2