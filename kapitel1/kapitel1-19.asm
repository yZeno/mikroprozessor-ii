    ORG     0000H
    ANL     PSW,#11100111B
    MOV     DPH,R1
    MOV     DPL,R2
    MOV     R3,#64
loop:
    MOV     A,@R0
    MOVX    @DPTR,A
    INC     R0
    INC     DPTR
    DJNZ    R3,loop