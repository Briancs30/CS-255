    .global main

main: // to compile, arm-as -o file.o file.s then arm-ld -o file file.o //to run, arm-gdb file
    mov r0, #5 //one assembly instruction per line //ni, run step by step

