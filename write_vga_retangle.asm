; Disassembly of file: ./bin/write_vga_retangle.o
; Sun Aug 19 14:49:11 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 56                                 ; 0003 _ 83. EC, 38
        mov     dword [ebp-0CH], 655360                 ; 0006 _ C7. 45, F4, 000A0000
        call    init_palette                            ; 000D _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], 120                    ; 0012 _ C7. 44 24, 18, 00000078
        mov     dword [esp+14H], 120                    ; 001A _ C7. 44 24, 14, 00000078
        mov     dword [esp+10H], 20                     ; 0022 _ C7. 44 24, 10, 00000014
        mov     dword [esp+0CH], 20                     ; 002A _ C7. 44 24, 0C, 00000014
        mov     dword [esp+8H], 1                       ; 0032 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], 320                     ; 003A _ C7. 44 24, 04, 00000140
        mov     eax, dword [ebp-0CH]                    ; 0042 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0045 _ 89. 04 24
        call    boxfill8                                ; 0048 _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], 150                    ; 004D _ C7. 44 24, 18, 00000096
        mov     dword [esp+14H], 170                    ; 0055 _ C7. 44 24, 14, 000000AA
        mov     dword [esp+10H], 50                     ; 005D _ C7. 44 24, 10, 00000032
        mov     dword [esp+0CH], 70                     ; 0065 _ C7. 44 24, 0C, 00000046
        mov     dword [esp+8H], 2                       ; 006D _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], 320                     ; 0075 _ C7. 44 24, 04, 00000140
        mov     eax, dword [ebp-0CH]                    ; 007D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0080 _ 89. 04 24
        call    boxfill8                                ; 0083 _ E8, FFFFFFFC(rel)
        mov     dword [esp+18H], 180                    ; 0088 _ C7. 44 24, 18, 000000B4
        mov     dword [esp+14H], 220                    ; 0090 _ C7. 44 24, 14, 000000DC
        mov     dword [esp+10H], 80                     ; 0098 _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 120                    ; 00A0 _ C7. 44 24, 0C, 00000078
        mov     dword [esp+8H], 4                       ; 00A8 _ C7. 44 24, 08, 00000004
        mov     dword [esp+4H], 320                     ; 00B0 _ C7. 44 24, 04, 00000140
        mov     eax, dword [ebp-0CH]                    ; 00B8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00BB _ 89. 04 24
        call    boxfill8                                ; 00BE _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 00C3 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 00C8 _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 00CA _ 55
        mov     ebp, esp                                ; 00CB _ 89. E5
        sub     esp, 24                                 ; 00CD _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1400          ; 00D0 _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], 15                      ; 00D8 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 00E0 _ C7. 04 24, 00000000
        call    set_palette                             ; 00E7 _ E8, FFFFFFFC(rel)
        nop                                             ; 00EC _ 90
        leave                                           ; 00ED _ C9
        ret                                             ; 00EE _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 00EF _ 55
        mov     ebp, esp                                ; 00F0 _ 89. E5
        sub     esp, 40                                 ; 00F2 _ 83. EC, 28
        call    io_load_eflags                          ; 00F5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 00FA _ 89. 45, F4
        call    io_cli                                  ; 00FD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0102 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0105 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0109 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0110 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0115 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0118 _ 89. 45, F0
        jmp     ?_003                                   ; 011B _ EB, 59

?_002:  mov     eax, dword [ebp+10H]                    ; 011D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0120 _ 0F B6. 00
        movzx   eax, al                                 ; 0123 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0126 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 012A _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0131 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0136 _ 8B. 45, 10
        add     eax, 1                                  ; 0139 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 013C _ 0F B6. 00
        movzx   eax, al                                 ; 013F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0142 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0146 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 014D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0152 _ 8B. 45, 10
        add     eax, 2                                  ; 0155 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0158 _ 0F B6. 00
        movzx   eax, al                                 ; 015B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 015E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0162 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0169 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 016E _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0172 _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 0176 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0179 _ 3B. 45, 0C
        jle     ?_002                                   ; 017C _ 7E, 9F
        mov     eax, dword [ebp-0CH]                    ; 017E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0181 _ 89. 04 24
        call    io_store_eflags                         ; 0184 _ E8, FFFFFFFC(rel)
        nop                                             ; 0189 _ 90
        leave                                           ; 018A _ C9
        ret                                             ; 018B _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 018C _ 55
        mov     ebp, esp                                ; 018D _ 89. E5
        sub     esp, 20                                 ; 018F _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0192 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0195 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0198 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 019B _ 89. 45, FC
        jmp     ?_007                                   ; 019E _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 01A0 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 01A3 _ 89. 45, F8
        jmp     ?_006                                   ; 01A6 _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 01A8 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 01AB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 01AF _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 01B1 _ 8B. 45, F8
        add     eax, edx                                ; 01B4 _ 01. D0
        mov     edx, eax                                ; 01B6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 01B8 _ 8B. 45, 08
        add     edx, eax                                ; 01BB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 01BD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 01C1 _ 88. 02
        add     dword [ebp-8H], 1                       ; 01C3 _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 01C7 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 01CA _ 3B. 45, 1C
        jle     ?_005                                   ; 01CD _ 7E, D9
        add     dword [ebp-4H], 1                       ; 01CF _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 01D3 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 01D6 _ 3B. 45, 20
        jle     ?_004                                   ; 01D9 _ 7E, C5
        leave                                           ; 01DB _ C9
        ret                                             ; 01DC _ C3
; boxfill8 End of function



table_rgb.1400:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0000 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0008 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0010 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0018 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0020 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0028 _ ........




