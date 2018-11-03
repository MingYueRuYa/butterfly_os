; Disassembly of file: ./bin/write_vga_show_memory.o
; Sun Sep  2 21:37:20 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global CMain: function
global computeMousePosition: function
global eraseMouse: function
global drawMouse: function
global show_mouse_info: function
global initBootInfo: function
global init_palette: function
global set_palette: function
global boxfill8: function
global showFont8: function
global showString: function
global init_mouse_cursor: function
global putblock: function
global intHandlerFromC: function
global charToHexVal: function
global charToHexStr: function
global intToHexStr: function
global wait_KBC_sendready: function
global init_keyboard: function
global enable_mouse: function
global intHandlerForMouse: function
global fifo8_init: function
global fifo8_put: function
global fifo8_get: function
global fifo8_status: function
global mouse_decode: function
global showMemoryInfo: function
global memman

extern io_in8                                           ; near
extern systemFont                                       ; byte
extern io_store_eflags                                  ; near
extern io_out8                                          ; near
extern io_load_eflags                                   ; near
extern io_stihlt                                        ; near
extern io_cli                                           ; near
extern io_sti                                           ; near
extern memman_total                                     ; near
extern memman_free                                      ; near
extern memman_init                                      ; near
extern get_adr_buffer                                   ; near
extern get_memory_block_count                           ; near


SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 64                                 ; 0005 _ 83. EC, 40
        mov     dword [esp], bootInfo                   ; 0008 _ C7. 04 24, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-24H], eax                    ; 0019 _ 89. 45, DC
        movzx   eax, word [?_068]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [xsize], eax                      ; 0024 _ A3, 00000218(d)
        movzx   eax, word [?_069]                       ; 0029 _ 0F B7. 05, 00000006(d)
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
        mov     eax, dword [ebp-24H]                    ; 00B1 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 00F9 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0141 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0189 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 01CD _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0211 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0255 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0299 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 02DD _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0321 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 036D _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 03B9 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0405 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 0451 _ 8B. 45, DC
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
        mov     eax, dword [ebp-24H]                    ; 04D9 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 04DC _ 89. 04 24
        call    putblock                                ; 04DF _ E8, FFFFFFFC(rel)
        call    get_memory_block_count                  ; 04E4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 04E9 _ 89. 45, E0
        mov     eax, dword [ebp-20H]                    ; 04EC _ 8B. 45, E0
        mov     dword [esp], eax                        ; 04EF _ 89. 04 24
        call    intToHexStr                             ; 04F2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 04F7 _ 89. 45, E4
        call    get_adr_buffer                          ; 04FA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 04FF _ 89. 45, E8
        mov     eax, dword [memman]                     ; 0502 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0507 _ 89. 04 24
        call    memman_init                             ; 050A _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 050F _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0514 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 17301504                ; 051C _ C7. 44 24, 04, 01080000
        mov     dword [esp], eax                        ; 0524 _ 89. 04 24
        call    memman_free                             ; 0527 _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 052C _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0531 _ 89. 04 24
        call    memman_total                            ; 0534 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 0539 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 053C _ 8B. 45, EC
        mov     dword [esp], eax                        ; 053F _ 89. 04 24
        call    intToHexStr                             ; 0542 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0547 _ 89. 45, F0
        mov     eax, dword [xsize]                      ; 054A _ A1, 00000218(d)
        mov     dword [esp+14H], ?_072                  ; 054F _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 0557 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 055F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0567 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 056F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0573 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0576 _ 89. 04 24
        call    showString                              ; 0579 _ E8, FFFFFFFC(rel)
        mov     eax, dword [xsize]                      ; 057E _ A1, 00000218(d)
        mov     edx, dword [ebp-10H]                    ; 0583 _ 8B. 55, F0
        mov     dword [esp+14H], edx                    ; 0586 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 058A _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0592 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 136                     ; 059A _ C7. 44 24, 08, 00000088
        mov     dword [esp+4H], eax                     ; 05A2 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 05A6 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 05A9 _ 89. 04 24
        call    showString                              ; 05AC _ E8, FFFFFFFC(rel)
        mov     eax, dword [xsize]                      ; 05B1 _ A1, 00000218(d)
        mov     dword [esp+14H], ?_073                  ; 05B6 _ C7. 44 24, 14, 0000000E(d)
        mov     dword [esp+10H], 7                      ; 05BE _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 05C6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 224                     ; 05CE _ C7. 44 24, 08, 000000E0
        mov     dword [esp+4H], eax                     ; 05D6 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 05DA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 05DD _ 89. 04 24
        call    showString                              ; 05E0 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 05E5 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mdec                       ; 05EA _ C7. 04 24, 00000200(d)
        call    enable_mouse                            ; 05F1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], 0                      ; 05F6 _ C7. 45, F4, 00000000
        mov     dword [ebp-28H], 0                      ; 05FD _ C7. 45, D8, 00000000
?_001:  call    io_cli                                  ; 0604 _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0609 _ C7. 04 24, 00000120(d)
        call    fifo8_status                            ; 0610 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 0615 _ 89. C3
        mov     dword [esp], mouseinfo                  ; 0617 _ C7. 04 24, 00000138(d)
        call    fifo8_status                            ; 061E _ E8, FFFFFFFC(rel)
        add     eax, ebx                                ; 0623 _ 01. D8
        test    eax, eax                                ; 0625 _ 85. C0
        jnz     ?_002                                   ; 0627 _ 75, 0A
        call    io_stihlt                               ; 0629 _ E8, FFFFFFFC(rel)
        jmp     ?_004                                   ; 062E _ E9, 00000098

?_002:  mov     dword [esp], keyinfo                    ; 0633 _ C7. 04 24, 00000120(d)
        call    fifo8_status                            ; 063A _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 063F _ 85. C0
        jz      ?_003                                   ; 0641 _ 74, 6E
        call    io_sti                                  ; 0643 _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0648 _ C7. 04 24, 00000120(d)
        call    fifo8_get                               ; 064F _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0654 _ 89. 45, F4
        cmp     dword [ebp-0CH], 28                     ; 0657 _ 83. 7D, F4, 1C
        jnz     ?_004                                   ; 065B _ 75, 6E
        mov     ecx, dword [xsize]                      ; 065D _ 8B. 0D, 00000218(d)
        mov     edx, dword [ebp-28H]                    ; 0663 _ 8B. 55, D8
        mov     eax, edx                                ; 0666 _ 89. D0
        shl     eax, 2                                  ; 0668 _ C1. E0, 02
        add     eax, edx                                ; 066B _ 01. D0
        shl     eax, 2                                  ; 066D _ C1. E0, 02
        mov     edx, eax                                ; 0670 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 0672 _ 8B. 45, E8
        add     edx, eax                                ; 0675 _ 01. C2
        mov     dword [esp+10H], 7                      ; 0677 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ecx                    ; 067F _ 89. 4C 24, 0C
        mov     eax, dword [ebp-28H]                    ; 0683 _ 8B. 45, D8
        mov     dword [esp+8H], eax                     ; 0686 _ 89. 44 24, 08
        mov     eax, dword [ebp-24H]                    ; 068A _ 8B. 45, DC
        mov     dword [esp+4H], eax                     ; 068D _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 0691 _ 89. 14 24
        call    showMemoryInfo                          ; 0694 _ E8, FFFFFFFC(rel)
        add     dword [ebp-28H], 1                      ; 0699 _ 83. 45, D8, 01
        mov     eax, dword [ebp-28H]                    ; 069D _ 8B. 45, D8
        cmp     eax, dword [ebp-20H]                    ; 06A0 _ 3B. 45, E0
        jle     ?_004                                   ; 06A3 _ 7E, 26
        mov     dword [ebp-28H], 0                      ; 06A5 _ C7. 45, D8, 00000000
        jmp     ?_001                                   ; 06AC _ E9, FFFFFF53

