section .data
sum: DD 0x10000

message:
    DB "Welcome to Assembly programming", 0ah
    DB "Your grade will be randomly assigned", 0ah
    DB "by  the Intel 8086 processor!", 0

section .bss
input: RESB 1

section .text
global _main

_main:

swap:
    mov BYTE [input], 11001000b
    int 80h 
