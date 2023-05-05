    .global main

main: @if stattemnt implement
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    ldr r1, [r0]
    cmp r1, #10 @ r1-10; gives whether it's +,-, or 0
    bge L1
    add r1, #1
    str r1, [r0]


L1:@jump  directly to here if met condition
    mov r1, #20
    str r1, [r0]
.data
x:  .word 5
