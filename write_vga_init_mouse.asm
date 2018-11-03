; Disassembly of file: ./bin/write_vga_init_mouse.o
; Sat Sep  1 13:57:52 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 48                                 ; 0005 _ 83. EC, 30
        mov     dword [esp], bootInfo                   ; 0008 _ C7. 04 24, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0019 _ 89. 45, EC
        movzx   eax, word [?_061]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [xsize], eax                      ; 0024 _ A3, 00000218(d)
        movzx   eax, word [?_062]                       ; 0029 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0030 _ 98
        mov     dword [ysize], eax                      ; 0031 _ A3, 0000021C(d)
        mov     dword [esp+8H], keybuf                  ; 0036 _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 32                      ; 003E _ C7. 44 24, 04, 00000020
        mov     dword [esp], keyinfo                    ; 0046 _ C7. 04 24, 00000120(d)
        call    fifo8_init                              ; 004D _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], mousebuf                ; 0052 _ C7. 44 24, 08, 00000180(d)
        mov     dword [esp+4H], 128                     ; 005A _ C7. 44 24, 04, 00000080
        mov     dword [esp], mouseinfo                  ; 0062 _ C7. 04 24, 00000138(d)
        call    fifo8_init                              ; 0069 _ E8, FFFFFFFC(rel)
        call    init_palette                            ; 006E _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0073 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0078 _ A1, 0000021C(d)
        lea     ecx, [eax-1DH]                          ; 007D _ 8D. 48, E3
        mov     eax, dword [xsize]                      ; 0080 _ A1, 00000218(d)
        lea     edx, [eax-1H]                           ; 0085 _ 8D. 50, FF
        mov     eax, dword [xsize]                      ; 0088 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 008D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0091 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 0095 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 009D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 00A5 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 00AD _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 00B1 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 00B4 _ 89. 04 24
        call    boxfill8                                ; 00B7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 00BC _ A1, 0000021C(d)
        lea     ebx, [eax-1CH]                          ; 00C1 _ 8D. 58, E4
        mov     eax, dword [xsize]                      ; 00C4 _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 00C9 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 00CC _ A1, 0000021C(d)
        lea     edx, [eax-1CH]                          ; 00D1 _ 8D. 50, E4
        mov     eax, dword [xsize]                      ; 00D4 _ A1, 00000218(d)
        mov     dword [esp+18H], ebx                    ; 00D9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 00DD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 00E1 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 00E5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 00ED _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], eax                     ; 00F5 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 00F9 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 00FC _ 89. 04 24
        call    boxfill8                                ; 00FF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0104 _ A1, 0000021C(d)
        lea     ebx, [eax-1BH]                          ; 0109 _ 8D. 58, E5
        mov     eax, dword [xsize]                      ; 010C _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 0111 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 0114 _ A1, 0000021C(d)
        lea     edx, [eax-1BH]                          ; 0119 _ 8D. 50, E5
        mov     eax, dword [xsize]                      ; 011C _ A1, 00000218(d)
        mov     dword [esp+18H], ebx                    ; 0121 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0125 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0129 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 012D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0135 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 013D _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0141 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0144 _ 89. 04 24
        call    boxfill8                                ; 0147 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 014C _ A1, 0000021C(d)
        lea     ebx, [eax-1H]                           ; 0151 _ 8D. 58, FF
        mov     eax, dword [xsize]                      ; 0154 _ A1, 00000218(d)
        lea     ecx, [eax-1H]                           ; 0159 _ 8D. 48, FF
        mov     eax, dword [ysize]                      ; 015C _ A1, 0000021C(d)
        lea     edx, [eax-1AH]                          ; 0161 _ 8D. 50, E6
        mov     eax, dword [xsize]                      ; 0164 _ A1, 00000218(d)
        mov     dword [esp+18H], ebx                    ; 0169 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 016D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0171 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 0175 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 017D _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], eax                     ; 0185 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0189 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 018C _ 89. 04 24
        call    boxfill8                                ; 018F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0194 _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 0199 _ 8D. 48, E8
        mov     eax, dword [ysize]                      ; 019C _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 01A1 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 01A4 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 01A9 _ 89. 4C 24, 18
        mov     dword [esp+14H], 59                     ; 01AD _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], edx                    ; 01B5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 3                      ; 01B9 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 01C1 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 01C9 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 01CD _ 8B. 45, EC
        mov     dword [esp], eax                        ; 01D0 _ 89. 04 24
        call    boxfill8                                ; 01D3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 01D8 _ A1, 0000021C(d)
        lea     ecx, [eax-4H]                           ; 01DD _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 01E0 _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 01E5 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 01E8 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 01ED _ 89. 4C 24, 18
        mov     dword [esp+14H], 2                      ; 01F1 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], edx                    ; 01F9 _ 89. 54 24, 10
        mov     dword [esp+0CH], 2                      ; 01FD _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0205 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 020D _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0211 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0214 _ 89. 04 24
        call    boxfill8                                ; 0217 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 021C _ A1, 0000021C(d)
        lea     ecx, [eax-4H]                           ; 0221 _ 8D. 48, FC
        mov     eax, dword [ysize]                      ; 0224 _ A1, 0000021C(d)
        lea     edx, [eax-4H]                           ; 0229 _ 8D. 50, FC
        mov     eax, dword [xsize]                      ; 022C _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 0231 _ 89. 4C 24, 18
        mov     dword [esp+14H], 59                     ; 0235 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], edx                    ; 023D _ 89. 54 24, 10
        mov     dword [esp+0CH], 3                      ; 0241 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0249 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0251 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0255 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0258 _ 89. 04 24
        call    boxfill8                                ; 025B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0260 _ A1, 0000021C(d)
        lea     ecx, [eax-5H]                           ; 0265 _ 8D. 48, FB
        mov     eax, dword [ysize]                      ; 0268 _ A1, 0000021C(d)
        lea     edx, [eax-17H]                          ; 026D _ 8D. 50, E9
        mov     eax, dword [xsize]                      ; 0270 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 0275 _ 89. 4C 24, 18
        mov     dword [esp+14H], 59                     ; 0279 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], edx                    ; 0281 _ 89. 54 24, 10
        mov     dword [esp+0CH], 59                     ; 0285 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 028D _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0295 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0299 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 029C _ 89. 04 24
        call    boxfill8                                ; 029F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 02A4 _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 02A9 _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 02AC _ A1, 0000021C(d)
        lea     edx, [eax-3H]                           ; 02B1 _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 02B4 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 02B9 _ 89. 4C 24, 18
        mov     dword [esp+14H], 59                     ; 02BD _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], edx                    ; 02C5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 2                      ; 02C9 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 02D1 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 02D9 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 02DD _ 8B. 45, EC
        mov     dword [esp], eax                        ; 02E0 _ 89. 04 24
        call    boxfill8                                ; 02E3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 02E8 _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 02ED _ 8D. 48, FD
        mov     eax, dword [ysize]                      ; 02F0 _ A1, 0000021C(d)
        lea     edx, [eax-18H]                          ; 02F5 _ 8D. 50, E8
        mov     eax, dword [xsize]                      ; 02F8 _ A1, 00000218(d)
        mov     dword [esp+18H], ecx                    ; 02FD _ 89. 4C 24, 18
        mov     dword [esp+14H], 60                     ; 0301 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], edx                    ; 0309 _ 89. 54 24, 10
        mov     dword [esp+0CH], 60                     ; 030D _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0315 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 031D _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0321 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    boxfill8                                ; 0327 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 032C _ A1, 0000021C(d)
        lea     esi, [eax-18H]                          ; 0331 _ 8D. 70, E8
        mov     eax, dword [xsize]                      ; 0334 _ A1, 00000218(d)
        lea     ebx, [eax-4H]                           ; 0339 _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 033C _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 0341 _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 0344 _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 0349 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 034C _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 0351 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0355 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0359 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 035D _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 0361 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 0369 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 036D _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0370 _ 89. 04 24
        call    boxfill8                                ; 0373 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0378 _ A1, 0000021C(d)
        lea     esi, [eax-4H]                           ; 037D _ 8D. 70, FC
        mov     eax, dword [xsize]                      ; 0380 _ A1, 00000218(d)
        lea     ebx, [eax-2FH]                          ; 0385 _ 8D. 58, D1
        mov     eax, dword [ysize]                      ; 0388 _ A1, 0000021C(d)
        lea     ecx, [eax-17H]                          ; 038D _ 8D. 48, E9
        mov     eax, dword [xsize]                      ; 0390 _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 0395 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 0398 _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 039D _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 03A1 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 03A5 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 03A9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 03AD _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], eax                     ; 03B5 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 03B9 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 03BC _ 89. 04 24
        call    boxfill8                                ; 03BF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 03C4 _ A1, 0000021C(d)
        lea     esi, [eax-3H]                           ; 03C9 _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 03CC _ A1, 00000218(d)
        lea     ebx, [eax-4H]                           ; 03D1 _ 8D. 58, FC
        mov     eax, dword [ysize]                      ; 03D4 _ A1, 0000021C(d)
        lea     ecx, [eax-3H]                           ; 03D9 _ 8D. 48, FD
        mov     eax, dword [xsize]                      ; 03DC _ A1, 00000218(d)
        lea     edx, [eax-2FH]                          ; 03E1 _ 8D. 50, D1
        mov     eax, dword [xsize]                      ; 03E4 _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 03E9 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 03ED _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 03F1 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 03F5 _ 89. 54 24, 0C
        mov     dword [esp+8H], 7                       ; 03F9 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 0401 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0405 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0408 _ 89. 04 24
        call    boxfill8                                ; 040B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ysize]                      ; 0410 _ A1, 0000021C(d)
        lea     esi, [eax-3H]                           ; 0415 _ 8D. 70, FD
        mov     eax, dword [xsize]                      ; 0418 _ A1, 00000218(d)
        lea     ebx, [eax-3H]                           ; 041D _ 8D. 58, FD
        mov     eax, dword [ysize]                      ; 0420 _ A1, 0000021C(d)
        lea     ecx, [eax-18H]                          ; 0425 _ 8D. 48, E8
        mov     eax, dword [xsize]                      ; 0428 _ A1, 00000218(d)
        lea     edx, [eax-3H]                           ; 042D _ 8D. 50, FD
        mov     eax, dword [xsize]                      ; 0430 _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 0435 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0439 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 043D _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 0441 _ 89. 54 24, 0C
        mov     dword [esp+8H], 7                       ; 0445 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], eax                     ; 044D _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0451 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0454 _ 89. 04 24
        call    boxfill8                                ; 0457 _ E8, FFFFFFFC(rel)
        mov     eax, dword [xsize]                      ; 045C _ A1, 00000218(d)
        sub     eax, 16                                 ; 0461 _ 83. E8, 10
        mov     edx, eax                                ; 0464 _ 89. C2
        shr     edx, 31                                 ; 0466 _ C1. EA, 1F
        add     eax, edx                                ; 0469 _ 01. D0
        sar     eax, 1                                  ; 046B _ D1. F8
        mov     dword [mx], eax                         ; 046D _ A3, 00000210(d)
        mov     eax, dword [ysize]                      ; 0472 _ A1, 0000021C(d)
        sub     eax, 44                                 ; 0477 _ 83. E8, 2C
        mov     edx, eax                                ; 047A _ 89. C2
        shr     edx, 31                                 ; 047C _ C1. EA, 1F
        add     eax, edx                                ; 047F _ 01. D0
        sar     eax, 1                                  ; 0481 _ D1. F8
        mov     dword [my], eax                         ; 0483 _ A3, 00000214(d)
        mov     dword [esp+4H], 14                      ; 0488 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 0490 _ C7. 04 24, 00000020(d)
        call    init_mouse_cursor                       ; 0497 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [my]                         ; 049C _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 04A2 _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 04A8 _ A1, 00000218(d)
        mov     dword [esp+1CH], 16                     ; 04AD _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 04B5 _ C7. 44 24, 18, 00000020(d)
        mov     dword [esp+14H], ecx                    ; 04BD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 04C1 _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 04C5 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 04CD _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 04D5 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 04D9 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 04DC _ 89. 04 24
        call    putblock                                ; 04DF _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 04E4 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mdec                       ; 04E9 _ C7. 04 24, 00000200(d)
        call    enable_mouse                            ; 04F0 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 0                      ; 04F5 _ C7. 45, F0, 00000000
