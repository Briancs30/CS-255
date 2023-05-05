/*
* THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian
*
*
*/
.global main
.data

a:        .word -4567

.text

main:


/*******************************************************************
*
* Write the assembler instruction to each question after the
* CORRESPONDING LABEL:
*                       Q1, Q2, Q3, ..... Q10
* Define the variable for each question after the
* CORRESPONDING LABEL:
*                       v1, v2, v3, ..... v10
*
* The v1, v2,.. labels are towards the end of the file,
*
* *** Failure to do so will result in point dedections !!! ***
*******************************************************************/

/*******************************************************************
* Put your assembler instructions AFTER this line
*******************************************************************/

/**************************************************************************
* Define an uninitialized byte variable at label v1 (see the end of
* this file) and  write the assembler instruction at label Q1 to
* move the byte value 23 into this variable.
*
* Do NOT forget to SKIP some horizontal space (or use TAB) !!!
**************************************************************************/
Q1:     
        movw r0, #:lower16:v1
        movt r0, #:upper16:v1
        ldrsb r1, [r0]
        mov r1, #23
        strb r1, [r0]


/**************************************************************************
* Define an initialized byte variable at label v2 with initial value -14
* and write the assembler instructions at label Q2 to move the byte value
* at memory location B into this variable.
*
**************************************************************************/
Q2:     
        movw r0, #:lower16:v2
        movt r0, #:upper16:v2
        ldrsb r1, [r0]
        mov r1, #-14
        strb r1, [r0]

/**************************************************************************
* Define an initialized byte variable at label v3 with initial value -105
* and write the assembler instructions at label Q3 to move the byte value
* of the sum of v1 and v2 to v3.
**************************************************************************/
Q3:     
        movw r0, #:lower16:v1
        movt r0, #:upper16:v1
        ldrsb r0, [r0]
        movw r1, #:lower16:v2
        movt r1, #:upper16:v2
        ldrsb r1, [r1]
        movw r2, #:lower16:v3
        movt r2, #:upper16:v3
        add r3, r1, r0
        strb r3, [r2]


/**************************************************************************
* Define an initialized byte variable at label v4 with initial value -12
* and write the assembler instructions at label Q4 to move the value
* from S to this variable - you should see -8 moved
**************************************************************************/
Q4:     
        movw r0, #:lower16:S
        movt r0, #:upper16:S
        ldrsb r0, [r0]
        movw r1, #:lower16:v4
        movt r1, #:upper16:v4
        strb r0, [r1]



/**************************************************************************
* Define an uninitialized short variable at label v5 and write
* the assembler instructions at label Q5 to move the short value 5635
* into this variable.
**************************************************************************/
Q5:     
        mov r0, #5635
        movw r1, #:lower16:v5
        movt r1, #:upper16:v5
        strh r0, [r1]


/**************************************************************************
* Define an initialized short variable at label v6 with initial value -53
* and write the assembler instructions at label Q6 to move the short value
* at memory location S into this variable - you should see -8 moved
**************************************************************************/
Q6:     
        movw r0, #:lower16:S
        movt r0, #:upper16:S
        ldrsh r0, [r0]
        movw r1, #:lower16:v6
        movt r1, #:upper16:v6
        strh r0, [r1]



/**************************************************************************
* Define an initialized short variable at label v7 with initial value -1
* and write the assembler instructions at label Q7 to move the sum of
* v5 and v6 to v7
**************************************************************************/
Q7:     
        movw r0, #:lower16:v5
        movt r0, #:upper16:v5
        ldrsh r0, [r0]
        movw r1, #:lower16:v6
        movt r1, #:upper16:v6
        ldrsh r1, [r1]
        movw r2, #:lower16:v7
        movt r2, #:upper16:v7
        add r3, r0, r1
        strh r3, [r2]


/**************************************************************************
* Define an uninitialized int variable at label v8 and write the assembler
* instructions at label Q8 to move the int value -200000 into this variable.
**************************************************************************/
Q8:     movw r0, #:lower16:-200000
        movt r0, #:upper16:-200000
        movw r1, #:lower16:v8
        movt r1, #:upper16:v8
        str r0, [r1]
        


/**************************************************************************
* Define an initialized int variable at label v9 with initial value 255
* and write the assembler instructions at label Q9 to move the int value
* at memory location L into this variable.
**************************************************************************/
Q9:     movw r0, #:lower16:L
        movt r0, #:upper16:L
        movw r1, #:lower16:v9
        movt r1, #:upper16:v9
        ldr r0, [r0]
        str r0, [r1]



/**************************************************************************
* Define an initialized int variable at label v10 with initial value -224
* and write the assembler instructions at label Q10 to move the sum of
* v8 and v9 to v10
**************************************************************************/
Q10:    movw r0, #:lower16:v8
        movt r0, #:upper16:v8
        movw r1, #:lower16:v9
        movt r1, #:upper16:v9
        movw r3, #:lower16:v10
        movt r3, #:upper16:v10
        ldr r0, [r0]
        ldr r1, [r1]
        add r2, r0, r1
        str r2, [r3]



Stop:	nop
	nop

/*************************************************
* Write your variable definitions here...
*
* Do NOT forget to SKIP some space (or use TAB) !!!
*************************************************/

.data

v1:     .skip 1

v2:     .byte -14

v3:     .byte -105

v4:     .byte -12

v5:     .skip 2

v6:     .short -53

v7:     .short -1

.align 2
v8:     .skip 4 

v9:     .word 255

.align 2
v10:    .word -224


/*************************************************
* Don't touch the variables below this line
*************************************************/


        .skip  20

B:      .byte   24
        .byte   0
S:      .short  -8
L:      .word   8

.end
