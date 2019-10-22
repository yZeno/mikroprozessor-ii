    ORG     0000H
    MOV     DPTR,#0130H
    MOV     30H,#00H

loop:
    ;MOV     A,DPL
    ;SUBB    A,#2FH

    ;MOV     A,#2FH
    ;SUBB    A,DPL

    DEC     DPL

    MOV     A,DPL
    CPL     A
    JZ      label

    CLR     A
    MOVC    A,@A+DPTR    
    CJNE    A,#E8H,loop

    MOV     30H,#01H
    MOV     31H,DPH
    MOV     32H,DPL

label:
    NOP