?_001:  call    io_cli                                  ; 04FC _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0501 _ C7. 04 24, 00000120(d)
        call    fifo8_status                            ; 0508 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 050D _ 89. C3
        mov     dword [esp], mouseinfo                  ; 050F _ C7. 04 24, 00000138(d)
        call    fifo8_status                            ; 0516 _ E8, FFFFFFFC(rel)
        add     eax, ebx                                ; 051B _ 01. D8
        test    eax, eax                                ; 051D _ 85. C0
        jnz     ?_002                                   ; 051F _ 75, 0A
        call    io_stihlt                               ; 0521 _ E8, FFFFFFFC(rel)
        jmp     ?_004                                   ; 0526 _ E9, 00000093

?_002:  mov     dword [esp], keyinfo                    ; 052B _ C7. 04 24, 00000120(d)
        call    fifo8_status                            ; 0532 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0537 _ 85. C0
        jz      ?_003                                   ; 0539 _ 74, 69
        call    io_sti                                  ; 053B _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0540 _ C7. 04 24, 00000120(d)
        call    fifo8_get                               ; 0547 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 054C _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 054F _ 8B. 45, F0
        movzx   eax, al                                 ; 0552 _ 0F B6. C0
        mov     dword [esp], eax                        ; 0555 _ 89. 04 24
        call    charToHexStr                            ; 0558 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 055D _ 89. 45, F4
        mov     edx, dword [showXPos.1489]              ; 0560 _ 8B. 15, 00000220(d)
        mov     eax, dword [xsize]                      ; 0566 _ A1, 00000218(d)
        mov     ecx, dword [ebp-0CH]                    ; 056B _ 8B. 4D, F4
        mov     dword [esp+14H], ecx                    ; 056E _ 89. 4C 24, 14
        mov     dword [esp+10H], 7                      ; 0572 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 057A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], edx                     ; 0582 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0586 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 058A _ 8B. 45, EC
        mov     dword [esp], eax                        ; 058D _ 89. 04 24
        call    showString                              ; 0590 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showXPos.1489]              ; 0595 _ A1, 00000220(d)
        add     eax, 32                                 ; 059A _ 83. C0, 20
        mov     dword [showXPos.1489], eax              ; 059D _ A3, 00000220(d)
        jmp     ?_004                                   ; 05A2 _ EB, 1A

