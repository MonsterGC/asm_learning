section .data

section .bss
letter: RESB 1
r: RESB 4
s: RESB 4
t: RESD 4
x: RESW 2
y: RESW 2
z: RESW 2

section .text
global _main

_main:
mov BYTE [letter], 0x77
mov BYTE [r], 0x5
mov BYTE [s], 0x2
mov WORD [x], 0xa
mov WORD [y], 0x4

mov ax, x
add ax, y
mov WORD [z], ax

mov ax, x
sub ax, y
mov WORD [z], ax

mov edx, 0x0
mov eax, r
mov ecx, s
div ecx
mov DWORD [t], eax

mov edx, 0x0
mov eax, r
mov ecx, s
div ecx
mov DWORD [t], edx

push 0
sub esp, 4
mov eax, 1
int 80h
