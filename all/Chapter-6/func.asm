section .data
num1: dd 2
num2: dd 4

section .text
global _main, _sum

_main:
    mov eax, 10
    dec eax
    mov ebx, 5

    lea edi, [rel num1]
    lea esi, [rel num2]
    call _sum
    
    add eax, ebx
    dec eax
    
    mov eax, 60   
    xor edi, edi
    syscall    

_sum:
    push ebp
    mov ebp, esp
    push ebx
    mov eax, [edi]
    add eax, [esi]
    pop ebx
    pop ebp
    ret
