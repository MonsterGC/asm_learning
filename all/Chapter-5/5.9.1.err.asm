section .data
num: DD 1000000

section .text
global _main

_main:

foritem:
    mov edx, 1
    mov ebx, 1
    xor eax, eax
    add eax, edx
    add eax, ebx
    inner:
        mov ecx, edx
        add edx, ebx
        ;mov ecx, edx
        ;and ecx, 1
        ;cmp ecx, 0
        jnp sum
        sum:
            add eax, edx
        mov ebx, ecx
        cmp edx, [num]
        jbe inner

mov eax, 1
mov ebx, 0
int 80h