?_003:  mov     dword [esp], mouseinfo                  ; 06B1 _ C7. 04 24, 00000138(d)
        call    fifo8_status                            ; 06B8 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 06BD _ 85. C0
        jz      ?_004                                   ; 06BF _ 74, 0A
        call    show_mouse_info                         ; 06C1 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 06C6 _ E9, FFFFFF39

?_004:  jmp     ?_001                                   ; 06CB _ E9, FFFFFF34
; CMain End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 06D0 _ 55
        mov     ebp, esp                                ; 06D1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 06D3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 06D6 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 06D9 _ A1, 00000210(d)
        add     eax, edx                                ; 06DE _ 01. D0
        mov     dword [mx], eax                         ; 06E0 _ A3, 00000210(d)
        mov     eax, dword [ebp+8H]                     ; 06E5 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 06E8 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 06EB _ A1, 00000214(d)
        add     eax, edx                                ; 06F0 _ 01. D0
        mov     dword [my], eax                         ; 06F2 _ A3, 00000214(d)
        mov     eax, dword [mx]                         ; 06F7 _ A1, 00000210(d)
        test    eax, eax                                ; 06FC _ 85. C0
        jns     ?_005                                   ; 06FE _ 79, 0A
        mov     dword [mx], 0                           ; 0700 _ C7. 05, 00000210(d), 00000000
?_005:  mov     eax, dword [my]                         ; 070A _ A1, 00000214(d)
        test    eax, eax                                ; 070F _ 85. C0
        jns     ?_006                                   ; 0711 _ 79, 0A
        mov     dword [my], 0                           ; 0713 _ C7. 05, 00000214(d), 00000000
?_006:  mov     eax, dword [xsize]                      ; 071D _ A1, 00000218(d)
        lea     edx, [eax-10H]                          ; 0722 _ 8D. 50, F0
        mov     eax, dword [mx]                         ; 0725 _ A1, 00000210(d)
        cmp     edx, eax                                ; 072A _ 39. C2
        jge     ?_007                                   ; 072C _ 7D, 0D
        mov     eax, dword [xsize]                      ; 072E _ A1, 00000218(d)
        sub     eax, 16                                 ; 0733 _ 83. E8, 10
        mov     dword [mx], eax                         ; 0736 _ A3, 00000210(d)
?_007:  mov     eax, dword [ysize]                      ; 073B _ A1, 0000021C(d)
        lea     edx, [eax-10H]                          ; 0740 _ 8D. 50, F0
        mov     eax, dword [my]                         ; 0743 _ A1, 00000214(d)
        cmp     edx, eax                                ; 0748 _ 39. C2
        jge     ?_008                                   ; 074A _ 7D, 0D
        mov     eax, dword [ysize]                      ; 074C _ A1, 0000021C(d)
        sub     eax, 16                                 ; 0751 _ 83. E8, 10
        mov     dword [my], eax                         ; 0754 _ A3, 00000214(d)
?_008:  pop     ebp                                     ; 0759 _ 5D
        ret                                             ; 075A _ C3
; computeMousePosition End of function

eraseMouse:; Function begin
        push    ebp                                     ; 075B _ 55
        mov     ebp, esp                                ; 075C _ 89. E5
        push    esi                                     ; 075E _ 56
        push    ebx                                     ; 075F _ 53
        sub     esp, 32                                 ; 0760 _ 83. EC, 20
        mov     eax, dword [my]                         ; 0763 _ A1, 00000214(d)
        lea     esi, [eax+0FH]                          ; 0768 _ 8D. 70, 0F
        mov     eax, dword [mx]                         ; 076B _ A1, 00000210(d)
        lea     ebx, [eax+0FH]                          ; 0770 _ 8D. 58, 0F
        mov     ecx, dword [my]                         ; 0773 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 0779 _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 077F _ A1, 00000218(d)
        mov     dword [esp+18H], esi                    ; 0784 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0788 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 078C _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 0790 _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 0794 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 079C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07A0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07A3 _ 89. 04 24
        call    boxfill8                                ; 07A6 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 07AB _ 83. C4, 20
        pop     ebx                                     ; 07AE _ 5B
        pop     esi                                     ; 07AF _ 5E
        pop     ebp                                     ; 07B0 _ 5D
        ret                                             ; 07B1 _ C3
; eraseMouse End of function

drawMouse:; Function begin
        push    ebp                                     ; 07B2 _ 55
        mov     ebp, esp                                ; 07B3 _ 89. E5
        sub     esp, 40                                 ; 07B5 _ 83. EC, 28
        mov     ecx, dword [my]                         ; 07B8 _ 8B. 0D, 00000214(d)
        mov     edx, dword [mx]                         ; 07BE _ 8B. 15, 00000210(d)
        mov     eax, dword [xsize]                      ; 07C4 _ A1, 00000218(d)
        mov     dword [esp+1CH], 16                     ; 07C9 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 07D1 _ C7. 44 24, 18, 00000020(d)
        mov     dword [esp+14H], ecx                    ; 07D9 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 07DD _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 07E1 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 07E9 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 07F1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07F5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07F8 _ 89. 04 24
        call    putblock                                ; 07FB _ E8, FFFFFFFC(rel)
        leave                                           ; 0800 _ C9
        ret                                             ; 0801 _ C3
