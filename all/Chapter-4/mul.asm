section .data
mval: DD 664751
dval: DD 8

section .text
global _main

_main:
    ;   mul 1-op
    mov eax, [mval]
    mov ebx, 8
    mul ebx

    ;   imul 1-op
    mov eax, [mval]
    mov ebx, 8
    imul ebx

    ;   imul 3-op
    imul eax, [mval], 8

    ;   div 1-op
    mov ebx, 0
    mov eax, 5318008
    mov ecx, [dval]
    div ecx

    ;   idiv 1-op
    mov edx, 0
    mov eax, 5318008
    mov ecx, [dval]
    idiv ecx

mov eax, 1
mov ebx, 0
int 80h
