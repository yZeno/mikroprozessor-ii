    MOV     DPTR,#JMPTAB
    MOV     A,P1
    RL      A
    JMP     @A+DPTR

JMPTAB: AJMP    fall0
        AJMP    fall1