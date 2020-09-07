section .data
sum: dd 0
val: dd 25

section .text
global _main
_main:
    mov eax, 0
    inc eax
    add eax, 200
    sub eax, [val]
    mov [sum], eax
    dec DWORD [sum]
    neg DWORD [sum]
    

    mov eax, 1
    mov ebx, 0
    int 80h