?_003:  mov     dword [esp], mouseinfo                  ; 05A4 _ C7. 04 24, 00000138(d)
        call    fifo8_status                            ; 05AB _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 05B0 _ 85. C0
        jz      ?_004                                   ; 05B2 _ 74, 0A
        call    show_mouse_info                         ; 05B4 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 05B9 _ E9, FFFFFF3E

?_004:  jmp     ?_001                                   ; 05BE _ E9, FFFFFF39
; CMain End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 05C3 _ 55
        mov     ebp, esp                                ; 05C4 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 05C6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 05C9 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 05CC _ A1, 00000210(d)
        add     eax, edx                                ; 05D1 _ 01. D0
        mov     dword [mx], eax                         ; 05D3 _ A3, 00000210(d)
        mov     eax, dword [ebp+8H]                     ; 05D8 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 05DB _ 8B. 50, 08
        mov     eax, dword [my]                         ; 05DE _ A1, 00000214(d)
        add     eax, edx                                ; 05E3 _ 01. D0
        mov     dword [my], eax                         ; 05E5 _ A3, 00000214(d)
        mov     eax, dword [mx]                         ; 05EA _ A1, 00000210(d)
        test    eax, eax                                ; 05EF _ 85. C0
        jns     ?_005                                   ; 05F1 _ 79, 0A
        mov     dword [mx], 0                           ; 05F3 _ C7. 05, 00000210(d), 00000000
?_005:  mov     eax, dword [my]                         ; 05FD _ A1, 00000214(d)
        test    eax, eax                                ; 0602 _ 85. C0
        jns     ?_006                                   ; 0604 _ 79, 0A
        mov     dword [my], 0                           ; 0606 _ C7. 05, 00000214(d), 00000000
?_006:  mov     eax, dword [xsize]                      ; 0610 _ A1, 00000218(d)
        lea     edx, [eax-10H]                          ; 0615 _ 8D. 50, F0
        mov     eax, dword [mx]                         ; 0618 _ A1, 00000210(d)
        cmp     edx, eax                                ; 061D _ 39. C2
        jge     ?_007                                   ; 061F _ 7D, 0D
        mov     eax, dword [xsize]                      ; 0621 _ A1, 00000218(d)
        sub     eax, 16                                 ; 0626 _ 83. E8, 10
        mov     dword [mx], eax                         ; 0629 _ A3, 00000210(d)
?_007:  mov     eax, dword [ysize]                      ; 062E _ A1, 0000021C(d)
        lea     edx, [eax-10H]                          ; 0633 _ 8D. 50, F0
        mov     eax, dword [my]                         ; 0636 _ A1, 00000214(d)
        cmp     edx, eax                                ; 063B _ 39. C2
        jge     ?_008                                   ; 063D _ 7D, 0D
        mov     eax, dword [ysize]                      ; 063F _ A1, 0000021C(d)
        sub     eax, 16                                 ; 0644 _ 83. E8, 10
        mov     dword [my], eax                         ; 0647 _ A3, 00000214(d)
