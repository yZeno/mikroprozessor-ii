    ORG     8000H
    MOV     R0,#30H
    MOV     DPTR,#8000H
loop:
    MOV     A,R0
    SUBB    A,#30H
    MOVC    A,@A+DPTR
    MOV     @R0,A
    INC     R0
    CJNE    R0,#3AH,loop