  .global main

main: @arrays implementation
    movw r0, #:lower16:a
    movt r0, #:upper16:a
    ldr r1, [r0,#(3*4)]


    .data
a:  .word 1, 2, 3, 4, 5
b:  .skip 4*20 @int(4)*array size
