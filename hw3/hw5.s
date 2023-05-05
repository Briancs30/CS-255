@THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
.global main

main:
    movw r0, #:lower16:q
    movt r0, #:upper16:q
    movw r1, #:lower16:r
    movt r1, #:upper16:r
    movw r2, #:lower16:a
    movt r2, #:upper16:a
    ldr r2,[r2]
    mov r3, #0
    str r3, [r0]
    str r2, [r1]
    ldr r2, [r1] //set r value to r2
    movw r3, #:lower16:b @set b value to r3
    movt r3, #:upper16:b
    ldr r3, [r3]
    ldr r4, [r0] //set q value to r4
WHILE:
    cmp r3, r2 @ b-r; gives whether it's +,-, or 0
    bgt L1 @greater than

    ldr r4, [r0]
    add r4, #1
    str r4, [r0]
    sub r2, r2, r3
    str r2, [r1]
    b  WHILE @break back to while
L1:
    movw r1, #:lower16:ans
    movt r1, #:upper16:ans
    strh r4, [r1]
    ldr r0, [r0]
    movw r1, #:lower16:r
    movt r1, #:upper16:r
    ldr r1, [r1]
End:
    nop
.data
    .align 2
a:  .word 86
q:  .skip 4
r:  .skip 4
.align
b:  .short 11
ans:    .skip 2
