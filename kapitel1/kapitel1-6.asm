    MOV		DPTR,#0100H
    MOV		A,DPL
    DEC		DPL
    JNZ		skip
    DEC		DPH
skip:
    NOP