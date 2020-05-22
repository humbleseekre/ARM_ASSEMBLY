


        .global main

main:

        LDR R0, =#0xBABEFACE
        LDR R1, =#0xDEADBEAF

        EOR R0, R0, R1
        EOR R1, R0, R1
        EOR R0, R0, R1

        MOV R7, #1
        SVC 0
        .end
