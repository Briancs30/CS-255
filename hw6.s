@THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
    .global main

main:
    movw r0, #:lower16:ans
    movt r0, #:upper16:ans
    movw r1, #70    @r1= a
    movw r2, #20    @r2= b
    push {r1}
    push {r2}
    bl gcd
    L1:
    ldr r3, [fp, #4]
    str r3, [r0] @store result into ans variable
    b End


gcd:
    @ a: [fp, #4]
    @ b: [fp]
    mov fp, sp
    ldr r2, [fp]
    cmp r2, #0 @ b-0;
    beq L1
    bl  rem
    ldr r5, [fp]
    ldr r6, [fp, #8]
    str r5, [fp, #4] @store rem(a,b) result to r
    str r6, [fp] @mov r to b
    mov sp, fp
    b gcd

rem:
    @ a: [fp, #4]
    @ b: [fp]
    @ r: [fp, #8]
    @ q: [fp, #12]
    push {lr}
    push {fp}
    mov fp, sp
    add sp, #8

    mov r5, #0 @r5=q=0
    ldr r1, [fp, #12]
    str r5, [fp, #20] @store 0 in q
    str r1, [fp, #16] @store a in r
    @mov r4, r1  @r4=r=a

    WHILE:
    ldr r2, [fp, #8] //load b into r2
    ldr r4, [fp, #16] //load r into r4
    cmp r2, r4 @ b-r; gives whether it's +,-, or 0
    bgt L2 @greater than
    
    ldr r5, [fp, #20]
    add r5, #1  //q++ in c
    str r5, [fp, #20]
    sub r4, r4, r2  //r=r-b
    str r4, [fp, #16]
    b  WHILE @break back to while
    L2:
    mov sp, fp
    pop {fp}
    pop {lr}
    bx lr


End:
    nop

    .data
.align 2
ans:  .skip 4