; drawMouse End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0802 _ 55
        mov     ebp, esp                                ; 0803 _ 89. E5
        sub     esp, 40                                 ; 0805 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 0808 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 080D _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0810 _ C6. 45, F3, 00
        call    io_sti                                  ; 0814 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mouseinfo                  ; 0819 _ C7. 04 24, 00000138(d)
        call    fifo8_get                               ; 0820 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-0DH], al                      ; 0825 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0828 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 082C _ 89. 44 24, 04
        mov     dword [esp], mdec                       ; 0830 _ C7. 04 24, 00000200(d)
        call    mouse_decode                            ; 0837 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 083C _ 85. C0
        jz      ?_009                                   ; 083E _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 0840 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0843 _ 89. 04 24
        call    eraseMouse                              ; 0846 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mdec                       ; 084B _ C7. 04 24, 00000200(d)
        call    computeMousePosition                    ; 0852 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 0857 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 085A _ 89. 04 24
        call    drawMouse                               ; 085D _ E8, FFFFFFFC(rel)
?_009:  leave                                           ; 0862 _ C9
        ret                                             ; 0863 _ C3
; show_mouse_info End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0864 _ 55
        mov     ebp, esp                                ; 0865 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0867 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 086A _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0870 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0873 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0879 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 087C _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 0882 _ 5D
        ret                                             ; 0883 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 0884 _ 55
        mov     ebp, esp                                ; 0885 _ 89. E5
        sub     esp, 24                                 ; 0887 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1553          ; 088A _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0892 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 089A _ C7. 04 24, 00000000
        call    set_palette                             ; 08A1 _ E8, FFFFFFFC(rel)
        nop                                             ; 08A6 _ 90
        leave                                           ; 08A7 _ C9
        ret                                             ; 08A8 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 08A9 _ 55
        mov     ebp, esp                                ; 08AA _ 89. E5
        sub     esp, 40                                 ; 08AC _ 83. EC, 28
        call    io_load_eflags                          ; 08AF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 08B4 _ 89. 45, F4
        call    io_cli                                  ; 08B7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 08BC _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 08BF _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 08C3 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 08CA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 08CF _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 08D2 _ 89. 45, F0
        jmp     ?_011                                   ; 08D5 _ EB, 62

?_010:  mov     eax, dword [ebp+10H]                    ; 08D7 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 08DA _ 0F B6. 00
        shr     al, 2                                   ; 08DD _ C0. E8, 02
        movzx   eax, al                                 ; 08E0 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 08E3 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 08E7 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 08EE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 08F3 _ 8B. 45, 10
        add     eax, 1                                  ; 08F6 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 08F9 _ 0F B6. 00
        shr     al, 2                                   ; 08FC _ C0. E8, 02
        movzx   eax, al                                 ; 08FF _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0902 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0906 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 090D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0912 _ 8B. 45, 10
        add     eax, 2                                  ; 0915 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0918 _ 0F B6. 00
        shr     al, 2                                   ; 091B _ C0. E8, 02
        movzx   eax, al                                 ; 091E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0921 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0925 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 092C _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 0931 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0935 _ 83. 45, F0, 01
?_011:  mov     eax, dword [ebp-10H]                    ; 0939 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 093C _ 3B. 45, 0C
        jle     ?_010                                   ; 093F _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 0941 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0944 _ 89. 04 24
        call    io_store_eflags                         ; 0947 _ E8, FFFFFFFC(rel)
        nop                                             ; 094C _ 90
        leave                                           ; 094D _ C9
        ret                                             ; 094E _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 094F _ 55
        mov     ebp, esp                                ; 0950 _ 89. E5
        sub     esp, 20                                 ; 0952 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0955 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0958 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 095B _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 095E _ 89. 45, FC
        jmp     ?_015                                   ; 0961 _ EB, 33

?_012:  mov     eax, dword [ebp+14H]                    ; 0963 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0966 _ 89. 45, F8
        jmp     ?_014                                   ; 0969 _ EB, 1F

?_013:  mov     eax, dword [ebp-4H]                     ; 096B _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 096E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0972 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0974 _ 8B. 45, F8
        add     eax, edx                                ; 0977 _ 01. D0
        mov     edx, eax                                ; 0979 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 097B _ 8B. 45, 08
        add     edx, eax                                ; 097E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0980 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0984 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0986 _ 83. 45, F8, 01
?_014:  mov     eax, dword [ebp-8H]                     ; 098A _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 098D _ 3B. 45, 1C
        jle     ?_013                                   ; 0990 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0992 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0996 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0999 _ 3B. 45, 20
        jle     ?_012                                   ; 099C _ 7E, C5
        leave                                           ; 099E _ C9
        ret                                             ; 099F _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 09A0 _ 55
        mov     ebp, esp                                ; 09A1 _ 89. E5
        sub     esp, 20                                 ; 09A3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 09A6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 09A9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09AC _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 09B3 _ E9, 0000016C

?_016:  mov     edx, dword [ebp-4H]                     ; 09B8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 09BB _ 8B. 45, 1C
        add     eax, edx                                ; 09BE _ 01. D0
        movzx   eax, byte [eax]                         ; 09C0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 09C3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 09C6 _ 80. 7D, FB, 00
        jns     ?_017                                   ; 09CA _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 09CC _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 09CF _ 8B. 55, 14
        add     eax, edx                                ; 09D2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09D4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 09D8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 09DA _ 8B. 45, 10
        add     eax, edx                                ; 09DD _ 01. D0
        mov     edx, eax                                ; 09DF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09E1 _ 8B. 45, 08
        add     edx, eax                                ; 09E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09EA _ 88. 02
