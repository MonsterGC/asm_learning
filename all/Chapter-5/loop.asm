section .text
global _main

_main:    

xor eax, eax
mov ecx, 5

myloop:
    inc eax
    loop myloop

mov eax, 1
mov edx, 0
int 80h   
