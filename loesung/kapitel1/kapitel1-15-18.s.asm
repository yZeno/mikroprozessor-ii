;15)
;...
    ORG     8000H
    ANL     PSW,#11100111B      ;Registerbank 0 auswählen
    MOV     A,R0                ;1. Tausch
    XCH     A,30H
    MOV     R0,A
    MOV     A,R1                ;2. Tausch
    XCH     A,31H
    MOV     R1,A
    ;...
    MOV     A,R7                ;8. Tausch
    XCH     A,37H
    MOV     R7,A
    END
;...

;16)
;...
    ORG     8000H
    MOV     A,60H
    ADD     A,61H       ;<A> <- <A> + <I:60>>
    CLR     C           ;carry löschen
    SUBB    A,#36H
    ;...
;...

;18)
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