?_017:  movsx   eax, byte [ebp-5H]                      ; 09EC _ 0F BE. 45, FB
        and     eax, 40H                                ; 09F0 _ 83. E0, 40
        test    eax, eax                                ; 09F3 _ 85. C0
        jz      ?_018                                   ; 09F5 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 09F7 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 09FA _ 8B. 55, 14
        add     eax, edx                                ; 09FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A03 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A05 _ 8B. 45, 10
        add     eax, edx                                ; 0A08 _ 01. D0
        lea     edx, [eax+1H]                           ; 0A0A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A0D _ 8B. 45, 08
        add     edx, eax                                ; 0A10 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A12 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A16 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0A18 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0A1C _ 83. E0, 20
        test    eax, eax                                ; 0A1F _ 85. C0
        jz      ?_019                                   ; 0A21 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0A23 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0A26 _ 8B. 55, 14
        add     eax, edx                                ; 0A29 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A2B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A2F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A31 _ 8B. 45, 10
        add     eax, edx                                ; 0A34 _ 01. D0
        lea     edx, [eax+2H]                           ; 0A36 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0A39 _ 8B. 45, 08
        add     edx, eax                                ; 0A3C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A3E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A42 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0A44 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0A48 _ 83. E0, 10
        test    eax, eax                                ; 0A4B _ 85. C0
        jz      ?_020                                   ; 0A4D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0A4F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0A52 _ 8B. 55, 14
        add     eax, edx                                ; 0A55 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A57 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A5B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A5D _ 8B. 45, 10
        add     eax, edx                                ; 0A60 _ 01. D0
        lea     edx, [eax+3H]                           ; 0A62 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0A65 _ 8B. 45, 08
        add     edx, eax                                ; 0A68 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A6A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A6E _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0A70 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0A74 _ 83. E0, 08
        test    eax, eax                                ; 0A77 _ 85. C0
        jz      ?_021                                   ; 0A79 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0A7B _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0A7E _ 8B. 55, 14
        add     eax, edx                                ; 0A81 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A83 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0A87 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0A89 _ 8B. 45, 10
        add     eax, edx                                ; 0A8C _ 01. D0
        lea     edx, [eax+4H]                           ; 0A8E _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0A91 _ 8B. 45, 08
        add     edx, eax                                ; 0A94 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A96 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A9A _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0A9C _ 0F BE. 45, FB
        and     eax, 04H                                ; 0AA0 _ 83. E0, 04
        test    eax, eax                                ; 0AA3 _ 85. C0
        jz      ?_022                                   ; 0AA5 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0AA7 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0AAA _ 8B. 55, 14
        add     eax, edx                                ; 0AAD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AAF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0AB3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0AB5 _ 8B. 45, 10
        add     eax, edx                                ; 0AB8 _ 01. D0
        lea     edx, [eax+5H]                           ; 0ABA _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0ABD _ 8B. 45, 08
        add     edx, eax                                ; 0AC0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AC2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AC6 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0AC8 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0ACC _ 83. E0, 02
        test    eax, eax                                ; 0ACF _ 85. C0
        jz      ?_023                                   ; 0AD1 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0AD3 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0AD6 _ 8B. 55, 14
        add     eax, edx                                ; 0AD9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0ADB _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0ADF _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0AE1 _ 8B. 45, 10
        add     eax, edx                                ; 0AE4 _ 01. D0
        lea     edx, [eax+6H]                           ; 0AE6 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0AE9 _ 8B. 45, 08
        add     edx, eax                                ; 0AEC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AEE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AF2 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0AF4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0AF8 _ 83. E0, 01
        test    eax, eax                                ; 0AFB _ 85. C0
        jz      ?_024                                   ; 0AFD _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0AFF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0B02 _ 8B. 55, 14
        add     eax, edx                                ; 0B05 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B07 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B0B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0B0D _ 8B. 45, 10
        add     eax, edx                                ; 0B10 _ 01. D0
        lea     edx, [eax+7H]                           ; 0B12 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0B15 _ 8B. 45, 08
        add     edx, eax                                ; 0B18 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B1A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B1E _ 88. 02
?_024:  add     dword [ebp-4H], 1                       ; 0B20 _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 0B24 _ 83. 7D, FC, 0F
        jle     ?_016                                   ; 0B28 _ 0F 8E, FFFFFE8A
        leave                                           ; 0B2E _ C9
        ret                                             ; 0B2F _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 0B30 _ 55
        mov     ebp, esp                                ; 0B31 _ 89. E5
        sub     esp, 28                                 ; 0B33 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0B36 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0B39 _ 88. 45, FC
        jmp     ?_027                                   ; 0B3C _ EB, 46

?_026:  mov     eax, dword [ebp+1CH]                    ; 0B3E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B41 _ 0F B6. 00
        movzx   eax, al                                 ; 0B44 _ 0F B6. C0
        shl     eax, 4                                  ; 0B47 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0B4A _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 0B50 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0B54 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B58 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0B5C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0B5F _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0B63 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0B66 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0B6A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B6D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B71 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B74 _ 89. 04 24
        call    showFont8                               ; 0B77 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 0B7C _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B80 _ 83. 45, 1C, 01
?_027:  mov     eax, dword [ebp+1CH]                    ; 0B84 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B87 _ 0F B6. 00
        test    al, al                                  ; 0B8A _ 84. C0
        jnz     ?_026                                   ; 0B8C _ 75, B0
        leave                                           ; 0B8E _ C9
        ret                                             ; 0B8F _ C3
; showString End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 0B90 _ 55
        mov     ebp, esp                                ; 0B91 _ 89. E5
        sub     esp, 20                                 ; 0B93 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0B96 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0B99 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0B9C _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 0BA3 _ E9, 000000B1

?_028:  mov     dword [ebp-8H], 0                       ; 0BA8 _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0BAF _ E9, 00000097

?_029:  mov     eax, dword [ebp-4H]                     ; 0BB4 _ 8B. 45, FC
        shl     eax, 4                                  ; 0BB7 _ C1. E0, 04
        mov     edx, eax                                ; 0BBA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BBC _ 8B. 45, F8
        add     eax, edx                                ; 0BBF _ 01. D0
        add     eax, cursor.1611                        ; 0BC1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0BC6 _ 0F B6. 00
        cmp     al, 42                                  ; 0BC9 _ 3C, 2A
        jnz     ?_030                                   ; 0BCB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0BCD _ 8B. 45, FC
        shl     eax, 4                                  ; 0BD0 _ C1. E0, 04
        mov     edx, eax                                ; 0BD3 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BD5 _ 8B. 45, F8
        add     eax, edx                                ; 0BD8 _ 01. D0
        mov     edx, eax                                ; 0BDA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BDC _ 8B. 45, 08
        add     eax, edx                                ; 0BDF _ 01. D0
        mov     byte [eax], 0                           ; 0BE1 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-4H]                     ; 0BE4 _ 8B. 45, FC
        shl     eax, 4                                  ; 0BE7 _ C1. E0, 04
        mov     edx, eax                                ; 0BEA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0BEC _ 8B. 45, F8
        add     eax, edx                                ; 0BEF _ 01. D0
        add     eax, cursor.1611                        ; 0BF1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0BF6 _ 0F B6. 00
        cmp     al, 79                                  ; 0BF9 _ 3C, 4F
        jnz     ?_031                                   ; 0BFB _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 0BFD _ 8B. 45, FC
        shl     eax, 4                                  ; 0C00 _ C1. E0, 04
        mov     edx, eax                                ; 0C03 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C05 _ 8B. 45, F8
        add     eax, edx                                ; 0C08 _ 01. D0
        mov     edx, eax                                ; 0C0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C0C _ 8B. 45, 08
        add     eax, edx                                ; 0C0F _ 01. D0
        mov     byte [eax], 7                           ; 0C11 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-4H]                     ; 0C14 _ 8B. 45, FC
        shl     eax, 4                                  ; 0C17 _ C1. E0, 04
        mov     edx, eax                                ; 0C1A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C1C _ 8B. 45, F8
        add     eax, edx                                ; 0C1F _ 01. D0
        add     eax, cursor.1611                        ; 0C21 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C26 _ 0F B6. 00
        cmp     al, 46                                  ; 0C29 _ 3C, 2E
        jnz     ?_032                                   ; 0C2B _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0C2D _ 8B. 45, FC
        shl     eax, 4                                  ; 0C30 _ C1. E0, 04
        mov     edx, eax                                ; 0C33 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0C35 _ 8B. 45, F8
        add     eax, edx                                ; 0C38 _ 01. D0
        mov     edx, eax                                ; 0C3A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C3C _ 8B. 45, 08
        add     edx, eax                                ; 0C3F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C41 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C45 _ 88. 02