?_008:  pop     ebp                                     ; 064C _ 5D
        ret                                             ; 064D _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 064E _ 55
        mov     ebp, esp                                ; 064F _ 89. E5
        push    esi                                     ; 0651 _ 56
        push    ebx                                     ; 0652 _ 53
        sub     esp, 32                                 ; 0653 _ 83. EC, 20
        mov     eax, dword [my]                         ; 0656 _ A1, 00000214(d)
        lea     esi, [eax+0FH]                          ; 065B _ 8D. 70, 0F
        mov     eax, dword [mx]                         ; 065E _ A1, 00000210(d)
        lea     ebx, [eax+0FH]                          ; 0663 _ 8D. 58, 0F
        mov     ecx, dword [my]                         ; 0666 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 066C _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 0672 _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 0677 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 067B _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 067F _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 0683 _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 0687 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 068F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0693 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0696 _ 89. 04 24
        call    boxfill8                                ; 0699 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 069E _ 83. C4, 20
        pop     ebx                                     ; 06A1 _ 5B
        pop     esi                                     ; 06A2 _ 5E
        pop     ebp                                     ; 06A3 _ 5D
        ret                                             ; 06A4 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 06A5 _ 55
        mov     ebp, esp                                ; 06A6 _ 89. E5
        sub     esp, 40                                 ; 06A8 _ 83. EC, 28
        mov     ecx, dword [my]                         ; 06AB _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 06B1 _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 06B7 _ A1, 00000218(d)
        mov     dword [esp+1CH], 16                     ; 06BC _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 06C4 _ C7. 44 24, 18, 00000020(d)
        mov     dword [esp+14H], ecx                    ; 06CC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06D0 _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 06D4 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 06DC _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 06E4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06E8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06EB _ 89. 04 24
        call    putblock                                ; 06EE _ E8, FFFFFFFC(rel)
        leave                                           ; 06F3 _ C9
        ret                                             ; 06F4 _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 06F5 _ 55
        mov     ebp, esp                                ; 06F6 _ 89. E5
        sub     esp, 40                                 ; 06F8 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 06FB _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0700 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0703 _ C6. 45, F3, 00
        call    io_sti                                  ; 0707 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mouseinfo                  ; 070C _ C7. 04 24, 00000138(d)
        call    fifo8_get                               ; 0713 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-0DH], al                      ; 0718 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 071B _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 071F _ 89. 44 24, 04
        mov     dword [esp], mdec                       ; 0723 _ C7. 04 24, 00000200(d)
        call    mouse_decode                            ; 072A _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 072F _ 85. C0
        jz      ?_009                                   ; 0731 _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 0733 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0736 _ 89. 04 24
        call    eraseMouse                              ; 0739 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mdec                       ; 073E _ C7. 04 24, 00000200(d)
        call    computeMousePosition                    ; 0745 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 074A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 074D _ 89. 04 24
        call    drawMouse                               ; 0750 _ E8, FFFFFFFC(rel)
?_009:  leave                                           ; 0755 _ C9
        ret                                             ; 0756 _ C3
; show_mouse_info End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0757 _ 55
        mov     ebp, esp                                ; 0758 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 075A _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 075D _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0763 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0766 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 076C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 076F _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 0775 _ 5D
        ret                                             ; 0776 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 0777 _ 55
        mov     ebp, esp                                ; 0778 _ 89. E5
        sub     esp, 24                                 ; 077A _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1512          ; 077D _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0785 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 078D _ C7. 04 24, 00000000
        call    set_palette                             ; 0794 _ E8, FFFFFFFC(rel)
        nop                                             ; 0799 _ 90
        leave                                           ; 079A _ C9
        ret                                             ; 079B _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 079C _ 55
        mov     ebp, esp                                ; 079D _ 89. E5
        sub     esp, 40                                 ; 079F _ 83. EC, 28
        call    io_load_eflags                          ; 07A2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 07A7 _ 89. 45, F4
        call    io_cli                                  ; 07AA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 07AF _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 07B2 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 07B6 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 07BD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 07C2 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 07C5 _ 89. 45, F0
        jmp     ?_011                                   ; 07C8 _ EB, 62

?_010:  mov     eax, dword [ebp+10H]                    ; 07CA _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 07CD _ 0F B6. 00
        shr     al, 2                                   ; 07D0 _ C0. E8, 02
        movzx   eax, al                                 ; 07D3 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 07D6 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 07DA _ C7. 04 24, 000003C9
        call    io_out8                                 ; 07E1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 07E6 _ 8B. 45, 10
        add     eax, 1                                  ; 07E9 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 07EC _ 0F B6. 00
        shr     al, 2                                   ; 07EF _ C0. E8, 02
        movzx   eax, al                                 ; 07F2 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 07F5 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 07F9 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0800 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0805 _ 8B. 45, 10
        add     eax, 2                                  ; 0808 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 080B _ 0F B6. 00
        shr     al, 2                                   ; 080E _ C0. E8, 02
        movzx   eax, al                                 ; 0811 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0814 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0818 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 081F _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 0824 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0828 _ 83. 45, F0, 01
?_011:  mov     eax, dword [ebp-10H]                    ; 082C _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 082F _ 3B. 45, 0C
        jle     ?_010                                   ; 0832 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 0834 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0837 _ 89. 04 24
        call    io_store_eflags                         ; 083A _ E8, FFFFFFFC(rel)
        nop                                             ; 083F _ 90
        leave                                           ; 0840 _ C9
        ret                                             ; 0841 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 0842 _ 55
        mov     ebp, esp                                ; 0843 _ 89. E5
        sub     esp, 20                                 ; 0845 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0848 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 084B _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 084E _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0851 _ 89. 45, FC
        jmp     ?_015                                   ; 0854 _ EB, 33

?_012:  mov     eax, dword [ebp+14H]                    ; 0856 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0859 _ 89. 45, F8
        jmp     ?_014                                   ; 085C _ EB, 1F

?_013:  mov     eax, dword [ebp-4H]                     ; 085E _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0861 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0865 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0867 _ 8B. 45, F8
        add     eax, edx                                ; 086A _ 01. D0
        mov     edx, eax                                ; 086C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 086E _ 8B. 45, 08
        add     edx, eax                                ; 0871 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0873 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0877 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0879 _ 83. 45, F8, 01
?_014:  mov     eax, dword [ebp-8H]                     ; 087D _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0880 _ 3B. 45, 1C
        jle     ?_013                                   ; 0883 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0885 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0889 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 088C _ 3B. 45, 20
        jle     ?_012                                   ; 088F _ 7E, C5
        leave                                           ; 0891 _ C9
        ret                                             ; 0892 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0893 _ 55
        mov     ebp, esp                                ; 0894 _ 89. E5
        sub     esp, 20                                 ; 0896 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0899 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 089C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 089F _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 08A6 _ E9, 0000016C

