;10)
;...
LAUTSPRECH  BIT P1.5
FREQUENZ    EQU 248             ;siehe unten

summer:     CPL LAUTSPRECH      ;Flankenwechsel
            MOV	R7,#FREQUENZ    ;Zaehler initialisieren
warten:     DJNZ	R7,warten   ;248*2 zyklen warten
            SJMP	summmer     ;wechseln
            END

;1 Zyklus dauert 1µs
;Wartezeit = t_schleife+t_SJMP+t_CPL+t_MOV
;           =496+2+1+1
;           =500Zyklen=500µs
;...

;11)
;...
LAUTSPRECH  BIT     P1.5
TASTER      BIT     P3.5
FREQUENZ    EQU     247         ;siehe unten

morssum:
    JB      TASTER,morssum      ;nichts tun (neg. Logik)
    CPL     LAUTSPRECH          ;Flankenwechsel
    MOV     R7,#FREQUENZ        ;Zähler initialisieren
warten:
    DJNZ    R7,warten           ;247*2 Zyklen warten
    SJMP    morssum             ;wechseln
    END

;Wartezeit = t_schleife+t_SJMP+t_CPL+t_MOV+t_JB
;           =494+2+1+1+2
;           =500Zyklen=500µs
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

;14)
;...
    ORG     8000H
    MOV     DPTR,#0A000H    ;Datenpointer für 1. Quelle
    MOVX    A,@DPTR         ;externe Quelle in den Akku
    XCH     A,30H           ;erster Tausch
    MOVX    @DPTR,A         ;interne Quelle nach aussen
    INC     DPTR            ;nächste Quelle
    MOVX    A,@DPTR         ;auch in den Akku
    XCH     A,31H           ;zweiter Tausch
    MOVX    @DPTR,A         ;interne Quelle nach aussen
    END
;...