?_032:  add     dword [ebp-8H], 1                       ; 0C47 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0C4B _ 83. 7D, F8, 0F
        jle     ?_029                                   ; 0C4F _ 0F 8E, FFFFFF5F
        add     dword [ebp-4H], 1                       ; 0C55 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 0C59 _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0C5D _ 0F 8E, FFFFFF45
        leave                                           ; 0C63 _ C9
        ret                                             ; 0C64 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0C65 _ 55
        mov     ebp, esp                                ; 0C66 _ 89. E5
        sub     esp, 16                                 ; 0C68 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0C6B _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0C72 _ EB, 50

?_035:  mov     dword [ebp-8H], 0                       ; 0C74 _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0C7B _ EB, 3B

?_036:  mov     eax, dword [ebp-4H]                     ; 0C7D _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 0C80 _ 8B. 55, 1C
        add     eax, edx                                ; 0C83 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C85 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 0C89 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 0C8C _ 8B. 4D, 18
        add     edx, ecx                                ; 0C8F _ 01. CA
        add     eax, edx                                ; 0C91 _ 01. D0
        mov     edx, eax                                ; 0C93 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C95 _ 8B. 45, 08
        add     edx, eax                                ; 0C98 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0C9A _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0C9D _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0CA1 _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 0CA3 _ 8B. 45, F8
        add     eax, ecx                                ; 0CA6 _ 01. C8
        mov     ecx, eax                                ; 0CA8 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0CAA _ 8B. 45, 20
        add     eax, ecx                                ; 0CAD _ 01. C8
        movzx   eax, byte [eax]                         ; 0CAF _ 0F B6. 00
        mov     byte [edx], al                          ; 0CB2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0CB4 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0CB8 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0CBB _ 3B. 45, 10
        jl      ?_036                                   ; 0CBE _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0CC0 _ 83. 45, FC, 01
?_038:  mov     eax, dword [ebp-4H]                     ; 0CC4 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0CC7 _ 3B. 45, 14
        jl      ?_035                                   ; 0CCA _ 7C, A8
        leave                                           ; 0CCC _ C9
        ret                                             ; 0CCD _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0CCE _ 55
        mov     ebp, esp                                ; 0CCF _ 89. E5
        sub     esp, 40                                 ; 0CD1 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 0CD4 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0CD9 _ 89. 45, EC
        movzx   eax, word [?_068]                       ; 0CDC _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0CE3 _ 98
        mov     dword [ebp-10H], eax                    ; 0CE4 _ 89. 45, F0
        movzx   eax, word [?_069]                       ; 0CE7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0CEE _ 98
        mov     dword [ebp-0CH], eax                    ; 0CEF _ 89. 45, F4
        mov     dword [esp+4H], 32                      ; 0CF2 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0CFA _ C7. 04 24, 00000020
        call    io_out8                                 ; 0D01 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 0D06 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0D0A _ C7. 04 24, 00000060
        call    io_in8                                  ; 0D11 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 0D16 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D19 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0D1D _ 89. 44 24, 04
        mov     dword [esp], keyinfo                    ; 0D21 _ C7. 04 24, 00000120(d)
        call    fifo8_put                               ; 0D28 _ E8, FFFFFFFC(rel)
        leave                                           ; 0D2D _ C9
        ret                                             ; 0D2E _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0D2F _ 55
        mov     ebp, esp                                ; 0D30 _ 89. E5
        sub     esp, 4                                  ; 0D32 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D35 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D38 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0D3B _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0D3F _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0D41 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0D45 _ 83. C0, 37
        jmp     ?_040                                   ; 0D48 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0D4A _ 0F B6. 45, FC
        add     eax, 48                                 ; 0D4E _ 83. C0, 30
?_040:  leave                                           ; 0D51 _ C9
        ret                                             ; 0D52 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0D53 _ 55
        mov     ebp, esp                                ; 0D54 _ 89. E5
        sub     esp, 24                                 ; 0D56 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0D59 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0D5C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0D5F _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0D66 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0D6A _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0D6D _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0D70 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0D74 _ 89. 04 24
        call    charToHexVal                            ; 0D77 _ E8, FFFFFFFC(rel)
        mov     byte [?_067], al                        ; 0D7C _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0D81 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0D85 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0D88 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0D8B _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0D8F _ 0F BE. C0
        mov     dword [esp], eax                        ; 0D92 _ 89. 04 24
        call    charToHexVal                            ; 0D95 _ E8, FFFFFFFC(rel)
        mov     byte [?_066], al                        ; 0D9A _ A2, 00000006(d)
        mov     eax, keyval                             ; 0D9F _ B8, 00000004(d)
        leave                                           ; 0DA4 _ C9
        ret                                             ; 0DA5 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 0DA6 _ 55
        mov     ebp, esp                                ; 0DA7 _ 89. E5
        sub     esp, 16                                 ; 0DA9 _ 83. EC, 10
        mov     byte [str.1659], 48                     ; 0DAC _ C6. 05, 00000220(d), 30
        mov     byte [?_070], 88                        ; 0DB3 _ C6. 05, 00000221(d), 58
        mov     byte [?_071], 0                         ; 0DBA _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-0CH], 2                      ; 0DC1 _ C7. 45, F4, 00000002
        jmp     ?_042                                   ; 0DC8 _ EB, 0F

?_041:  mov     eax, dword [ebp-0CH]                    ; 0DCA _ 8B. 45, F4
        add     eax, str.1659                           ; 0DCD _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0DD2 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 0DD5 _ 83. 45, F4, 01
?_042:  cmp     dword [ebp-0CH], 9                      ; 0DD9 _ 83. 7D, F4, 09
        jle     ?_041                                   ; 0DDD _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0DDF _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0DE6 _ EB, 40

?_043:  mov     eax, dword [ebp+8H]                     ; 0DE8 _ 8B. 45, 08
        and     eax, 0FH                                ; 0DEB _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 0DEE _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0DF1 _ 8B. 45, 08
        shr     eax, 4                                  ; 0DF4 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0DF7 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 0DFA _ 83. 7D, FC, 09
        jle     ?_044                                   ; 0DFE _ 7E, 13
        mov     eax, dword [ebp-4H]                     ; 0E00 _ 8B. 45, FC
        add     eax, 55                                 ; 0E03 _ 83. C0, 37
        mov     edx, dword [ebp-8H]                     ; 0E06 _ 8B. 55, F8
        add     edx, str.1659                           ; 0E09 _ 81. C2, 00000220(d)
        mov     byte [edx], al                          ; 0E0F _ 88. 02
        jmp     ?_045                                   ; 0E11 _ EB, 11