?_016:  mov     edx, dword [ebp-4H]                     ; 08AB _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 08AE _ 8B. 45, 1C
        add     eax, edx                                ; 08B1 _ 01. D0
        movzx   eax, byte [eax]                         ; 08B3 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 08B6 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 08B9 _ 80. 7D, FB, 00
        jns     ?_017                                   ; 08BD _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 08BF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 08C2 _ 8B. 55, 14
        add     eax, edx                                ; 08C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08CD _ 8B. 45, 10
        add     eax, edx                                ; 08D0 _ 01. D0
        mov     edx, eax                                ; 08D2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08D4 _ 8B. 45, 08
        add     edx, eax                                ; 08D7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08D9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08DD _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 08DF _ 0F BE. 45, FB
        and     eax, 40H                                ; 08E3 _ 83. E0, 40
        test    eax, eax                                ; 08E6 _ 85. C0
        jz      ?_018                                   ; 08E8 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 08EA _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 08ED _ 8B. 55, 14
        add     eax, edx                                ; 08F0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08F2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 08F6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 08F8 _ 8B. 45, 10
        add     eax, edx                                ; 08FB _ 01. D0
        lea     edx, [eax+1H]                           ; 08FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0900 _ 8B. 45, 08
        add     edx, eax                                ; 0903 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0905 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0909 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 090B _ 0F BE. 45, FB
        and     eax, 20H                                ; 090F _ 83. E0, 20
        test    eax, eax                                ; 0912 _ 85. C0
        jz      ?_019                                   ; 0914 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0916 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0919 _ 8B. 55, 14
        add     eax, edx                                ; 091C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 091E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0922 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0924 _ 8B. 45, 10
        add     eax, edx                                ; 0927 _ 01. D0
        lea     edx, [eax+2H]                           ; 0929 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 092C _ 8B. 45, 08
        add     edx, eax                                ; 092F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0931 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0935 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0937 _ 0F BE. 45, FB
        and     eax, 10H                                ; 093B _ 83. E0, 10
        test    eax, eax                                ; 093E _ 85. C0
        jz      ?_020                                   ; 0940 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0942 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0945 _ 8B. 55, 14
        add     eax, edx                                ; 0948 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 094A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 094E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0950 _ 8B. 45, 10
        add     eax, edx                                ; 0953 _ 01. D0
        lea     edx, [eax+3H]                           ; 0955 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0958 _ 8B. 45, 08
        add     edx, eax                                ; 095B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 095D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0961 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0963 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0967 _ 83. E0, 08
        test    eax, eax                                ; 096A _ 85. C0
        jz      ?_021                                   ; 096C _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 096E _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0971 _ 8B. 55, 14
        add     eax, edx                                ; 0974 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0976 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 097A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 097C _ 8B. 45, 10
        add     eax, edx                                ; 097F _ 01. D0
        lea     edx, [eax+4H]                           ; 0981 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0984 _ 8B. 45, 08
        add     edx, eax                                ; 0987 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0989 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 098D _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 098F _ 0F BE. 45, FB
        and     eax, 04H                                ; 0993 _ 83. E0, 04
        test    eax, eax                                ; 0996 _ 85. C0
        jz      ?_022                                   ; 0998 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 099A _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 099D _ 8B. 55, 14
        add     eax, edx                                ; 09A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09A8 _ 8B. 45, 10
        add     eax, edx                                ; 09AB _ 01. D0
        lea     edx, [eax+5H]                           ; 09AD _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 09B0 _ 8B. 45, 08
        add     edx, eax                                ; 09B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09B9 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 09BB _ 0F BE. 45, FB
        and     eax, 02H                                ; 09BF _ 83. E0, 02
        test    eax, eax                                ; 09C2 _ 85. C0
        jz      ?_023                                   ; 09C4 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 09C6 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 09C9 _ 8B. 55, 14
        add     eax, edx                                ; 09CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09CE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09D2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09D4 _ 8B. 45, 10
        add     eax, edx                                ; 09D7 _ 01. D0
        lea     edx, [eax+6H]                           ; 09D9 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 09DC _ 8B. 45, 08
        add     edx, eax                                ; 09DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09E5 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 09E7 _ 0F BE. 45, FB
        and     eax, 01H                                ; 09EB _ 83. E0, 01
        test    eax, eax                                ; 09EE _ 85. C0
        jz      ?_024                                   ; 09F0 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 09F2 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 09F5 _ 8B. 55, 14
        add     eax, edx                                ; 09F8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09FE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A00 _ 8B. 45, 10
        add     eax, edx                                ; 0A03 _ 01. D0
        lea     edx, [eax+7H]                           ; 0A05 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0A08 _ 8B. 45, 08
        add     edx, eax                                ; 0A0B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A0D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A11 _ 88. 02
?_024:  add     dword [ebp-4H], 1                       ; 0A13 _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 0A17 _ 83. 7D, FC, 0F
        jle     ?_016                                   ; 0A1B _ 0F 8E, FFFFFE8A
        leave                                           ; 0A21 _ C9
        ret                                             ; 0A22 _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 0A23 _ 55
        mov     ebp, esp                                ; 0A24 _ 89. E5
        sub     esp, 28                                 ; 0A26 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0A29 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0A2C _ 88. 45, FC
        jmp     ?_027                                   ; 0A2F _ EB, 46

?_026:  mov     eax, dword [ebp+1CH]                    ; 0A31 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0A34 _ 0F B6. 00
        movzx   eax, al                                 ; 0A37 _ 0F B6. C0
        shl     eax, 4                                  ; 0A3A _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0A3D _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 0A43 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0A47 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A4B _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0A4F _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0A52 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0A56 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0A59 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0A5D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A60 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A64 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A67 _ 89. 04 24
        call    showFont8                               ; 0A6A _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 0A6F _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0A73 _ 83. 45, 1C, 01
?_027:  mov     eax, dword [ebp+1CH]                    ; 0A77 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0A7A _ 0F B6. 00
        test    al, al                                  ; 0A7D _ 84. C0
        jnz     ?_026                                   ; 0A7F _ 75, B0
        leave                                           ; 0A81 _ C9
        ret                                             ; 0A82 _ C3
