	MOV		R7,#33H

	MOV		A,R7
	ANL		A,#01H
	MOV		R0,A

	MOV		A,R7
	ANL		A,#02H
	MOV		R1,A

	MOV		A,R7
	ANL		A,#04H
	MOV		R2,A

	MOV		A,R7
	ANL		A,#08H
	MOV		R3,A

	MOV		A,R7
	ANL		A,#10H
	MOV		R4,A

	MOV		A,R7
	ANL		A,#20H
	MOV		R5,A

	MOV		A,R7
	ANL		A,#40H
	MOV		R6,A

	MOV		A,R7
	ANL		A,#80H
	MOV		R7,A