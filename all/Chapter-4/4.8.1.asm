section .data
;data1: DW 1200
;data2: DW 120

section .text
global _main
    
_main:
    mov eax, 1200
    mov edx, 120
    mul edx
    
mov eax, 1
mov ebx, 0
int 80h
