    ORG     0000H
    MOV     DPTR,#0B000H
    MOVX    A,@DPTR
    SUBB    A,#80H
    MOV     40H,#00H
    JZ      skip
    MOV     40H,#01H
    JC      skip
    MOV     40H,#02H
skip:
    NOP
