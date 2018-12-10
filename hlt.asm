[map symbols hlt.map]
[SECTION .s32]
BITS 32
mov ax, 'L'
int 02DH
mov ax, 'G'
int 02DH

retf
