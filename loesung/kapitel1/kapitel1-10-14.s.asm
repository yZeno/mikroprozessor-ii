;11)
;...
LAUTSPRECH  BIT     P1.5
TASTER      BIT     P3.5
FREQUENZ    EQU     247
morssum:    JB      TASTER,morssum
            ...
;...

;12)
;...
    ORG     0000H
    ANL     PSW,#11100111B      ;Registerbank 0 auswählen
    MOV     R0,#00H             ;Register R0 bis R7 belegen
    MOV     R1,#01H
    MOV     R2,#02H
    MOV     R3,#03H
    MOV     R4,#04H
    MOV     R5,#05H
    MOV     R6,#06H
    MOV     R7,#07H
    MOV     30H,R0              ;Datentransfer ins i-RAM
    MOV     31H,R1
    MOV     32H,R2
    MOV     33H,R3
    MOV     34H,R4
    MOV     35H,R5
    MOV     36H,R6
    MOV     37H,R7
    END
;...

;13)
;...
    ORG     8000H
    MOV     DPTR,#0A000H    ;Datenpointer für 1. Quelle
    MOVX    A,@DPTR         ;Quelle in den Akku
    MOV     30H,A           ;und dann intern ins RAM
    INC     DPTR            ;nächste Quelle
    MOVX    A,@DPTR         ;auch in den Akku
    MOV     31H,A           ;und dann intern ins RAM
    END
;...