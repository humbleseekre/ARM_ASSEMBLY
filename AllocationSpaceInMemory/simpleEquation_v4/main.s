
@ P = Q + R + S
@Let Q=2, R=4, S=5


        .global main

main:
        ADRL    R0, P
        LDR     R1, [R0, #4]
        LDR     R2,[R0, #8]

        ADD     R2, R1, R2
        LDR     R1,[R0, #12]
        ADD     R2, R2, R1

        STR     R2, P

        MOV     R7, #1
        SVC     0


P:      .space      4
        .word       2
        .word       4
        .word       5
        .align
        .end
