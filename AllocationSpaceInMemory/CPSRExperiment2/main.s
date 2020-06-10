
        .global main

main:

        LDR     R0,=0X1000000000
        LDR     R1,=0X2000000000
        LDR     R2,=0X3000000000
        LDR     R3,=0X4000000000
        LDR     R5,=0X4100000000

        MOV     R8,#0       @ FOR SAVING LOWER WORD
        MOV     R9,#0       @ R9 for accumulating carrys

        ADDS    R8,R8,R0
        ADC     R9,R9,#0        @R9 = R9 + 0 + Carry

        ADDS    R8,R8,R1
        ADC     R9,R9,#0        @R9 = R9 + 0 + Carry

        ADDS    R8,R8,R2
        ADC     R9,R9,#0        @R9 = R9 + 0 + Carry

        ADDS    R8,R8,R3
        ADC     R9,R9,#0        @R9 = R9 + 0 + Carry

        ADDS    R8,R8,R5
        ADC     R9,R9,#0        @R9 = R9 + 0 + Carry

        MOV    R7, #1
        SVC    0

        .end





