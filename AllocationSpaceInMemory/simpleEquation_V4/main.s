
@P = Q + R + S
@Let Q = 2, R=4, S=5


        .global main


main:

        ADRL    R4, Vals @R4 point to vals area
        LDR     R1, [R4,#Q] @Load  Q=2 into r1
        LDR     R2, [R4,#R] @Load  R=4 into R2
        LDR     R3, [R4,#S] @Load  Q=2 into r1

        ADD     R0,R1,R2
        ADD     R0,R0,R3

        STR     R0, [R4, #P]
        mov     r7, #1
        svc     0

        .equ    P, 0
        .equ    Q, 4
        .equ    R, 8
        .equ    S, 12



Vals:       .space  4
            .word   2
            .word   4
            .word   5
            .align

            .end
