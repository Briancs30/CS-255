   .global main

main: @if else implementation
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    movw r1, #:lower16:y
    movt r1, #:upper16:y

    ldr r2, [r0] @r2=x
    cmp r2, #10
    bge else

    ldr r3, [r1] @r3=y
    cmp r3, #0
    bge else
    
    add r3, #1
    str r3, [r1]
    b L1

else:
    add r2, #1
    str r2, [r0]

L1:
    mov r2, #20
    str r2, [r0]

    .data
x:  .word 5
y:  .word 1