; showString End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0A83 _ 55
        mov     ebp, esp                                ; 0A84 _ 89. E5
        sub     esp, 20                                 ; 0A86 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0A89 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0A8C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A8F _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 0A96 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 0A9B _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0AA2 _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 0AA7 _ 8B. 45, FC
        shl     eax, 4                                  ; 0AAA _ C1. E0, 04
        mov     edx, eax                                ; 0AAD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0AAF _ 8B. 45, F8
        add     eax, edx                                ; 0AB2 _ 01. D0
        add     eax, cursor.1570                        ; 0AB4 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0AB9 _ 0F B6. 00
        cmp     al, 42                                  ; 0ABC _ 3C, 2A
        jnz     ?_030                                   ; 0ABE _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0AC0 _ 8B. 45, FC
        shl     eax, 4                                  ; 0AC3 _ C1. E0, 04
        mov     edx, eax                                ; 0AC6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0AC8 _ 8B. 45, F8
        add     eax, edx                                ; 0ACB _ 01. D0
        mov     edx, eax                                ; 0ACD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0ACF _ 8B. 45, 08
        add     eax, edx                                ; 0AD2 _ 01. D0
        mov     byte [eax], 0                           ; 0AD4 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0AD7 _ 8B. 45, FC
        shl     eax, 4                                  ; 0ADA _ C1. E0, 04
        mov     edx, eax                                ; 0ADD _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0ADF _ 8B. 45, F8
        add     eax, edx                                ; 0AE2 _ 01. D0
        add     eax, cursor.1570                        ; 0AE4 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0AE9 _ 0F B6. 00
        cmp     al, 79                                  ; 0AEC _ 3C, 4F
        jnz     ?_031                                   ; 0AEE _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0AF0 _ 8B. 45, FC
        shl     eax, 4                                  ; 0AF3 _ C1. E0, 04
        mov     edx, eax                                ; 0AF6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0AF8 _ 8B. 45, F8
        add     eax, edx                                ; 0AFB _ 01. D0
        mov     edx, eax                                ; 0AFD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AFF _ 8B. 45, 08
        add     eax, edx                                ; 0B02 _ 01. D0
        mov     byte [eax], 7                           ; 0B04 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 0B07 _ 8B. 45, FC
        shl     eax, 4                                  ; 0B0A _ C1. E0, 04
        mov     edx, eax                                ; 0B0D _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0B0F _ 8B. 45, F8
        add     eax, edx                                ; 0B12 _ 01. D0
        add     eax, cursor.1570                        ; 0B14 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0B19 _ 0F B6. 00
        cmp     al, 46                                  ; 0B1C _ 3C, 2E
        jnz     ?_032                                   ; 0B1E _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0B20 _ 8B. 45, FC
        shl     eax, 4                                  ; 0B23 _ C1. E0, 04
        mov     edx, eax                                ; 0B26 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0B28 _ 8B. 45, F8
        add     eax, edx                                ; 0B2B _ 01. D0
        mov     edx, eax                                ; 0B2D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B2F _ 8B. 45, 08
        add     edx, eax                                ; 0B32 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B34 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B38 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 0B3A _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0B3E _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 0B42 _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0B48 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 0B4C _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0B50 _ 0F 8E, FFFFFF45
        leave                                           ; 0B56 _ C9
        ret                                             ; 0B57 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0B58 _ 55
        mov     ebp, esp                                ; 0B59 _ 89. E5
        sub     esp, 16                                 ; 0B5B _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0B5E _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0B65 _ EB, 50

?_035:  mov     dword [ebp-8H], 0                       ; 0B67 _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0B6E _ EB, 3B

?_036:  mov     eax, dword [ebp-4H]                     ; 0B70 _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 0B73 _ 8B. 55, 1C
        add     eax, edx                                ; 0B76 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B78 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 0B7C _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 0B7F _ 8B. 4D, 18
        add     edx, ecx                                ; 0B82 _ 01. CA
        add     eax, edx                                ; 0B84 _ 01. D0
        mov     edx, eax                                ; 0B86 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B88 _ 8B. 45, 08
        add     edx, eax                                ; 0B8B _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0B8D _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0B90 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0B94 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 0B96 _ 8B. 45, F8
        add     eax, ecx                                ; 0B99 _ 01. C8
        mov     ecx, eax                                ; 0B9B _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0B9D _ 8B. 45, 20
        add     eax, ecx                                ; 0BA0 _ 01. C8
        movzx   eax, byte [eax]                         ; 0BA2 _ 0F B6. 00
        mov     byte [edx], al                          ; 0BA5 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0BA7 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0BAB _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0BAE _ 3B. 45, 10
        jl      ?_036                                   ; 0BB1 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0BB3 _ 83. 45, FC, 01
?_038:  mov     eax, dword [ebp-4H]                     ; 0BB7 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0BBA _ 3B. 45, 14
        jl      ?_035                                   ; 0BBD _ 7C, A8
        leave                                           ; 0BBF _ C9
        ret                                             ; 0BC0 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0BC1 _ 55
        mov     ebp, esp                                ; 0BC2 _ 89. E5
        sub     esp, 40                                 ; 0BC4 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 0BC7 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0BCC _ 89. 45, EC
        movzx   eax, word [?_061]                       ; 0BCF _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0BD6 _ 98
        mov     dword [ebp-10H], eax                    ; 0BD7 _ 89. 45, F0
        movzx   eax, word [?_062]                       ; 0BDA _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0BE1 _ 98
        mov     dword [ebp-0CH], eax                    ; 0BE2 _ 89. 45, F4
        mov     dword [esp+4H], 32                      ; 0BE5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0BED _ C7. 04 24, 00000020
        call    io_out8                                 ; 0BF4 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 0BF9 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0BFD _ C7. 04 24, 00000060
        call    io_in8                                  ; 0C04 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 0C09 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0C0C _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0C10 _ 89. 44 24, 04
        mov     dword [esp], keyinfo                    ; 0C14 _ C7. 04 24, 00000120(d)
        call    fifo8_put                               ; 0C1B _ E8, FFFFFFFC(rel)
        leave                                           ; 0C20 _ C9
        ret                                             ; 0C21 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0C22 _ 55
        mov     ebp, esp                                ; 0C23 _ 89. E5
        sub     esp, 4                                  ; 0C25 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0C28 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0C2B _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0C2E _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0C32 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0C34 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0C38 _ 83. C0, 37
        jmp     ?_040                                   ; 0C3B _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0C3D _ 0F B6. 45, FC
        add     eax, 48                                 ; 0C41 _ 83. C0, 30
