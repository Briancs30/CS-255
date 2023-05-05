.global main

main://to compile, arm-gcc -g -o move move.s
    @ mov r0, #123 //second opprand can be immediate(numerical) or direct(r1)
    @ mov r1, #0xaaaa
    @ mov r2, #('A')

    @mov r0, #0x5678 //replace cur val
    @movt r0, #0x1234 //add to front of val
    
    movw r0, #:lower16:1000000 //without adjusting numbers to hex
    movt r0, #:upper16:1000000
    mov r1, r0
