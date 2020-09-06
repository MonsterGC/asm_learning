section .data
sum: DD 0x10000

message:
    DB "Welcome to Assembly programming", 0ah
    DB "Your grade will be randomly assigned", 0ah
    DB "by  the Intel 8086 processor!", 0
length: EQU ($ - message)
length5: EQU (5 * length)

section .bss
input: RESB 1

section .text
global _main

_main:
swap:
    mov eax, length5
    inc eax
    int 80h 