?_044:  mov     eax, dword [ebp-4H]                     ; 0E13 _ 8B. 45, FC
        add     eax, 48                                 ; 0E16 _ 83. C0, 30
        mov     edx, dword [ebp-8H]                     ; 0E19 _ 8B. 55, F8
        add     edx, str.1659                           ; 0E1C _ 81. C2, 00000220(d)
        mov     byte [edx], al                          ; 0E22 _ 88. 02
?_045:  sub     dword [ebp-8H], 1                       ; 0E24 _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0E28 _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0E2C _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0E2E _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0E32 _ 75, B4
?_047:  mov     eax, str.1659                           ; 0E34 _ B8, 00000220(d)
        leave                                           ; 0E39 _ C9
        ret                                             ; 0E3A _ C3
; intToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0E3B _ 55
        mov     ebp, esp                                ; 0E3C _ 89. E5
        sub     esp, 24                                 ; 0E3E _ 83. EC, 18
?_048:  mov     dword [esp], 100                        ; 0E41 _ C7. 04 24, 00000064
        call    io_in8                                  ; 0E48 _ E8, FFFFFFFC(rel)
        and     eax, 02H                                ; 0E4D _ 83. E0, 02
        test    eax, eax                                ; 0E50 _ 85. C0
        jnz     ?_049                                   ; 0E52 _ 75, 02
        jmp     ?_050                                   ; 0E54 _ EB, 02

?_049:  jmp     ?_048                                   ; 0E56 _ EB, E9

?_050:  leave                                           ; 0E58 _ C9
        ret                                             ; 0E59 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0E5A _ 55
        mov     ebp, esp                                ; 0E5B _ 89. E5
        sub     esp, 24                                 ; 0E5D _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0E60 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 96                      ; 0E65 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0E6D _ C7. 04 24, 00000064
        call    io_out8                                 ; 0E74 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0E79 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 71                      ; 0E7E _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0E86 _ C7. 04 24, 00000060
        call    io_out8                                 ; 0E8D _ E8, FFFFFFFC(rel)
        leave                                           ; 0E92 _ C9
        ret                                             ; 0E93 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0E94 _ 55
        mov     ebp, esp                                ; 0E95 _ 89. E5
        sub     esp, 24                                 ; 0E97 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 0E9A _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 212                     ; 0E9F _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0EA7 _ C7. 04 24, 00000064
        call    io_out8                                 ; 0EAE _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 0EB3 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 244                     ; 0EB8 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0EC0 _ C7. 04 24, 00000060
        call    io_out8                                 ; 0EC7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0ECC _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0ECF _ C6. 40, 03, 00
        nop                                             ; 0ED3 _ 90
        leave                                           ; 0ED4 _ C9
        ret                                             ; 0ED5 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 0ED6 _ 55
        mov     ebp, esp                                ; 0ED7 _ 89. E5
        sub     esp, 40                                 ; 0ED9 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0EDC _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0EE4 _ C7. 04 24, 000000A0
        call    io_out8                                 ; 0EEB _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 32                      ; 0EF0 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0EF8 _ C7. 04 24, 00000020
        call    io_out8                                 ; 0EFF _ E8, FFFFFFFC(rel)
        mov     dword [esp], 96                         ; 0F04 _ C7. 04 24, 00000060
        call    io_in8                                  ; 0F0B _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 0F10 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F13 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0F17 _ 89. 44 24, 04
        mov     dword [esp], mouseinfo                  ; 0F1B _ C7. 04 24, 00000138(d)
        call    fifo8_put                               ; 0F22 _ E8, FFFFFFFC(rel)
        leave                                           ; 0F27 _ C9
        ret                                             ; 0F28 _ C3
; intHandlerForMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 0F29 _ 55
        mov     ebp, esp                                ; 0F2A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F2C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F2F _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0F32 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F35 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0F38 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0F3B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0F3D _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F40 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0F43 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F46 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0F49 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F50 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0F53 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F5A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0F5D _ C7. 40, 08, 00000000
        nop                                             ; 0F64 _ 90
        pop     ebp                                     ; 0F65 _ 5D
        ret                                             ; 0F66 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 0F67 _ 55
        mov     ebp, esp                                ; 0F68 _ 89. E5
        sub     esp, 4                                  ; 0F6A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F6D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F70 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0F73 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0F76 _ 8B. 40, 10
        test    eax, eax                                ; 0F79 _ 85. C0
        jnz     ?_051                                   ; 0F7B _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0F7D _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0F80 _ 8B. 40, 14
        or      eax, 01H                                ; 0F83 _ 83. C8, 01
        mov     edx, eax                                ; 0F86 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F88 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0F8B _ 89. 50, 14
        mov     eax, 4294967295                         ; 0F8E _ B8, FFFFFFFF
        jmp     ?_053                                   ; 0F93 _ EB, 50

?_051:  mov     eax, dword [ebp+8H]                     ; 0F95 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0F98 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0F9A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F9D _ 8B. 40, 04
        add     edx, eax                                ; 0FA0 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0FA2 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0FA6 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0FA8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FAB _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0FAE _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FB1 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FB4 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FB7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FBA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FBD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0FC0 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FC3 _ 39. C2
        jnz     ?_052                                   ; 0FC5 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0FC7 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0FCA _ C7. 40, 04, 00000000
?_052:  mov     eax, dword [ebp+8H]                     ; 0FD1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FD4 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0FD7 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0FDA _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0FDD _ 89. 50, 10
        mov     eax, 0                                  ; 0FE0 _ B8, 00000000
?_053:  leave                                           ; 0FE5 _ C9
        ret                                             ; 0FE6 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 0FE7 _ 55
        mov     ebp, esp                                ; 0FE8 _ 89. E5
        sub     esp, 16                                 ; 0FEA _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0FED _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0FF0 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0FF3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0FF6 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FF9 _ 39. C2
        jnz     ?_054                                   ; 0FFB _ 75, 07
        mov     eax, 4294967295                         ; 0FFD _ B8, FFFFFFFF
        jmp     ?_056                                   ; 1002 _ EB, 51

?_054:  mov     eax, dword [ebp+8H]                     ; 1004 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1007 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1009 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 100C _ 8B. 40, 08
        add     eax, edx                                ; 100F _ 01. D0
        movzx   eax, byte [eax]                         ; 1011 _ 0F B6. 00
        movzx   eax, al                                 ; 1014 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 1017 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 101D _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 1020 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1023 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1026 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1029 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 102C _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 102F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1032 _ 8B. 40, 0C
        cmp     edx, eax                                ; 1035 _ 39. C2
        jnz     ?_055                                   ; 1037 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1039 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 103C _ C7. 40, 08, 00000000
