section .data
data1: DD 1200
data2: DW 120

section .text
global _main
    
_main:
    mov eax, [data1]
    movsx edx, WORD [data2]
    mul edx
    
mov eax, 1
mov ebx, 0
int 80h
