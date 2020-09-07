section .data
english1: DD    25
english2: DD    30
chinese1: DD    89
chinese2: DD    100
math1: DD       49
math2: DD       50
computer1: DD   80
computer2: DD   150

section .text
global _main

_main:

english:
    mov eax, [english1]
    mov ebx, [english2]
    imul eax, eax, 100
    div ebx
    ;mov edx, 0  ; clear edx(remainder)
    xor edx, edx ; Better Performance    

chinese:
    mov eax, [chinese1]
    mov ebx, [chinese2]
    imul eax, eax, 100 
    div ebx
    ;mov edx, 0
    xor edx, edx
math:
    mov eax, [math1]
    mov ebx, [math2]
    imul eax, eax, 100
    div ebx
    ;mov edx, 0
    xor edx, edx

computer:
    mov eax, [computer1]
    mov ebx, [computer2]
    imul eax, eax, 100
    div ebx
    ;mov edx, 0
    xor edx, edx

mov eax, 1
mov eax, 0
int 80h    
