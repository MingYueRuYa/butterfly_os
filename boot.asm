org 0x7c00;

LoadAddr EQU 08000h

entry:
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax

    mov bx, LoadAddr   ; ES:BX 数据存储缓冲区
	mov CH, 1
	mov DH, 0
readFloppy:
    cmp byte [load_count], 0
    je beginLoad

    mov cl, 1   ; 存储扇区号

    mov ah, 0x02    ; 表示读盘操作
    mov al, 18       ; 表示读取一个扇区
    mov dl, 0       ; 驱动器号
    INT 0x13        ; 调用BIOS中断实现磁盘读取功能

    inc ch
    dec byte [load_count]

    JC fin
	add bx, 512*18
    jmp readFloppy

beginLoad:
    jmp LoadAddr

; 连续读取几个柱面
load_count db 3

fin:
    HLT
    jmp fin

