section .data
array: dd 1, 2, 3, 4

section .text
global _main


_main:
    mov eax, array
    mov ebx, [array + 4]
    
    mov edx, 2
    mov DWORD [array + edx * 4], 10
    mov ebx, [array + edx * 4]
    mov DWORD [array + 3 * 4], 20
    mov ebx, [array + 3 * 4]

mov eax, 1
mov edx, 0
int 80h