?_040:  leave                                           ; 0C44 _ C9
        ret                                             ; 0C45 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0C46 _ 55
        mov     ebp, esp                                ; 0C47 _ 89. E5
        sub     esp, 24                                 ; 0C49 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0C4C _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0C4F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0C52 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0C59 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0C5D _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0C60 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0C63 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0C67 _ 89. 04 24
        call    charToHexVal                            ; 0C6A _ E8, FFFFFFFC(rel)
        mov     byte [?_060], al                        ; 0C6F _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0C74 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0C78 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0C7B _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0C7E _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0C82 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0C85 _ 89. 04 24
        call    charToHexVal                            ; 0C88 _ E8, FFFFFFFC(rel)
        mov     byte [?_059], al                        ; 0C8D _ A2, 00000012(d)
        mov     eax, keyval                             ; 0C92 _ B8, 00000010(d)
        leave                                           ; 0C97 _ C9
        ret                                             ; 0C98 _ C3
; charToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0C99 _ 55
        mov     ebp, esp                                ; 0C9A _ 89. E5
        sub     esp, 24                                 ; 0C9C _ 83. EC, 18
?_041:  mov     dword [esp], 100                        ; 0C9F _ C7. 04 24, 00000064
        call    io_in8                                  ; 0CA6 _ E8, FFFFFFFC(rel)
        and     eax, 02H                                ; 0CAB _ 83. E0, 02
        test    eax, eax                                ; 0CAE _ 85. C0
        jnz     ?_042                                   ; 0CB0 _ 75, 02
        jmp     ?_043                                   ; 0CB2 _ EB, 02

?_042:  jmp     ?_041                                   ; 0CB4 _ EB, E9

?_043:  leave                                           ; 0CB6 _ C9
        ret                                             ; 0CB7 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0CB8 _ 55
        mov     ebp, esp                                ; 0CB9 _ 89. E5
        sub     esp, 24                                 ; 0CBB _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0CBE _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 96                      ; 0CC3 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0CCB _ C7. 04 24, 00000064
        call    io_out8                                 ; 0CD2 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0CD7 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 71                      ; 0CDC _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0CE4 _ C7. 04 24, 00000060
        call    io_out8                                 ; 0CEB _ E8, FFFFFFFC(rel)
        leave                                           ; 0CF0 _ C9
        ret                                             ; 0CF1 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0CF2 _ 55
        mov     ebp, esp                                ; 0CF3 _ 89. E5
        sub     esp, 24                                 ; 0CF5 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0CF8 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 212                     ; 0CFD _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0D05 _ C7. 04 24, 00000064
        call    io_out8                                 ; 0D0C _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0D11 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 244                     ; 0D16 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0D1E _ C7. 04 24, 00000060
        call    io_out8                                 ; 0D25 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0D2A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0D2D _ C6. 40, 03, 00
        nop                                             ; 0D31 _ 90
        leave                                           ; 0D32 _ C9
        ret                                             ; 0D33 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0D34 _ 55
        mov     ebp, esp                                ; 0D35 _ 89. E5
        sub     esp, 40                                 ; 0D37 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0D3A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0D42 _ C7. 04 24, 000000A0
        call    io_out8                                 ; 0D49 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 32                      ; 0D4E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D56 _ C7. 04 24, 00000020
        call    io_out8                                 ; 0D5D _ E8, FFFFFFFC(rel)
        mov     dword [esp], 96                         ; 0D62 _ C7. 04 24, 00000060
        call    io_in8                                  ; 0D69 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 0D6E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D71 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0D75 _ 89. 44 24, 04
        mov     dword [esp], mouseinfo                  ; 0D79 _ C7. 04 24, 00000138(d)
        call    fifo8_put                               ; 0D80 _ E8, FFFFFFFC(rel)
        leave                                           ; 0D85 _ C9
        ret                                             ; 0D86 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0D87 _ 55
        mov     ebp, esp                                ; 0D88 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D8A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D8D _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D90 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D93 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D96 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D99 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D9B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D9E _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0DA1 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0DA4 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0DA7 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0DB1 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0DB8 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0DBB _ C7. 40, 08, 00000000
        nop                                             ; 0DC2 _ 90
        pop     ebp                                     ; 0DC3 _ 5D
        ret                                             ; 0DC4 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0DC5 _ 55
        mov     ebp, esp                                ; 0DC6 _ 89. E5
        sub     esp, 4                                  ; 0DC8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0DCB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0DCE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DD1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DD4 _ 8B. 40, 10
        test    eax, eax                                ; 0DD7 _ 85. C0
        jnz     ?_044                                   ; 0DD9 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0DDB _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0DDE _ 8B. 40, 14
        or      eax, 01H                                ; 0DE1 _ 83. C8, 01
        mov     edx, eax                                ; 0DE4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0DE6 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0DE9 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DEC _ B8, FFFFFFFF
        jmp     ?_046                                   ; 0DF1 _ EB, 50

?_044:  mov     eax, dword [ebp+8H]                     ; 0DF3 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DF6 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DF8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DFB _ 8B. 40, 04
        add     edx, eax                                ; 0DFE _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0E00 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0E04 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0E06 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0E09 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0E0C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E0F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0E12 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E15 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0E18 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0E1B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E1E _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E21 _ 39. C2
        jnz     ?_045                                   ; 0E23 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E25 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0E28 _ C7. 40, 04, 00000000
?_045:  mov     eax, dword [ebp+8H]                     ; 0E2F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E32 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0E35 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0E38 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E3B _ 89. 50, 10
        mov     eax, 0                                  ; 0E3E _ B8, 00000000
?_046:  leave                                           ; 0E43 _ C9
        ret                                             ; 0E44 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0E45 _ 55
        mov     ebp, esp                                ; 0E46 _ 89. E5
        sub     esp, 16                                 ; 0E48 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E4B _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E4E _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E51 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E54 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E57 _ 39. C2
        jnz     ?_047                                   ; 0E59 _ 75, 07
        mov     eax, 4294967295                         ; 0E5B _ B8, FFFFFFFF
        jmp     ?_049                                   ; 0E60 _ EB, 51

