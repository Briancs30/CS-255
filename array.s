@THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
    .global main

main:
While:
    movw r0, #:lower16:i
    movt r0, #:upper16:i
    ldr r2,[r0] @r2=i
    movw r1, #:lower16:len
    movt r1, #:upper16:len
    ldr r1,[r1]
    cmp r2, r1 @ i-len; gives whether it's +,-, or 0
    bge End
    mov r6,#4 @r6=i*(int size of 4)
    mul r6, r2

    movw r3, #:lower16:arr
    movt r3, #:upper16:arr
    ldr r3, [r3,r6] @arr[i]=r3
    add r2,#1
    str r2,[r0] @i++
    movw r4, #:lower16:sum
    movt r4, #:upper16:sum
    ldr r5,[r4]
    add r5, r3
    str r5,[r4]
    b While

End:
    nop

    .data
.align 2
arr: .word 1, 2, 3, 4, 5
len: .word 5
i:   .word 0
sum: .word 0
