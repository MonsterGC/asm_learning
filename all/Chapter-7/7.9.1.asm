section .data
src: db "Try header",0
lenSrc: EQU ($ - src)
dst: dd "Try header still",0
lenDst: EQU ($ - dst)

section .text
global _main

_main:
    lea esi, [src]
    lea edi, [dst]
    mov ecx, lenSrc
    cld
    repe cmpsb
    jnz isOneTrue
    
    jmp allTrue

isOneTrue:
    cmp ecx, lenSrc
    jne oneTrue
    jmp nofound

allTrue:
    mov eax, 0
    jmp done

oneTrue:
    mov eax, 1
    jmp done

nofound:
    mov eax, -1
    jmp done

done:
    mov eax, 1
    mov ebx, 0
    int 80h