?_055:  mov     eax, dword [ebp+8H]                     ; 1043 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1046 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1049 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 104C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 104F _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 1052 _ 8B. 45, FC
?_056:  leave                                           ; 1055 _ C9
        ret                                             ; 1056 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 1057 _ 55
        mov     ebp, esp                                ; 1058 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 105A _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 105D _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1060 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1063 _ 8B. 40, 10
        sub     edx, eax                                ; 1066 _ 29. C2
        mov     eax, edx                                ; 1068 _ 89. D0
        pop     ebp                                     ; 106A _ 5D
        ret                                             ; 106B _ C3
; fifo8_status End of function

mouse_decode:; Function begin
        push    ebp                                     ; 106C _ 55
        mov     ebp, esp                                ; 106D _ 89. E5
        sub     esp, 4                                  ; 106F _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1072 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1075 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1078 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 107B _ 0F B6. 40, 03
        test    al, al                                  ; 107F _ 84. C0
        jnz     ?_058                                   ; 1081 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1083 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 1087 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1089 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 108C _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 1090 _ B8, 00000000
        jmp     ?_065                                   ; 1095 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 109A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 109D _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10A1 _ 3C, 01
        jnz     ?_060                                   ; 10A3 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10A5 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 10A9 _ 25, 000000C8
        cmp     eax, 8                                  ; 10AE _ 83. F8, 08
        jnz     ?_059                                   ; 10B1 _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 10B3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 10B6 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 10BA _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 10BC _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 10BF _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 10C3 _ B8, 00000000
        jmp     ?_065                                   ; 10C8 _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 10CD _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10D0 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 10D4 _ 3C, 02
        jnz     ?_061                                   ; 10D6 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 10D8 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 10DB _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 10DF _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 10E2 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 10E5 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 10E9 _ B8, 00000000
        jmp     ?_065                                   ; 10EE _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 10F3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10F6 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 10FA _ 3C, 03
        jne     ?_064                                   ; 10FC _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 1102 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1105 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1109 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 110C _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 110F _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1113 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1116 _ 0F B6. 00
        movzx   eax, al                                 ; 1119 _ 0F B6. C0
        and     eax, 07H                                ; 111C _ 83. E0, 07
        mov     edx, eax                                ; 111F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1121 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1124 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1127 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 112A _ 0F B6. 40, 01
        movzx   edx, al                                 ; 112E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1131 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1134 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1137 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 113A _ 0F B6. 40, 02
        movzx   edx, al                                 ; 113E _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 1141 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1144 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1147 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 114A _ 0F B6. 00
        movzx   eax, al                                 ; 114D _ 0F B6. C0
        and     eax, 10H                                ; 1150 _ 83. E0, 10
        test    eax, eax                                ; 1153 _ 85. C0
        jz      ?_062                                   ; 1155 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1157 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 115A _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 115D _ 0D, FFFFFF00
        mov     edx, eax                                ; 1162 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1164 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1167 _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 116A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 116D _ 0F B6. 00
        movzx   eax, al                                 ; 1170 _ 0F B6. C0
        and     eax, 20H                                ; 1173 _ 83. E0, 20
        test    eax, eax                                ; 1176 _ 85. C0
        jz      ?_063                                   ; 1178 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 117A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 117D _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1180 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1185 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1187 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 118A _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 118D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1190 _ 8B. 40, 08
        neg     eax                                     ; 1193 _ F7. D8
        mov     edx, eax                                ; 1195 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1197 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 119A _ 89. 50, 08
        mov     eax, 1                                  ; 119D _ B8, 00000001
        jmp     ?_065                                   ; 11A2 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 11A4 _ B8, FFFFFFFF
?_065:  leave                                           ; 11A9 _ C9
        ret                                             ; 11AA _ C3
