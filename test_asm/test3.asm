section .data


decimalLiteral: DB 31
hexLiteral:     DB 0fh
charLiteral:    DB 'A'

stringLiteral:
    DB "This is a string that", 0ah
    DB "has a line break in it.", 0
lenString: EQU ($ - stringLiteral)

section .bss
unInitVariable: RESD 1

section .text
global _main

_main:

partOne:
    mov eax, 10
    add eax, hexLiteral

partTwo:
    inc eax
    mov eax, 1
    mov ebx, 0
    int 80h
