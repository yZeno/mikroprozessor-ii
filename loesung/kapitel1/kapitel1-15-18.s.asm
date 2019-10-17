;15)
;...
    ORG     8000H
    MOV	    R0,#30H
    MOV	    DPTR,#8000H
loop:
    CLR	    A
    MOVC    A,@A+DPTR
    MOV	    @R0,A
    INC	    R0
    INC	    DPL
    MOV	    A,DPL
    CJNE	A,#0AH,loop
    END
;...