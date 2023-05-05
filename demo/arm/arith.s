    .global main

main:
    movw r0, #:lower16:b
    movt r0, #:upper16:b
    ldr r0, [r0]

    movw r1, #:lower16:e
    movt r1, #:upper16:e
    ldrsb r1, [r1]

    sub r0, r0, r1 @ r0 = r0 - r1
 @   rsb r0, r0, #1 @ r0 = 1 - r0

    movw r1, #:lower16:d
    movt r1, #:upper16:d
    strh r0, [r1]
end:
    nop







.data
    .align 2
a:  .skip 4
b:  .word 0x7fffff00
c:  .word 55
d:  .short -5
e:  .byte 10
    .skip 1
f:  .word 0x12345678
