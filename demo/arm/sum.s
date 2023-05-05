    .global main

main:
    movw r0, #:lower16:a
    movt r0, #:upper16:a
    movw r1, #:lower16:b
    movt r1, #:upper16:b
    ldr r0, [r0]
    ldr r1, [r1]

    push {r1}
    push {r0}

    bl sum

    add sp, #8 @move stack pointer to 8

    movw r0, #:lower16:ans
    movt r0, #:upper16:ans
    str  r2, [r0]
    b End

square:
    @ x: [fp, #8]
    @ y: [fp -4]
    push {lr}
    push {fp}
    mov fp, sp
    sub sp, #4

    ldr r0, [fp, #8]
    mul r2, r0,r0
    str r2, [fp, #-4]

    mov sp, fp
    pop {fp}
    pop {lr}
    bx lr

sum:
    @ a: [fp, #8]
    @ b: [fp, #12]
    @ z: [fp, #-4]
    @ w: [fp, #-8]
    push {lr}
    push {fp}
    mov fp, sp
    sub sp, #8

    ldr r0, [fp, #8] @ r0 = a
    push {r0}
    bl square
    add sp, #4
    str r2, [fp, #-4] @ a=r2
    
    ldr r0, [fp, #12] @r0 = b
    push {r0}
    bl square   @r2= b^2
    add sp, #4
    str r2, [sp]

    ldr r3, [fp, #-4] @r3 = a^2
    add r2, r2, r3
    
    mov sp, fp
    pop {fp}
    pop {lr}
    bx lr   @return in r2

End:
    nop

    .data
a:  .word 5
b:  .word -2
ans:    .skip 4
