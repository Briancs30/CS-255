    .global main

main: @while loop implementation
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    ldr r1, [r0]
WHILE:
    cmp r1, #10 @ r1-10; gives whether it's +,-, or 0
    bgt L1 @greater than

    add r1, #2
    str r1, [r0]
    b  WHILE @break back to while

@check x variable x/1dw &x
L1:@jump  directly to here if met condition
    mov r1, #20
    str r1, [r0]
.data
x:  .word 1