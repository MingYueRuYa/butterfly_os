org 0x7c00;

LOAD_ADDR EQU 0x9000

entry:
    mov ax, 0
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov si, ax

readFloppy:
    mov ch, 1   ; 柱面号
    mov dh, 0   ; 磁头号
    mov cl, 2   ; 存储扇区号

    mov bx, LOAD_ADDR   ; ES:BX 数据存储缓冲区
    mov ah, 0x02    ; 表示读盘操作
    mov al, 2       ; 表示读取一个扇区
    mov dl, 0       ; 驱动器号
    INT 0x13        ; 调用BIOS中断实现磁盘读取功能

    JC fin

    jmp LOAD_ADDR

fin:
    HLT
    jmp fin

