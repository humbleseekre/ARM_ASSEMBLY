@ P = Q +R  + S

@let Q =2, R=4, S=5

            .equ    Q, 2
            .equ    R, 4
            .equ    S, 5

            .global main

main:
        MOV R1,     #Q
        LDR R2,=    R
        MOV R3,     #S

        ADD     R0, R1, R2
        ADD     R0, R0, R3

        MOV     R7, #1
        SVC     0
        .end

