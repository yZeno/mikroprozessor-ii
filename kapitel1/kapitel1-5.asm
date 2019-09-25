    MOV		R0,#8		;Rcount
    MOV		R1,#30H		;Rstore
    MOV		R2,#33H		;Rvalue
    MOV		R3,#01H		;Rcomp
loop:
    MOV		A,R2
    ANL		A,R3
    MOV		@R1,A
    INC		R1

    MOV		A,R3
    RL		A
    MOV		R3,A

    DJNZ	R0,loop