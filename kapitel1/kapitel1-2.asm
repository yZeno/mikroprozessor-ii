    ORG 	0
    MOV 	TMOD,#01H
    SETB 	TR0

    JNB 	TF0,$
    CLR 	TF0

    CLR		TR0