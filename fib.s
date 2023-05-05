@THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
    .global main

main:
    movw r3, #:lower16:n
    movt r3, #:upper16:n
    ldr r3,[r3] @r0=n

    push {r3}
    bl fib
    add sp, #4 @r0= fib(n)

    movw r4, #:lower16:ans
    movt r4, #:upper16:ans
    str r0,[r4]

    b End
fib:
    @ a: [fp, #8]
    @ x: [fp, #-4]
    @ y: [fp, #-8]
    @return r0
    push {lr}
    push {fp}
    mov fp, sp

    ldr r0, [fp, #8] @ r0=a
    push {r0}
    cmp r0, #0 @ n-0; gives whether it's +,-, or 0
    beq s1
    cmp r0, #1 @ n-1; gives whether it's +,-, or 0
    bne Else

s1:
    mov r0, #1
    b ret

Else:
    sub r0,#1 @r0=a-1
    push {r0}
    bl fib
    add sp, #4 @r0= fib(a-1)
    push {r0} @save x to local var

    ldr r1, [fp, #8]
    sub r1,#2 @r0=a-2
    push {r1}
    bl fib
    add sp, #4 @r1= fib(a-2)
    push {r0} @save y to local var

    ldr r0,[fp, #-8]
    ldr r1,[fp, #-12]
    add r0, r1 @x+y

ret:
    mov sp, fp
    pop {fp}
    pop {lr}
    bx lr
    

End:
    nop

    .data
.align 2
n:  .int 10
ans: .skip 4
