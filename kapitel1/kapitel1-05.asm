;double dabble algorithm
    MOV 	R0,#251
    MOV		R1,#00H
    MOV		R2,#00H
    MOV		R3,#8

loop:
    MOV		A,R0
    CLR		C
    RLC		A
    MOV		R0,A

    MOV		A,R1
    RLC		A
    MOV		R1,A

    MOV		A,R2
    RLC		A
    MOV		R2,A

    MOV		A,R1
    ANL		A,#0FH
    SUBB	A,#05H
    JC		skip1
    MOV		A,R1
    ADD		A,#03H
    MOV		R1,A
skip1:
    MOV		A,R1
    ANL		A,#0F0H
    SUBB	A,#50H
    JC		skip2
    MOV		A,R1
    ADD		A,#30H
    MOV		R1,A
skip2:
    MOV		A,R2
    ANL		A,#0FH
    SUBB	A,#05H
    JC		skip3
    MOV		A,R2
    ADD		A,#03H
    MOV		R2,A
skip3:
    DJNZ	R3,loop

    MOV		A,R2
    MOV		R3,A
    MOV		A,R1
    ANL		A,#0F0H
    SWAP	A
    MOV		R2,A
    MOV		A,R1
    ANL		A,#0FH
    MOV		R1,A
