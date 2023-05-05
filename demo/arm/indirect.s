.global main

.text
main:
    @movw r0, #:lower16:x
    @movt r0, #:upper16:x

    @ldr r1, [r0] //load r1 with the value of r0

    @movw r2, #:lower16:y
    @movt r2, #:upper16:y

    @ldrsh r2, [r2]

    @movw r3, #:lower16:z
    @movt r3, #:upper16:z

    @ldrsb r3, [r3]

    @add r1, r2, r3 //r1 = r2 + r3
    @add r2, r2, #1 //r2+=1
    @add r3, #1

    //z++
    movw r2, #:lower16:z
    movt r2, #:upper16:z

    ldrsb r3, [r2]

    add r3, #1

    strb r3, [r2]
    //toprint variables on gdb--> x/1db &var
.data
    @.byte 10 //one char
    @.align 1 //guarantees that the next address is divisible by 2^1
    @.2byte -4000 //one short
    @.align 2 //guarantees that the next address is divisible by 2^2=4
    @.4byte 1000000 //one int
    
    .align 2 //just ensure first align, then others will also align
w:    .skip 4 //uninitialized data 4 bytes
x:    .word 1000000 //b one byte,h 2 bytes, w 4 bytes
y:    .short -4000
z:    .byte 10  