?_047:  mov     eax, dword [ebp+8H]                     ; 0E62 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E65 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E67 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E6A _ 8B. 40, 08
        add     eax, edx                                ; 0E6D _ 01. D0
        movzx   eax, byte [eax]                         ; 0E6F _ 0F B6. 00
        movzx   eax, al                                 ; 0E72 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E75 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E78 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E7B _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0E7E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E81 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E84 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E87 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0E8A _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E8D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E90 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E93 _ 39. C2
        jnz     ?_048                                   ; 0E95 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E97 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0E9A _ C7. 40, 08, 00000000
?_048:  mov     eax, dword [ebp+8H]                     ; 0EA1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0EA4 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0EA7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0EAA _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0EAD _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0EB0 _ 8B. 45, FC
?_049:  leave                                           ; 0EB3 _ C9
        ret                                             ; 0EB4 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 0EB5 _ 55
        mov     ebp, esp                                ; 0EB6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0EB8 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0EBB _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0EBE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0EC1 _ 8B. 40, 10
        sub     edx, eax                                ; 0EC4 _ 29. C2
        mov     eax, edx                                ; 0EC6 _ 89. D0
        pop     ebp                                     ; 0EC8 _ 5D
        ret                                             ; 0EC9 _ C3
; fifo8_status End of function

mouse_decode:; Function begin
        push    ebp                                     ; 0ECA _ 55
        mov     ebp, esp                                ; 0ECB _ 89. E5
        sub     esp, 4                                  ; 0ECD _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0ED0 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0ED3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0ED6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0ED9 _ 0F B6. 40, 03
        test    al, al                                  ; 0EDD _ 84. C0
        jnz     ?_051                                   ; 0EDF _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0EE1 _ 80. 7D, FC, FA
        jnz     ?_050                                   ; 0EE5 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0EE7 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0EEA _ C6. 40, 03, 01
?_050:  mov     eax, 0                                  ; 0EEE _ B8, 00000000
        jmp     ?_058                                   ; 0EF3 _ E9, 0000010F

?_051:  mov     eax, dword [ebp+8H]                     ; 0EF8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EFB _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0EFF _ 3C, 01
        jnz     ?_053                                   ; 0F01 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0F03 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0F07 _ 25, 000000C8
        cmp     eax, 8                                  ; 0F0C _ 83. F8, 08
        jnz     ?_052                                   ; 0F0F _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 0F11 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F14 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 0F18 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 0F1A _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0F1D _ C6. 40, 03, 02
?_052:  mov     eax, 0                                  ; 0F21 _ B8, 00000000
        jmp     ?_058                                   ; 0F26 _ E9, 000000DC

?_053:  mov     eax, dword [ebp+8H]                     ; 0F2B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F2E _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0F32 _ 3C, 02
        jnz     ?_054                                   ; 0F34 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 0F36 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F39 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 0F3D _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0F40 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0F43 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0F47 _ B8, 00000000
        jmp     ?_058                                   ; 0F4C _ E9, 000000B6

?_054:  mov     eax, dword [ebp+8H]                     ; 0F51 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F54 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0F58 _ 3C, 03
        jne     ?_057                                   ; 0F5A _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 0F60 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 0F63 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 0F67 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0F6A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F6D _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0F71 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F74 _ 0F B6. 00
        movzx   eax, al                                 ; 0F77 _ 0F B6. C0
        and     eax, 07H                                ; 0F7A _ 83. E0, 07
        mov     edx, eax                                ; 0F7D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F7F _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0F82 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F85 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0F88 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 0F8C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0F8F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0F92 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F95 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0F98 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 0F9C _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 0F9F _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FA2 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0FA5 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FA8 _ 0F B6. 00
        movzx   eax, al                                 ; 0FAB _ 0F B6. C0
        and     eax, 10H                                ; 0FAE _ 83. E0, 10
        test    eax, eax                                ; 0FB1 _ 85. C0
        jz      ?_055                                   ; 0FB3 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0FB5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FB8 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0FBB _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FC0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FC2 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FC5 _ 89. 50, 04
?_055:  mov     eax, dword [ebp+8H]                     ; 0FC8 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0FCB _ 0F B6. 00
        movzx   eax, al                                 ; 0FCE _ 0F B6. C0
        and     eax, 20H                                ; 0FD1 _ 83. E0, 20
        test    eax, eax                                ; 0FD4 _ 85. C0
        jz      ?_056                                   ; 0FD6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0FD8 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0FDB _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0FDE _ 0D, FFFFFF00
        mov     edx, eax                                ; 0FE3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FE5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FE8 _ 89. 50, 08
?_056:  mov     eax, dword [ebp+8H]                     ; 0FEB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0FEE _ 8B. 40, 08
        neg     eax                                     ; 0FF1 _ F7. D8
        mov     edx, eax                                ; 0FF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FF5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FF8 _ 89. 50, 08
        mov     eax, 1                                  ; 0FFB _ B8, 00000001
        jmp     ?_058                                   ; 1000 _ EB, 05

?_057:  mov     eax, 4294967295                         ; 1002 _ B8, FFFFFFFF
?_058:  leave                                           ; 1007 _ C9
        ret                                             ; 1008 _ C3
; mouse_decode End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0010 _ 0X

?_059:  db 00H                                          ; 0012 _ .

?_060:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1512:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1570:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_061:  resw    1                                       ; 0004

?_062:  resw    13                                      ; 0006

mcursor:                                                ; byte
        resb    256                                     ; 0020

keyinfo:                                                ; byte
        resb    24                                      ; 0120

mouseinfo:                                              ; byte
        resb    40                                      ; 0138

keybuf:                                                 ; yword
        resb    32                                      ; 0160

mousebuf:                                               ; byte
        resb    128                                     ; 0180

mdec:                                                   ; oword
        resb    16                                      ; 0200

mx:     resd    1                                       ; 0210

my:     resd    1                                       ; 0214

xsize:  resd    1                                       ; 0218

ysize:  resd    1                                       ; 021C

showXPos.1489:                                          ; dword
        resd    1                                       ; 0220

showYPos.1490:                                          ; dword
        resd    1                                       ; 0224


