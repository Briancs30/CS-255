  .global main
//si step by step gdb; ni skip bl step
main: @function call implementation
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    mov r1, #1
    str r1, [r0]
    bl func //brench(jump) and link

    bl func
    mov r1, #20
    str r1, [r0]
    b End

func:
    movw r0, #:lower16:x
    movt r0, #:upper16:x
    ldr r1, [r0]
    add r1, #1
    str r1, [r0]
    @mov r12, lr @save original address to new place; prevent being replaced
    push {lr}
    bl other
    pop {lr}
    mov lr, r12
    bx lr
    @mov pc, lr //copy link register to program counter

other:
    movw r0, #:lower16:y
    movt r0, #:upper16:y
    ldr r1, [r0] @ r1 = y
    sub r1, #1
    str r1, [r0]
    bx lr   //takes register content and move to program counter

End:
    nop

    .data
x:  .skip 4
y:  .word 10
@b func set breakpoint
@ c continue
