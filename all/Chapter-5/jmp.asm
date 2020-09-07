section .data
wages: DD 4600

section .bss
taxes: RESD 1

section .text
global _main

_main:
    mov eax, 50000
    cmp DWORD [wages], eax
    jae hight
    mov DWORD [taxes], 2000
    jmp done

hight:
    mov DWORD [taxes], 4000

done:
    mov eax, 1
    mov ebx, 0
    int 80
