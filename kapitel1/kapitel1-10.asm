    MOV 	TMOD,#01H
    CLR     TR0 
start:
    MOV     TL0,#xxH    ;2
    MOV     TH0,#xxH    ;2
    SETB 	TR0         ;1
;wait:
;    JBC     TF0,exit    ;2x +2
;    SJMP    wait        ;2x
;exit:
    JNB 	TF0,$       ;2x
    CLR     TF0         ;1

    CLR     TR0         ;1

    CPL     P1.0        ;1
    JMP     start       ;2