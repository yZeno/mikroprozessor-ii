;1)
;...
    MOV     R0,#200
invert:
    XLR     P1,#11111111B
    DJNZ    R0,invert
;...

;2)
;...
wait:
    JBC     TF0,exit
    SJMP    wait
exit:
;....

;3)
;...
ASCII:  DB  '0123456789'    ;Tabelle definieren
wandeln:   
    MOV     DPTR,#ASCII     ;Anfangsadresse festlegen
    MOV     A,P1            ;Tastenwert lesen
    MOVC    A,@A+DPTR       ;wandeln über Zeiger
    END
;...
;oder
;...
wandeln:
    MOV     A,P1                    ;Tastenwert lesen
    ADD     A,#ASCII-pc_aktuell     ;Distanz der Zeiger
    MOVC    A,@+PC                  ;wandeln
pc_aktuell:
    SJMP    weiter
ASCII:  DB  '0123456789'            ;Tabelle definieren
weiter:
    ;...
    END
;...

;4)
;...
DATEN:      BIT     P1.1        ;Datenleitung festlegen
TAKT:       BIT     P1.0        ;Taktleitung definieren
FREIGABE:   BIT     P1.2        ;enable oder strobe

ausgabe:
    SETB    FREIGABE            ;Achtung Transfer
    MOV     R7,#8               ;Zähler auf 8
schleife:
    RLC     A                   ;Bit ins Carry, MSB zuerst
    MOV     DATEN,C             ;Bit ausgeben
    SETB    TAKT                ;Taktimpuls
    CLR     TAKT                ;beide Flanken
    DJNZ    R7,schleife         ;nächtes Bit
    CLR     FREIGABE            ;Transfer beendet