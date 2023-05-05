@THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR OR CODE WRITTEN BY OTHER STUDENTS - Brian Hsu
    .global main

main:
    movw r0, #:lower16:i
    movt r0, #:upper16:i
    mov r1, #0
    strh r1, [r0]
for:
    ldrh r1, [r0]// r1= i value
    movw r2, #:lower16:n
    movt r2, #:upper16:n
    ldr r2, [r2]

    cmp r1, r2 @ i-n; gives whether it's +,-, or 0
    bge End
    
    movw r3, #:lower16:sum
    movt r3, #:upper16:sum
    ldrh r5,[r3]
    mov r4, #0
    mul r4,r1,r1
    mul r4,r1,r4
    add r5, r4
    strh r5, [r3]

    add r1,#1
    strh r1, [r0]
    b for

End:
    nop

    .data
.align 2
n:  .int 10
sum: .skip 2
i:  .byte 5
