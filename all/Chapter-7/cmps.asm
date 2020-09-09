section .data
src: db "Test sentence",0
lenSrc: EQU ($ - src)
dst: db "Test sentence",0
lenDst: EQU ($ - dst)

section .text
global _main

_main:
    mov eax, lenSrc
    cmp eax, lenDst
    jne notqual
    
    lea esi, [src]
    lea edi, [dst]
    mov ecx, lenSrc
    ;mov ebx, [lenSrc] => err
    cld
    repe cmpsb  
    jnz notqual
    jmp done

notqual:
done:
    mov eax, 1
    mov ebx, 0
    int 80h
