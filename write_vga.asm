; Disassembly of file: ./bin/write_vga.o
; Sun Aug 19 14:00:50 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        mov     dword [ebp-0CH], 0                      ; 0006 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 655360                 ; 000D _ C7. 45, F0, 000A0000
        jmp     ?_002                                   ; 0014 _ EB, 17

?_001:  mov     eax, dword [ebp-10H]                    ; 0016 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 0019 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 001C _ 8B. 45, F0
        and     eax, 0FH                                ; 001F _ 83. E0, 0F
        mov     edx, eax                                ; 0022 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 0024 _ 8B. 45, F4
        mov     byte [eax], dl                          ; 0027 _ 88. 10
        add     dword [ebp-10H], 1                      ; 0029 _ 83. 45, F0, 01
?_002:  cmp     dword [ebp-10H], 720895                 ; 002D _ 81. 7D, F0, 000AFFFF
        jle     ?_001                                   ; 0034 _ 7E, E0
?_003:  call    io_hlt                                  ; 0036 _ E8, FFFFFFFC(rel)
        jmp     ?_003                                   ; 003B _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 003D _ 55
        mov     ebp, esp                                ; 003E _ 89. E5
        sub     esp, 24                                 ; 0040 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1397          ; 0043 _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], 15                      ; 004B _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0053 _ C7. 04 24, 00000000
        call    set_palette                             ; 005A _ E8, FFFFFFFC(rel)
        nop                                             ; 005F _ 90
        leave                                           ; 0060 _ C9
        ret                                             ; 0061 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0062 _ 55
        mov     ebp, esp                                ; 0063 _ 89. E5
        sub     esp, 40                                 ; 0065 _ 83. EC, 28
        call    io_load_eflags                          ; 0068 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 006D _ 89. 45, F4
        call    io_cli                                  ; 0070 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0075 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0078 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 007C _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0083 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0088 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 008B _ 89. 45, F0
        jmp     ?_005                                   ; 008E _ EB, 59

?_004:  mov     eax, dword [ebp+10H]                    ; 0090 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0093 _ 0F B6. 00
        movzx   eax, al                                 ; 0096 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0099 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 009D _ C7. 04 24, 000003C9
        call    io_out8                                 ; 00A4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 00A9 _ 8B. 45, 10
        add     eax, 1                                  ; 00AC _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 00AF _ 0F B6. 00
        movzx   eax, al                                 ; 00B2 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 00B5 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 00B9 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 00C0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 00C5 _ 8B. 45, 10
        add     eax, 2                                  ; 00C8 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 00CB _ 0F B6. 00
        movzx   eax, al                                 ; 00CE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 00D1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 00D5 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 00DC _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 00E1 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 00E5 _ 83. 45, F0, 01
?_005:  mov     eax, dword [ebp-10H]                    ; 00E9 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 00EC _ 3B. 45, 0C
        jle     ?_004                                   ; 00EF _ 7E, 9F
        mov     eax, dword [ebp-0CH]                    ; 00F1 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00F4 _ 89. 04 24
        call    io_store_eflags                         ; 00F7 _ E8, FFFFFFFC(rel)
        nop                                             ; 00FC _ 90
        leave                                           ; 00FD _ C9
        ret                                             ; 00FE _ C3
; set_palette End of function



table_rgb.1397:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 00H, 00H, 0FFH, 0FFH, 00H, 0FFH, 00H    ; 0008 _ ........
        db 0FFH, 0FFH, 0FFH, 0FFH, 0FFH, 0C6H, 0C6H, 0C6H; 0010 _ ........
        db 84H, 00H, 00H, 00H, 84H, 00H, 84H, 84H       ; 0018 _ ........
        db 00H, 00H, 00H, 84H, 84H, 00H, 84H, 00H       ; 0020 _ ........
        db 84H, 84H, 84H, 84H, 84H, 00H, 00H, 00H       ; 0028 _ ........




