section .data
src: db "I DON'T KONW WHAT WE'RE YELLING ABOUT!",0

section .text
global _main

_main:  
    lea esi, [src]
    lodsd
    int 80h

