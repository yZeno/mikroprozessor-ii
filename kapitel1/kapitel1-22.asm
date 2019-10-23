    ORG     0000H
    MOV     TMOD,#01H
    CLR     TR0

    MOV     TH0,#xxH
    MOV     TL0,#xxH
    SETB    TR0
    JNB     TF0,$
    CLR     TF0
    CLR     TR0