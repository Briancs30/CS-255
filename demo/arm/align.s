    .global main

main:
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    ldr r1, [r0]
    

.data
x:  .word 5    