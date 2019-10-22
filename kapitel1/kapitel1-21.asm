    ORG     0000H
    MOV     R0,#30H
loop:
    MOV     A,R0
    ;SUBB    A,#30H     could work if carry is cleared before not after op
    ANL     A,#0FH

    MOV     @R0,A
    INC     R0
    CJNE    R0,#40H,loop