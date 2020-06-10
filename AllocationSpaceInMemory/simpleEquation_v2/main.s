@ P = Q + R + S
@let Q=2, R=4, S=5


p:  .space      4 @Reserver 4 bytes of memory
Q:  .word       2 @create a variable Q with initial value of 2
R:  .word       4
S:  .word       5


        .global main

main:
        LDR     R1, #Q
        LDR     R2, #R
        LDR     R3, #S

        ADD     R0, R1, R2
        ADD     R0, R0, R3

        MOV     R7, #1
        SVC     0

        .end

