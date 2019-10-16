    JNB		RI,$
    CLR		RI
    MOV		A,SBUF

    MOV		R0,A
    CLR		C
    SUBB	A,#0AH
    JC		num
    ADD		A,#41H
    JMP		finish

num:
    MOV		A,R0
    ADD		A,#30H
finish:
    NOP	
