section .data
src: db "Test sentence",0
srcLen: EQU ($ - src)
search: db "s"

section .text
global _main

_main:
    xor eax, eax
    mov al, [search]
    lea edi, [src]
    mov ecx, srcLen
    cld
    repne scasb
    
    jnz nofound
    jmp done

nofound:
done:
    mov eax, 1
    mov ebx, 0
    int 80h
