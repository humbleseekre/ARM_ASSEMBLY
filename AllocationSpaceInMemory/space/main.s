@ So to make this module accessbile from another module of the system, since this system is going to start somewhere, sinc eth s
        .global main

main:
        LDR         R0, =A @R0 is pointing to the address of the empty space
        MOV         R1, #5 @ move value 5 to R1
        STR         R1,[R0] @store the content of register R1 into the address pointed to by register R0

        LDR         R0,=D
        MOV         R1,#4
        STR         R1,[R0]

        LDR         R0,=C
        MOV         R1,#200
        STR         R1,[R0]

        MOV         R7,#1 @we can t erminate our program and give control back to the operating system by doing move R1, #1
        SVC         0  @SVC 0 is the system call and that transfer the program execution back to the operating system

        @define variables A, D and C in data section and access those variables using LDR, STR and MOV in above program

        .data
A:      .space      4
D:      .space      4
C:      .space      4
        .align
        .end

