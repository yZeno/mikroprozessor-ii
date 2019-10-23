    ORG     0000H
loop:
    MOV     A,60H
    CJNE    A,#0FFH,skip
    JMP     label
skip:
    INC     60H
    DJNZ    61H,loop
label:
    NOP