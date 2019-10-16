    ORG     8000H
    MOV     DPTR,#0A000H    ;Datenpointer für 1. Quelle

    MOVX    A,@DPTR         ;Quelle in den Akku
    XCH     A,30H           ;und dann intern ins RAM
    MOVX    @DPTR,A

    INC     DPTR            ;nächste Quelle

    MOVX    A,@DPTR         ;auch in den Akku
    XCH     A,31H           ;und dann intern ins RAM
    MOVX    @DPTR,A
    END