; mouse_decode End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 11AB _ 55
        mov     ebp, esp                                ; 11AC _ 89. E5
        sub     esp, 76                                 ; 11AE _ 83. EC, 4C
        mov     dword [ebp-24H], 0                      ; 11B1 _ C7. 45, DC, 00000000
        mov     dword [ebp-20H], 0                      ; 11B8 _ C7. 45, E0, 00000000
        mov     dword [ebp-1CH], 104                    ; 11BF _ C7. 45, E4, 00000068
        mov     dword [ebp-18H], 80                     ; 11C6 _ C7. 45, E8, 00000050
        mov     dword [esp+18H], 100                    ; 11CD _ C7. 44 24, 18, 00000064
        mov     eax, dword [ebp+14H]                    ; 11D5 _ 8B. 45, 14
        mov     dword [esp+14H], eax                    ; 11D8 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 11DC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 11E4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 11EC _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+14H]                    ; 11F4 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 11F7 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 11FB _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 11FE _ 89. 04 24
        call    boxfill8                                ; 1201 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+18H]                    ; 1206 _ 8B. 45, 18
        movsx   eax, al                                 ; 1209 _ 0F BE. C0
        mov     dword [esp+14H], ?_074                  ; 120C _ C7. 44 24, 14, 00000012(d)
        mov     dword [esp+10H], eax                    ; 1214 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 1218 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 121B _ 89. 44 24, 0C
        mov     eax, dword [ebp-24H]                    ; 121F _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 1222 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1226 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1229 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 122D _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1230 _ 89. 04 24
        call    showString                              ; 1233 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1238 _ 8B. 45, 10
        mov     dword [esp], eax                        ; 123B _ 89. 04 24
        call    intToHexStr                             ; 123E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 1243 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1246 _ 8B. 45, 18
        movsx   eax, al                                 ; 1249 _ 0F BE. C0
        mov     edx, dword [ebp-14H]                    ; 124C _ 8B. 55, EC
        mov     dword [esp+14H], edx                    ; 124F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1253 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 1257 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 125A _ 89. 44 24, 0C
        mov     eax, dword [ebp-1CH]                    ; 125E _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 1261 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1265 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1268 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 126C _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 126F _ 89. 04 24
        call    showString                              ; 1272 _ E8, FFFFFFFC(rel)
        add     dword [ebp-20H], 16                     ; 1277 _ 83. 45, E0, 10
        mov     eax, dword [ebp+18H]                    ; 127B _ 8B. 45, 18
        movsx   eax, al                                 ; 127E _ 0F BE. C0
        mov     dword [esp+14H], ?_075                  ; 1281 _ C7. 44 24, 14, 0000001B(d)
        mov     dword [esp+10H], eax                    ; 1289 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 128D _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 1290 _ 89. 44 24, 0C
        mov     eax, dword [ebp-24H]                    ; 1294 _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 1297 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 129B _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 129E _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 12A2 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 12A5 _ 89. 04 24
        call    showString                              ; 12A8 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 12AD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12B0 _ 8B. 00
        mov     dword [esp], eax                        ; 12B2 _ 89. 04 24
        call    intToHexStr                             ; 12B5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 12BA _ 89. 45, F0
        mov     eax, dword [ebp+18H]                    ; 12BD _ 8B. 45, 18
        movsx   eax, al                                 ; 12C0 _ 0F BE. C0
        mov     edx, dword [ebp-10H]                    ; 12C3 _ 8B. 55, F0
        mov     dword [esp+14H], edx                    ; 12C6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12CA _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 12CE _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 12D1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-1CH]                    ; 12D5 _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 12D8 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 12DC _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 12DF _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 12E3 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 12E6 _ 89. 04 24
        call    showString                              ; 12E9 _ E8, FFFFFFFC(rel)
        add     dword [ebp-20H], 16                     ; 12EE _ 83. 45, E0, 10
        mov     eax, dword [ebp+18H]                    ; 12F2 _ 8B. 45, 18
        movsx   eax, al                                 ; 12F5 _ 0F BE. C0
        mov     dword [esp+14H], ?_076                  ; 12F8 _ C7. 44 24, 14, 00000027(d)
        mov     dword [esp+10H], eax                    ; 1300 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 1304 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 1307 _ 89. 44 24, 0C
        mov     eax, dword [ebp-24H]                    ; 130B _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 130E _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1312 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1315 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1319 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 131C _ 89. 04 24
        call    showString                              ; 131F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 1324 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1327 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 132A _ 89. 04 24
        call    intToHexStr                             ; 132D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1332 _ 89. 45, F4
        mov     eax, dword [ebp+18H]                    ; 1335 _ 8B. 45, 18
        movsx   eax, al                                 ; 1338 _ 0F BE. C0
        mov     edx, dword [ebp-0CH]                    ; 133B _ 8B. 55, F4
        mov     dword [esp+14H], edx                    ; 133E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1342 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 1346 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 1349 _ 89. 44 24, 0C
        mov     eax, dword [ebp-1CH]                    ; 134D _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 1350 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1354 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1357 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 135B _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 135E _ 89. 04 24
        call    showString                              ; 1361 _ E8, FFFFFFFC(rel)
        add     dword [ebp-20H], 16                     ; 1366 _ 83. 45, E0, 10
        mov     eax, dword [ebp+18H]                    ; 136A _ 8B. 45, 18
        movsx   eax, al                                 ; 136D _ 0F BE. C0
        mov     dword [esp+14H], ?_077                  ; 1370 _ C7. 44 24, 14, 00000033(d)
        mov     dword [esp+10H], eax                    ; 1378 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 137C _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 137F _ 89. 44 24, 0C
        mov     eax, dword [ebp-24H]                    ; 1383 _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 1386 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 138A _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 138D _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1391 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1394 _ 89. 04 24
        call    showString                              ; 1397 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 139C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 139F _ 8B. 40, 08
        mov     dword [esp], eax                        ; 13A2 _ 89. 04 24
        call    intToHexStr                             ; 13A5 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-8H], eax                     ; 13AA _ 89. 45, F8
        mov     eax, dword [ebp+18H]                    ; 13AD _ 8B. 45, 18
        movsx   eax, al                                 ; 13B0 _ 0F BE. C0
        mov     edx, dword [ebp-8H]                     ; 13B3 _ 8B. 55, F8
        mov     dword [esp+14H], edx                    ; 13B6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13BA _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 13BE _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 13C1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-1CH]                    ; 13C5 _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 13C8 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 13CC _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 13CF _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 13D3 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 13D6 _ 89. 04 24
        call    showString                              ; 13D9 _ E8, FFFFFFFC(rel)
        add     dword [ebp-20H], 16                     ; 13DE _ 83. 45, E0, 10
        mov     eax, dword [ebp+18H]                    ; 13E2 _ 8B. 45, 18
        movsx   eax, al                                 ; 13E5 _ 0F BE. C0
        mov     dword [esp+14H], ?_078                  ; 13E8 _ C7. 44 24, 14, 0000003F(d)
        mov     dword [esp+10H], eax                    ; 13F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 13F4 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 13F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-24H]                    ; 13FB _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 13FE _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1402 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1405 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1409 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 140C _ 89. 04 24
        call    showString                              ; 140F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 1414 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1417 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 141A _ 89. 04 24
        call    intToHexStr                             ; 141D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4H], eax                     ; 1422 _ 89. 45, FC
        mov     eax, dword [ebp+18H]                    ; 1425 _ 8B. 45, 18
        movsx   eax, al                                 ; 1428 _ 0F BE. C0
        mov     edx, dword [ebp-4H]                     ; 142B _ 8B. 55, FC
        mov     dword [esp+14H], edx                    ; 142E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1432 _ 89. 44 24, 10
        mov     eax, dword [ebp-20H]                    ; 1436 _ 8B. 45, E0
        mov     dword [esp+0CH], eax                    ; 1439 _ 89. 44 24, 0C
        mov     eax, dword [ebp-1CH]                    ; 143D _ 8B. 45, E4
        mov     dword [esp+8H], eax                     ; 1440 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1444 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1447 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 144B _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 144E _ 89. 04 24
        call    showString                              ; 1451 _ E8, FFFFFFFC(rel)
        leave                                           ; 1456 _ C9
        ret                                             ; 1457 _ C3
; showMemoryInfo End of function


SECTION .data   align=32 noexecute                      ; section number 2, data

memman:                                                 ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_066:  db 00H                                          ; 0006 _ .

?_067:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

table_rgb.1553:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1611:                                            ; byte
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


SECTION .bss    align=32 noexecute                      ; section number 3, bss

bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_068:  resw    1                                       ; 0004

?_069:  resw    13                                      ; 0006

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

str.1659:                                               ; byte
        resb    1                                       ; 0220

?_070:  resb    9                                       ; 0221

?_071:  resb    1                                       ; 022A


SECTION .rodata align=1 noexecute                       ; section number 4, const

?_072:                                                  ; byte
        db 74H, 6FH, 74H, 61H, 6CH, 20H, 6DH, 65H       ; 0000 _ total me
        db 6DH, 20H, 69H, 73H, 3AH, 00H                 ; 0008 _ m is:.

?_073:                                                  ; byte
        db 20H, 4DH, 42H, 00H                           ; 000E _  MB.

?_074:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0012 _ page is:
        db 00H                                          ; 001A _ .

?_075:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 001B _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0023 _ L: .

?_076:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0027 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 002F _ H: .

?_077:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0033 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 003B _ w: .

?_078:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 003F _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0047 _ gh: .


