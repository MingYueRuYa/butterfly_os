org 0x7c00;

LoadAddr EQU 08000h
BufferAddr EQU 7E0h

BaseOfStack equ 07c00h

entry:
    mov ax, 0
    mov ss, ax
    mov ds, ax

    mov ax, BufferAddr
    mov es, ax

    mov ax, 0
    mov ss, ax
    mov sp, BaseOfStack
    mov di, ax
    mov si, ax

    mov bx, 0       ; ES:BX data buffer
    mov ch, 1       ; synclider
    mov dh, 0       ; head
    mov cl, 0       ; sector

;write data to address 07E00

readFloppy:
    cmp byte [load_count], 0
    je beginLoad

    mov bx, 0
    inc cl
    mov ah, 0x02

    mov al, 1
    mov dl, 0

    int 0x13
    JC fin

;read 0x7e00 data to 0x8000h address
copySector:
    push si
    push di
    push cx

    mov cx, 0200h
    mov di, 0
    mov si, 0
    mov ax, word [load_section]
    mov ds, ax

copy:
    cmp cx, 0    
    je copyend

    mov al, byte[es:si]
    mov byte [ds:di], al
    
    inc di
    inc si
    dec cx
    jmp copy

copyend:
    pop cx
    pop di
    pop si

    mov bx, ds
    add bx, 020h
    mov ax, 0
    mov ds, ax
    mov word [load_section], bx
    mov bx, 0

    cmp cl, 18
    jb readFloppy

    inc ch
    mov cl, 0
    dec byte [load_count]
    jmp readFloppy

beginLoad:
    mov ax, 0
    mov ds, ax

    jmp LoadAddr

load_count db 10
load_section dw 0800h

fin:
    HLT
    jmp fin

