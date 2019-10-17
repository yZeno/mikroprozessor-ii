    ORG     0000H
    MOV     A,P5
    MOV     C,A.0
    ANL     C,A.1
    ORL     C,A.2
    MOV     P5.7,C