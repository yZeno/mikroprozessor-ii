	ORG 	0
	CLR 	A
	MOV 	A,P1
	MOV 	R0,#200
loop:
	CPL 	A
	MOV 	P1,A
	DJNZ 	R0,loop