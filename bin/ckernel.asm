; Disassembly of file: ./bin/ckernel.o
; Sat Nov  3 20:39:58 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 112                                ; 0005 _ 83. EC, 70
        mov     dword [esp], bootInfo                   ; 0008 _ C7. 04 24, 00000000(d)
        call    initBootInfo                            ; 000F _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0014 _ A1, 00000000(d)
        mov     dword [ebp-38H], eax                    ; 0019 _ 89. 45, C8
        movzx   eax, word [?_179]                       ; 001C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0023 _ 98
        mov     dword [xsize], eax                      ; 0024 _ A3, 00000118(d)
        movzx   eax, word [?_180]                       ; 0029 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0030 _ 98
        mov     dword [ysize], eax                      ; 0031 _ A3, 0000011C(d)
        call    init_pit                                ; 0036 _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], timerbuf                ; 003B _ C7. 44 24, 08, 00000108(d)
        mov     dword [esp+4H], 8                       ; 0043 _ C7. 44 24, 04, 00000008
        mov     dword [esp], timerinfo                  ; 004B _ C7. 04 24, 000000F0(d)
        call    fifo8_init                              ; 0052 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 0057 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 005C _ 89. 45, CC
        mov     dword [esp+8H], 10                      ; 005F _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], timerinfo               ; 0067 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-34H]                    ; 006F _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0072 _ 89. 04 24
        call    timer_init                              ; 0075 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 007A _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-34H]                    ; 0082 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0085 _ 89. 04 24
        call    timer_settime                           ; 0088 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 008D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 0092 _ 89. 45, D0
        mov     dword [esp+8H], 2                       ; 0095 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], timerinfo               ; 009D _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 00A5 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00A8 _ 89. 04 24
        call    timer_init                              ; 00AB _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 300                     ; 00B0 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-30H]                    ; 00B8 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00BB _ 89. 04 24
        call    timer_settime                           ; 00BE _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 00C3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 00C8 _ 89. 45, D4
        mov     dword [esp+8H], 1                       ; 00CB _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo               ; 00D3 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 00DB _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00DE _ 89. 04 24
        call    timer_init                              ; 00E1 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 50                      ; 00E6 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 00EE _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00F1 _ 89. 04 24
        call    timer_settime                           ; 00F4 _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], keybuf                  ; 00F9 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 0101 _ C7. 44 24, 04, 00000020
        mov     dword [esp], keyinfo                    ; 0109 _ C7. 04 24, 00000008(d)
        call    fifo8_init                              ; 0110 _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], mousebuf                ; 0115 _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 011D _ C7. 44 24, 04, 00000080
        mov     dword [esp], mouseinfo                  ; 0125 _ C7. 04 24, 00000020(d)
        call    fifo8_init                              ; 012C _ E8, FFFFFFFC(rel)
        call    init_palette                            ; 0131 _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0136 _ E8, FFFFFFFC(rel)
        call    get_memory_block_count                  ; 013B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 0140 _ 89. 45, D8
        call    get_adr_buffer                          ; 0143 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], eax                    ; 0148 _ 89. 45, DC
        mov     eax, dword [memman]                     ; 014B _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0150 _ 89. 04 24
        call    memman_init                             ; 0153 _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 0158 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 015D _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0165 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 016D _ 89. 04 24
        call    memman_free                             ; 0170 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [ysize]                      ; 0175 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [xsize]                      ; 017B _ 8B. 15, 00000118(d)
        mov     eax, dword [memman]                     ; 0181 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 0186 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 018A _ 89. 54 24, 08
        mov     edx, dword [ebp-38H]                    ; 018E _ 8B. 55, C8
        mov     dword [esp+4H], edx                     ; 0191 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0195 _ 89. 04 24
        call    shtctl_init                             ; 0198 _ E8, FFFFFFFC(rel)
        mov     dword [shtctl], eax                     ; 019D _ A3, 00000244(d)
        mov     eax, dword [shtctl]                     ; 01A2 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 01A7 _ 89. 04 24
        call    sheet_alloc                             ; 01AA _ E8, FFFFFFFC(rel)
        mov     dword [sht_back], eax                   ; 01AF _ A3, 00000248(d)
        mov     eax, dword [shtctl]                     ; 01B4 _ A1, 00000244(d)
        mov     dword [esp], eax                        ; 01B9 _ 89. 04 24
        call    sheet_alloc                             ; 01BC _ E8, FFFFFFFC(rel)
        mov     dword [sht_mouse], eax                  ; 01C1 _ A3, 0000024C(d)
        mov     edx, dword [xsize]                      ; 01C6 _ 8B. 15, 00000118(d)
        mov     eax, dword [ysize]                      ; 01CC _ A1, 0000011C(d)
        imul    edx, eax                                ; 01D1 _ 0F AF. D0
        mov     eax, dword [memman]                     ; 01D4 _ A1, 00000000(d)
        mov     dword [esp+4H], edx                     ; 01D9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01DD _ 89. 04 24
        call    memman_alloc_4k                         ; 01E0 _ E8, FFFFFFFC(rel)
        mov     dword [buf_back], eax                   ; 01E5 _ A3, 00000120(d)
        mov     ebx, dword [ysize]                      ; 01EA _ 8B. 1D, 0000011C(d)
        mov     ecx, dword [xsize]                      ; 01F0 _ 8B. 0D, 00000118(d)
        mov     edx, dword [buf_back]                   ; 01F6 _ 8B. 15, 00000120(d)
        mov     eax, dword [sht_back]                   ; 01FC _ A1, 00000248(d)
        mov     dword [esp+10H], 99                     ; 0201 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0209 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 020D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0211 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0215 _ 89. 04 24
        call    sheet_setbuf                            ; 0218 _ E8, FFFFFFFC(rel)
        mov     eax, dword [sht_mouse]                  ; 021D _ A1, 0000024C(d)
        mov     dword [esp+10H], 99                     ; 0222 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 022A _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0232 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], buf_mouse               ; 023A _ C7. 44 24, 04, 00000140(d)
        mov     dword [esp], eax                        ; 0242 _ 89. 04 24
        call    sheet_setbuf                            ; 0245 _ E8, FFFFFFFC(rel)
        mov     ecx, dword [ysize]                      ; 024A _ 8B. 0D, 0000011C(d)
        mov     edx, dword [xsize]                      ; 0250 _ 8B. 15, 00000118(d)
        mov     eax, dword [buf_back]                   ; 0256 _ A1, 00000120(d)
        mov     dword [esp+8H], ecx                     ; 025B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 025F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0263 _ 89. 04 24
        call    init_screen8                            ; 0266 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 99                      ; 026B _ C7. 44 24, 04, 00000063
        mov     dword [esp], buf_mouse                  ; 0273 _ C7. 04 24, 00000140(d)
        call    init_mouse_cursor                       ; 027A _ E8, FFFFFFFC(rel)
        mov     edx, dword [sht_back]                   ; 027F _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0285 _ A1, 00000244(d)
        mov     dword [esp+0CH], 0                      ; 028A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0292 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 029A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 029E _ 89. 04 24
        call    sheet_slide                             ; 02A1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [xsize]                      ; 02A6 _ A1, 00000118(d)
        sub     eax, 16                                 ; 02AB _ 83. E8, 10
        mov     edx, eax                                ; 02AE _ 89. C2
        shr     edx, 31                                 ; 02B0 _ C1. EA, 1F
        add     eax, edx                                ; 02B3 _ 01. D0
        sar     eax, 1                                  ; 02B5 _ D1. F8
        mov     dword [mx], eax                         ; 02B7 _ A3, 00000110(d)
        mov     eax, dword [ysize]                      ; 02BC _ A1, 0000011C(d)
        sub     eax, 44                                 ; 02C1 _ 83. E8, 2C
        mov     edx, eax                                ; 02C4 _ 89. C2
        shr     edx, 31                                 ; 02C6 _ C1. EA, 1F
        add     eax, edx                                ; 02C9 _ 01. D0
        sar     eax, 1                                  ; 02CB _ D1. F8
        mov     dword [my], eax                         ; 02CD _ A3, 00000114(d)
        mov     ebx, dword [my]                         ; 02D2 _ 8B. 1D, 00000114(d)
        mov     ecx, dword [mx]                         ; 02D8 _ 8B. 0D, 00000110(d)
        mov     edx, dword [sht_mouse]                  ; 02DE _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 02E4 _ A1, 00000244(d)
        mov     dword [esp+0CH], ebx                    ; 02E9 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 02ED _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 02F1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02F5 _ 89. 04 24
        call    sheet_slide                             ; 02F8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-48H], 8                      ; 02FD _ C7. 45, B8, 00000008
        mov     dword [ebp-44H], 7                      ; 0304 _ C7. 45, BC, 00000007
        mov     eax, dword [shtctl]                     ; 030B _ A1, 00000244(d)
        mov     dword [esp+4H], ?_168                   ; 0310 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0318 _ 89. 04 24
        call    message_box                             ; 031B _ E8, FFFFFFFC(rel)
        mov     dword [shtMsgBox], eax                  ; 0320 _ A3, 00000240(d)
        mov     edx, dword [sht_back]                   ; 0325 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 032B _ A1, 00000244(d)
        mov     dword [esp+8H], 0                       ; 0330 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0338 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 033C _ 89. 04 24
        call    sheet_updown                            ; 033F _ E8, FFFFFFFC(rel)
        mov     edx, dword [sht_mouse]                  ; 0344 _ 8B. 15, 0000024C(d)
        mov     eax, dword [shtctl]                     ; 034A _ A1, 00000244(d)
        mov     dword [esp+8H], 100                     ; 034F _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0357 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 035B _ 89. 04 24
        call    sheet_updown                            ; 035E _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0363 _ E8, FFFFFFFC(rel)
        mov     dword [esp], mdec                       ; 0368 _ C7. 04 24, 000000E0(d)
        call    enable_mouse                            ; 036F _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 0374 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 0379 _ 89. 45, E0
        call    get_addr_gdt                            ; 037C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0381 _ 89. 45, E4
        mov     dword [?_188], 0                        ; 0384 _ C7. 05, 000002E0(d), 00000000
        mov     dword [?_189], 1073741824               ; 038E _ C7. 05, 000002E4(d), 40000000
        mov     dword [?_206], 0                        ; 0398 _ C7. 05, 00000360(d), 00000000
        mov     dword [?_207], 1073741824               ; 03A2 _ C7. 05, 00000364(d), 40000000
        mov     eax, tss_a.1698                         ; 03AC _ B8, 00000280(d)
        mov     edx, dword [ebp-1CH]                    ; 03B1 _ 8B. 55, E4
        add     edx, 56                                 ; 03B4 _ 83. C2, 38
        mov     dword [esp+0CH], 137                    ; 03B7 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], eax                     ; 03BF _ 89. 44 24, 08
        mov     dword [esp+4H], 103                     ; 03C3 _ C7. 44 24, 04, 00000067
        mov     dword [esp], edx                        ; 03CB _ 89. 14 24
        call    set_segmdesc                            ; 03CE _ E8, FFFFFFFC(rel)
        mov     eax, tss_a.1698                         ; 03D3 _ B8, 00000280(d)
        mov     edx, dword [ebp-1CH]                    ; 03D8 _ 8B. 55, E4
        add     edx, 64                                 ; 03DB _ 83. C2, 40
        mov     dword [esp+0CH], 137                    ; 03DE _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], eax                     ; 03E6 _ 89. 44 24, 08
        mov     dword [esp+4H], 103                     ; 03EA _ C7. 44 24, 04, 00000067
        mov     dword [esp], edx                        ; 03F2 _ 89. 14 24
        call    set_segmdesc                            ; 03F5 _ E8, FFFFFFFC(rel)
        mov     eax, tss_b.1699                         ; 03FA _ B8, 00000300(d)
        mov     edx, dword [ebp-1CH]                    ; 03FF _ 8B. 55, E4
        add     edx, 72                                 ; 0402 _ 83. C2, 48
        mov     dword [esp+0CH], 137                    ; 0405 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], eax                     ; 040D _ 89. 44 24, 08
        mov     dword [esp+4H], 103                     ; 0411 _ C7. 44 24, 04, 00000067
        mov     dword [esp], edx                        ; 0419 _ 89. 14 24
        call    set_segmdesc                            ; 041C _ E8, FFFFFFFC(rel)
        mov     eax, task_b_main                        ; 0421 _ B8, 00000000(d)
        mov     edx, dword [ebp-1CH]                    ; 0426 _ 8B. 55, E4
        add     edx, 48                                 ; 0429 _ 83. C2, 30
        mov     dword [esp+0CH], 16538                  ; 042C _ C7. 44 24, 0C, 0000409A
        mov     dword [esp+8H], eax                     ; 0434 _ 89. 44 24, 08
        mov     dword [esp+4H], 65535                   ; 0438 _ C7. 44 24, 04, 0000FFFF
        mov     dword [esp], edx                        ; 0440 _ 89. 14 24
        call    set_segmdesc                            ; 0443 _ E8, FFFFFFFC(rel)
        mov     dword [esp], 56                         ; 0448 _ C7. 04 24, 00000038
        call    load_tr                                 ; 044F _ E8, FFFFFFFC(rel)
        call    taskswitch8                             ; 0454 _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 0459 _ A1, 00000000(d)
        mov     dword [esp+4H], 1024                    ; 045E _ C7. 44 24, 04, 00000400
        mov     dword [esp], eax                        ; 0466 _ 89. 04 24
        call    memman_alloc_4k                         ; 0469 _ E8, FFFFFFFC(rel)
        add     eax, 1024                               ; 046E _ 05, 00000400
        mov     dword [ebp-18H], eax                    ; 0473 _ 89. 45, E8
        mov     eax, dword [ebp-20H]                    ; 0476 _ 8B. 45, E0
        neg     eax                                     ; 0479 _ F7. D8
        add     eax, task_b_main                        ; 047B _ 05, 00000000(d)
        mov     dword [?_190], eax                      ; 0480 _ A3, 00000320(d)
        mov     dword [?_191], 514                      ; 0485 _ C7. 05, 00000324(d), 00000202
        mov     dword [?_192], 0                        ; 048F _ C7. 05, 00000328(d), 00000000
        mov     dword [?_193], 0                        ; 0499 _ C7. 05, 0000032C(d), 00000000
        mov     dword [?_194], 0                        ; 04A3 _ C7. 05, 00000330(d), 00000000
        mov     dword [?_195], 0                        ; 04AD _ C7. 05, 00000334(d), 00000000
        mov     dword [?_196], 1024                     ; 04B7 _ C7. 05, 00000338(d), 00000400
        mov     dword [?_197], 0                        ; 04C1 _ C7. 05, 0000033C(d), 00000000
        mov     dword [?_198], 0                        ; 04CB _ C7. 05, 00000340(d), 00000000
        mov     dword [?_199], 0                        ; 04D5 _ C7. 05, 00000344(d), 00000000
        mov     eax, dword [?_182]                      ; 04DF _ A1, 000002C8(d)
        mov     dword [?_200], eax                      ; 04E4 _ A3, 00000348(d)
        mov     eax, dword [?_183]                      ; 04E9 _ A1, 000002CC(d)
        mov     dword [?_201], eax                      ; 04EE _ A3, 0000034C(d)
        mov     eax, dword [?_184]                      ; 04F3 _ A1, 000002D0(d)
        mov     dword [?_202], eax                      ; 04F8 _ A3, 00000350(d)
        mov     eax, dword [?_185]                      ; 04FD _ A1, 000002D4(d)
        mov     dword [?_203], eax                      ; 0502 _ A3, 00000354(d)
        mov     eax, dword [?_186]                      ; 0507 _ A1, 000002D8(d)
        mov     dword [?_204], eax                      ; 050C _ A3, 00000358(d)
        mov     eax, dword [?_187]                      ; 0511 _ A1, 000002DC(d)
        mov     dword [?_205], eax                      ; 0516 _ A3, 0000035C(d)
        mov     dword [ebp-14H], 0                      ; 051B _ C7. 45, EC, 00000000
        mov     dword [ebp-40H], 0                      ; 0522 _ C7. 45, C0, 00000000
        mov     dword [ebp-10H], 0                      ; 0529 _ C7. 45, F0, 00000000
        mov     dword [ebp-3CH], 0                      ; 0530 _ C7. 45, C4, 00000000
        call    mt_init                                 ; 0537 _ E8, FFFFFFFC(rel)
?_001:  call    io_cli                                  ; 053C _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0541 _ C7. 04 24, 00000008(d)
        call    fifo8_status                            ; 0548 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 054D _ 89. C3
        mov     dword [esp], mouseinfo                  ; 054F _ C7. 04 24, 00000020(d)
        call    fifo8_status                            ; 0556 _ E8, FFFFFFFC(rel)
        add     ebx, eax                                ; 055B _ 01. C3
        mov     dword [esp], timerinfo                  ; 055D _ C7. 04 24, 000000F0(d)
        call    fifo8_status                            ; 0564 _ E8, FFFFFFFC(rel)
        add     eax, ebx                                ; 0569 _ 01. D8
        test    eax, eax                                ; 056B _ 85. C0
        jnz near      ?_002                                   ; 056d _ 75, 0a
        call    io_sti                                  ; 056F _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 0574 _ E9, 000003E1

?_002:  mov     dword [esp], keyinfo                    ; 0579 _ C7. 04 24, 00000008(d)
        call    fifo8_status                            ; 0580 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0585 _ 85. C0
        je near       ?_004                                   ; 0587 _ 0f 84, 000001f3
        call    io_sti                                  ; 058D _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0592 _ C7. 04 24, 00000008(d)
        call    fifo8_get                               ; 0599 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 059E _ 89. 45, EC
        cmp     dword [ebp-14H], 28                     ; 05A1 _ 83. 7D, EC, 1C
        jnz near      ?_003                                   ; 05a5 _ 75, 6f
        mov     ebx, dword [xsize]                      ; 05A7 _ 8B. 1D, 00000118(d)
        mov     ecx, dword [buf_back]                   ; 05AD _ 8B. 0D, 00000120(d)
        mov     edx, dword [ebp-40H]                    ; 05B3 _ 8B. 55, C0
        mov     eax, edx                                ; 05B6 _ 89. D0
        shl     eax, 2                                  ; 05B8 _ C1. E0, 02
        add     eax, edx                                ; 05BB _ 01. D0
        shl     eax, 2                                  ; 05BD _ C1. E0, 02
        mov     edx, eax                                ; 05C0 _ 89. C2
        mov     eax, dword [ebp-24H]                    ; 05C2 _ 8B. 45, DC
        lea     esi, [edx+eax]                          ; 05C5 _ 8D. 34 02
        mov     edx, dword [sht_back]                   ; 05C8 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 05CE _ A1, 00000244(d)
        mov     dword [esp+18H], 7                      ; 05D3 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 05DB _ 89. 5C 24, 14
        mov     ebx, dword [ebp-40H]                    ; 05DF _ 8B. 5D, C0
        mov     dword [esp+10H], ebx                    ; 05E2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 05E6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], esi                     ; 05EA _ 89. 74 24, 08
        mov     dword [esp+4H], edx                     ; 05EE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05F2 _ 89. 04 24
        call    showMemoryInfo                          ; 05F5 _ E8, FFFFFFFC(rel)
        add     dword [ebp-40H], 1                      ; 05FA _ 83. 45, C0, 01
        mov     eax, dword [ebp-40H]                    ; 05FE _ 8B. 45, C0
        cmp     eax, dword [ebp-28H]                    ; 0601 _ 3B. 45, D8
        jle near      ?_010                                   ; 0604 _ 0f 8e, 00000350
        mov     dword [ebp-40H], 0                      ; 060A _ C7. 45, C0, 00000000
        jmp     ?_010                                   ; 0611 _ E9, 00000344

?_003:  mov     eax, dword [ebp-14H]                    ; 0616 _ 8B. 45, EC
        add     eax, keytable                           ; 0619 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 061E _ 0F B6. 00
        test    al, al                                  ; 0621 _ 84. C0
        je near       ?_010                                   ; 0623 _ 0f 84, 00000331
        cmp     dword [ebp-48H], 143                    ; 0629 _ 81. 7D, B8, 0000008F
        jg  near      ?_010                                   ; 0630 _ 0f 8f, 00000324
        mov     eax, dword [ebp-48H]                    ; 0636 _ 8B. 45, B8
        lea     ecx, [eax+7H]                           ; 0639 _ 8D. 48, 07
        mov     eax, dword [shtMsgBox]                  ; 063C _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 0641 _ 8B. 50, 04
        mov     eax, dword [shtMsgBox]                  ; 0644 _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0649 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 064B _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 0653 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0657 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-48H]                    ; 065F _ 8B. 4D, B8
        mov     dword [esp+0CH], ecx                    ; 0662 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0666 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 066E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0672 _ 89. 04 24
        call    boxfill8                                ; 0675 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-48H]                    ; 067A _ 8B. 45, B8
        lea     ecx, [eax+8H]                           ; 067D _ 8D. 48, 08
        mov     edx, dword [shtMsgBox]                  ; 0680 _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 0686 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 068B _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0693 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0697 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-48H]                    ; 069F _ 8B. 4D, B8
        mov     dword [esp+8H], ecx                     ; 06A2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06AA _ 89. 04 24
        call    sheet_refresh                           ; 06AD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 06B2 _ 8B. 45, EC
        add     eax, keytable                           ; 06B5 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 06BA _ 0F B6. 00
        mov     byte [ebp-4AH], al                      ; 06BD _ 88. 45, B6
        mov     byte [ebp-49H], 0                       ; 06C0 _ C6. 45, B7, 00
        mov     edx, dword [shtMsgBox]                  ; 06C4 _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 06CA _ A1, 00000244(d)
        lea     ecx, [ebp-4AH]                          ; 06CF _ 8D. 4D, B6
        mov     dword [esp+14H], ecx                    ; 06D2 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 06D6 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 06DE _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-48H]                    ; 06E6 _ 8B. 4D, B8
        mov     dword [esp+8H], ecx                     ; 06E9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06ED _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06F1 _ 89. 04 24
        call    showString                              ; 06F4 _ E8, FFFFFFFC(rel)
        add     dword [ebp-48H], 8                      ; 06F9 _ 83. 45, B8, 08
        mov     eax, dword [ebp-48H]                    ; 06FD _ 8B. 45, B8
        lea     ebx, [eax+7H]                           ; 0700 _ 8D. 58, 07
        mov     eax, dword [ebp-44H]                    ; 0703 _ 8B. 45, BC
        movzx   ecx, al                                 ; 0706 _ 0F B6. C8
        mov     eax, dword [shtMsgBox]                  ; 0709 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 070E _ 8B. 50, 04
        mov     eax, dword [shtMsgBox]                  ; 0711 _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 0716 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0718 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0720 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0724 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-48H]                    ; 072C _ 8B. 5D, B8
        mov     dword [esp+0CH], ebx                    ; 072F _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0733 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0737 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 073B _ 89. 04 24
        call    boxfill8                                ; 073E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-48H]                    ; 0743 _ 8B. 45, B8
        lea     ecx, [eax+8H]                           ; 0746 _ 8D. 48, 08
        mov     edx, dword [shtMsgBox]                  ; 0749 _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 074F _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 0754 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 075C _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0760 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-48H]                    ; 0768 _ 8B. 4D, B8
        mov     dword [esp+8H], ecx                     ; 076B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 076F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0773 _ 89. 04 24
        call    sheet_refresh                           ; 0776 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 077B _ E9, FFFFFDBC

?_004:  mov     dword [esp], mouseinfo                  ; 0780 _ C7. 04 24, 00000020(d)
        call    fifo8_status                            ; 0787 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 078C _ 85. C0
        jz near       ?_005                                   ; 078e _ 74, 26
        mov     ecx, dword [sht_mouse]                  ; 0790 _ 8B. 0D, 0000024C(d)
        mov     edx, dword [sht_back]                   ; 0796 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 079C _ A1, 00000244(d)
        mov     dword [esp+8H], ecx                     ; 07A1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07A5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07A9 _ 89. 04 24
        call    show_mouse_info                         ; 07AC _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 07B1 _ E9, 000001A4

?_005:  mov     dword [esp], timerinfo                  ; 07B6 _ C7. 04 24, 000000F0(d)
        call    fifo8_status                            ; 07BD _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 07C2 _ 85. C0
        je near       ?_010                                   ; 07c4 _ 0f 84, 00000190
        call    io_sti                                  ; 07CA _ E8, FFFFFFFC(rel)
        mov     dword [esp], timerinfo                  ; 07CF _ C7. 04 24, 000000F0(d)
        call    fifo8_get                               ; 07D6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 07DB _ 89. 45, F4
        cmp     dword [ebp-0CH], 10                     ; 07DE _ 83. 7D, F4, 0A
        jnz near      ?_006                                   ; 07e2 _ 75, 52
        mov     edx, dword [sht_back]                   ; 07E4 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 07EA _ A1, 00000244(d)
        mov     dword [esp+14H], ?_169                  ; 07EF _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 07F7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 07FF _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-3CH]                    ; 0807 _ 8B. 4D, C4
        mov     dword [esp+8H], ecx                     ; 080A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 080E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0812 _ 89. 04 24
        call    showString                              ; 0815 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 081A _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-34H]                    ; 0822 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0825 _ 89. 04 24
        call    timer_settime                           ; 0828 _ E8, FFFFFFFC(rel)
        add     dword [ebp-3CH], 8                      ; 082D _ 83. 45, C4, 08
        jmp     ?_010                                   ; 0831 _ E9, 00000124

?_006:  cmp     dword [ebp-0CH], 2                      ; 0836 _ 83. 7D, F4, 02
        jnz near      ?_007                                   ; 083a _ 75, 3c
        mov     edx, dword [sht_back]                   ; 083C _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0842 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_170                  ; 0847 _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 084F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 0857 _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 085F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0867 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 086B _ 89. 04 24
        call    showString                              ; 086E _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 0873 _ E9, 000000E2

?_007:  cmp     dword [ebp-0CH], 0                      ; 0878 _ 83. 7D, F4, 00
        jz near       ?_008                                   ; 087c _ 74, 24
        mov     dword [esp+8H], 0                       ; 087E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], timerinfo               ; 0886 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 088E _ 8B. 45, D4
        mov     dword [esp], eax                        ; 0891 _ 89. 04 24
        call    timer_init                              ; 0894 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], 0                      ; 0899 _ C7. 45, BC, 00000000
        jmp     ?_009                                   ; 08A0 _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 08A2 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo               ; 08AA _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 08B2 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 08B5 _ 89. 04 24
        call    timer_init                              ; 08B8 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-44H], 7                      ; 08BD _ C7. 45, BC, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 08C4 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 08CC _ 8B. 45, D4
        mov     dword [esp], eax                        ; 08CF _ 89. 04 24
        call    timer_settime                           ; 08D2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-48H]                    ; 08D7 _ 8B. 45, B8
        lea     ebx, [eax+7H]                           ; 08DA _ 8D. 58, 07
        mov     eax, dword [ebp-44H]                    ; 08DD _ 8B. 45, BC
        movzx   ecx, al                                 ; 08E0 _ 0F B6. C8
        mov     eax, dword [shtMsgBox]                  ; 08E3 _ A1, 00000240(d)
        mov     edx, dword [eax+4H]                     ; 08E8 _ 8B. 50, 04
        mov     eax, dword [shtMsgBox]                  ; 08EB _ A1, 00000240(d)
        mov     eax, dword [eax]                        ; 08F0 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 08F2 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 08FA _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 08FE _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-48H]                    ; 0906 _ 8B. 5D, B8
        mov     dword [esp+0CH], ebx                    ; 0909 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 090D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0911 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0915 _ 89. 04 24
        call    boxfill8                                ; 0918 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-48H]                    ; 091D _ 8B. 45, B8
        lea     ecx, [eax+8H]                           ; 0920 _ 8D. 48, 08
        mov     edx, dword [shtMsgBox]                  ; 0923 _ 8B. 15, 00000240(d)
        mov     eax, dword [shtctl]                     ; 0929 _ A1, 00000244(d)
        mov     dword [esp+14H], 44                     ; 092E _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0936 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 093A _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-48H]                    ; 0942 _ 8B. 4D, B8
        mov     dword [esp+8H], ecx                     ; 0945 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0949 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 094D _ 89. 04 24
        call    sheet_refresh                           ; 0950 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0955 _ E9, FFFFFBE2

?_010:  jmp     ?_001                                   ; 095A _ E9, FFFFFBDD
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 095F _ 55
        mov     ebp, esp                                ; 0960 _ 89. E5
        sub     esp, 88                                 ; 0962 _ 83. EC, 58
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0965 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 096B _ 89. 45, F4
        xor     eax, eax                                ; 096E _ 31. C0
        mov     edx, dword [sht_back]                   ; 0970 _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0976 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_171                  ; 097B _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 0983 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 098B _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 0993 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 099B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 099F _ 89. 04 24
        call    showString                              ; 09A2 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], 0                      ; 09A7 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 0                      ; 09AE _ C7. 45, D0, 00000000
        lea     eax, [ebp-14H]                          ; 09B5 _ 8D. 45, EC
        mov     dword [esp+8H], eax                     ; 09B8 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 09BC _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-2CH]                          ; 09C4 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 09C7 _ 89. 04 24
        call    fifo8_init                              ; 09CA _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 09CF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 09D4 _ 89. 45, CC
        mov     dword [esp+8H], 123                     ; 09D7 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-2CH]                          ; 09DF _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 09E2 _ 89. 44 24, 04
        mov     eax, dword [ebp-34H]                    ; 09E6 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 09E9 _ 89. 04 24
        call    timer_init                              ; 09EC _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 09F1 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-34H]                    ; 09F9 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 09FC _ 89. 04 24
        call    timer_settime                           ; 09FF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], 0                      ; 0A04 _ C7. 45, C8, 00000000
?_011:  call    io_cli                                  ; 0A0B _ E8, FFFFFFFC(rel)
        lea     eax, [ebp-2CH]                          ; 0A10 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 0A13 _ 89. 04 24
        call    fifo8_status                            ; 0A16 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0A1B _ 85. C0
        jnz near      ?_012                                   ; 0a1d _ 75, 07
        call    io_sti                                  ; 0A1F _ E8, FFFFFFFC(rel)
        jmp     ?_013                                   ; 0A24 _ EB, 6B

?_012:  lea     eax, [ebp-2CH]                          ; 0A26 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 0A29 _ 89. 04 24
        call    fifo8_get                               ; 0A2C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 0A31 _ 89. 45, D0
        call    io_sti                                  ; 0A34 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-30H], 123                    ; 0A39 _ 83. 7D, D0, 7B
        jnz near      ?_013                                   ; 0a3d _ 75, 52
        mov     edx, dword [sht_back]                   ; 0A3F _ 8B. 15, 00000248(d)
        mov     eax, dword [shtctl]                     ; 0A45 _ A1, 00000244(d)
        mov     dword [esp+14H], ?_172                  ; 0A4A _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 0A52 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 0A5A _ C7. 44 24, 0C, 000000B0
        mov     ecx, dword [ebp-38H]                    ; 0A62 _ 8B. 4D, C8
        mov     dword [esp+8H], ecx                     ; 0A65 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A69 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A6D _ 89. 04 24
        call    showString                              ; 0A70 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 0A75 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-34H]                    ; 0A7D _ 8B. 45, CC
        mov     dword [esp], eax                        ; 0A80 _ 89. 04 24
        call    timer_settime                           ; 0A83 _ E8, FFFFFFFC(rel)
        add     dword [ebp-38H], 8                      ; 0A88 _ 83. 45, C8, 08
        jmp     ?_011                                   ; 0A8C _ E9, FFFFFF7A

?_013:  jmp     ?_011                                   ; 0A91 _ E9, FFFFFF75
; task_b_main End of function

init_screen8:; Function begin
        push    ebp                                     ; 0A96 _ 55
        mov     ebp, esp                                ; 0A97 _ 89. E5
        push    ebx                                     ; 0A99 _ 53
        sub     esp, 36                                 ; 0A9A _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0A9D _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0AA0 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0AA3 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0AA6 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0AA9 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0AAD _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0AB1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0AB9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0AC1 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0AC9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0ACC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AD0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AD3 _ 89. 04 24
        call    boxfill8                                ; 0AD6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0ADB _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0ADE _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0AE1 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0AE4 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0AE7 _ 8B. 45, 10
        sub     eax, 28                                 ; 0AEA _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0AED _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0AF1 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AF5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0AF9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0B01 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0B09 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B0C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B10 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B13 _ 89. 04 24
        call    boxfill8                                ; 0B16 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0B1B _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0B1E _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0B21 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B24 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B27 _ 8B. 45, 10
        sub     eax, 27                                 ; 0B2A _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0B2D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B31 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B35 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B39 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0B41 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B49 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B4C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B50 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B53 _ 89. 04 24
        call    boxfill8                                ; 0B56 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0B5B _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0B5E _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0B61 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0B64 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0B67 _ 8B. 45, 10
        sub     eax, 26                                 ; 0B6A _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0B6D _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0B71 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0B75 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0B79 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0B81 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0B89 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B8C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B90 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B93 _ 89. 04 24
        call    boxfill8                                ; 0B96 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0B9B _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0B9E _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0BA1 _ 8B. 45, 10
        sub     eax, 24                                 ; 0BA4 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0BA7 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0BAB _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0BB3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0BB7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0BBF _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0BC7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BCA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BCE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BD1 _ 89. 04 24
        call    boxfill8                                ; 0BD4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0BD9 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0BDC _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0BDF _ 8B. 45, 10
        sub     eax, 24                                 ; 0BE2 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0BE5 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0BE9 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0BF1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0BF5 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0BFD _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C05 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C0F _ 89. 04 24
        call    boxfill8                                ; 0C12 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C17 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0C1A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0C1D _ 8B. 45, 10
        sub     eax, 4                                  ; 0C20 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0C23 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C27 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C2F _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0C33 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0C3B _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C43 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C46 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C4A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C4D _ 89. 04 24
        call    boxfill8                                ; 0C50 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C55 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0C58 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0C5B _ 8B. 45, 10
        sub     eax, 23                                 ; 0C5E _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0C61 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0C65 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0C6D _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0C71 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0C79 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C81 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C84 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C88 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C8B _ 89. 04 24
        call    boxfill8                                ; 0C8E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C93 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C96 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C99 _ 8B. 45, 10
        sub     eax, 3                                  ; 0C9C _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0C9F _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0CA3 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0CAB _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0CAF _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0CB7 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0CBF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CC2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CC6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CC9 _ 89. 04 24
        call    boxfill8                                ; 0CCC _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0CD1 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CD4 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0CD7 _ 8B. 45, 10
        sub     eax, 24                                 ; 0CDA _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CDD _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0CE1 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0CE9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0CED _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0CF5 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0CFD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D00 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D04 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D07 _ 89. 04 24
        call    boxfill8                                ; 0D0A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D0F _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0D12 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0D15 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D18 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D1B _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0D1E _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0D21 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D24 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D27 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D2B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D2F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D33 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0D37 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D3F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D42 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D46 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D49 _ 89. 04 24
        call    boxfill8                                ; 0D4C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D51 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0D54 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0D57 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0D5A _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0D5D _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0D60 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0D63 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0D66 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0D69 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D6D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D71 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D75 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0D79 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0D81 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D84 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D88 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D8B _ 89. 04 24
        call    boxfill8                                ; 0D8E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D93 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D96 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D99 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0D9C _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0D9F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DA2 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0DA5 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0DA8 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0DAB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0DAF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0DB3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0DB7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0DBB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0DC3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DC6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DCA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DCD _ 89. 04 24
        call    boxfill8                                ; 0DD0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0DD5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0DD8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0DDB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0DDE _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0DE1 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0DE4 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0DE7 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0DEA _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0DED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0DF1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0DF5 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0DF9 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0DFD _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0E05 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E0F _ 89. 04 24
        call    boxfill8                                ; 0E12 _ E8, FFFFFFFC(rel)
        add     esp, 36                                 ; 0E17 _ 83. C4, 24
        pop     ebx                                     ; 0E1A _ 5B
        pop     ebp                                     ; 0E1B _ 5D
        ret                                             ; 0E1C _ C3
; init_screen8 End of function

computeMousePosition:; Function begin
        push    ebp                                     ; 0E1D _ 55
        mov     ebp, esp                                ; 0E1E _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0E20 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0E23 _ 8B. 50, 04
        mov     eax, dword [mx]                         ; 0E26 _ A1, 00000110(d)
        add     eax, edx                                ; 0E2B _ 01. D0
        mov     dword [mx], eax                         ; 0E2D _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 0E32 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0E35 _ 8B. 50, 08
        mov     eax, dword [my]                         ; 0E38 _ A1, 00000114(d)
        add     eax, edx                                ; 0E3D _ 01. D0
        mov     dword [my], eax                         ; 0E3F _ A3, 00000114(d)
        mov     eax, dword [mx]                         ; 0E44 _ A1, 00000110(d)
        test    eax, eax                                ; 0E49 _ 85. C0
        jns     ?_014                                   ; 0E4B _ 79, 0A
        mov     dword [mx], 0                           ; 0E4D _ C7. 05, 00000110(d), 00000000
?_014:  mov     eax, dword [my]                         ; 0E57 _ A1, 00000114(d)
        test    eax, eax                                ; 0E5C _ 85. C0
        jns     ?_015                                   ; 0E5E _ 79, 0A
        mov     dword [my], 0                           ; 0E60 _ C7. 05, 00000114(d), 00000000
?_015:  mov     eax, dword [xsize]                      ; 0E6A _ A1, 00000118(d)
        lea     edx, [eax-1H]                           ; 0E6F _ 8D. 50, FF
        mov     eax, dword [mx]                         ; 0E72 _ A1, 00000110(d)
        cmp     edx, eax                                ; 0E77 _ 39. C2
        jge near      ?_016                                   ; 0e79 _ 7d, 0d
        mov     eax, dword [xsize]                      ; 0E7B _ A1, 00000118(d)
        sub     eax, 1                                  ; 0E80 _ 83. E8, 01
        mov     dword [mx], eax                         ; 0E83 _ A3, 00000110(d)
?_016:  mov     eax, dword [ysize]                      ; 0E88 _ A1, 0000011C(d)
        lea     edx, [eax-1H]                           ; 0E8D _ 8D. 50, FF
        mov     eax, dword [my]                         ; 0E90 _ A1, 00000114(d)
        cmp     edx, eax                                ; 0E95 _ 39. C2
        jge near      ?_017                                   ; 0e97 _ 7d, 0d
        mov     eax, dword [ysize]                      ; 0E99 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0E9E _ 83. E8, 01
        mov     dword [my], eax                         ; 0EA1 _ A3, 00000114(d)
?_017:  pop     ebp                                     ; 0EA6 _ 5D
        ret                                             ; 0EA7 _ C3
; computeMousePosition End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 0EA8 _ 55
        mov     ebp, esp                                ; 0EA9 _ 89. E5
        sub     esp, 40                                 ; 0EAB _ 83. EC, 28
        mov     eax, dword [buf_back]                   ; 0EAE _ A1, 00000120(d)
        mov     dword [ebp-0CH], eax                    ; 0EB3 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0EB6 _ C6. 45, F3, 00
        call    io_sti                                  ; 0EBA _ E8, FFFFFFFC(rel)
        mov     dword [esp], mouseinfo                  ; 0EBF _ C7. 04 24, 00000020(d)
        call    fifo8_get                               ; 0EC6 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-0DH], al                      ; 0ECB _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0ECE _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0ED2 _ 89. 44 24, 04
        mov     dword [esp], mdec                       ; 0ED6 _ C7. 04 24, 000000E0(d)
        call    mouse_decode                            ; 0EDD _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0EE2 _ 85. C0
        jz near       ?_018                                   ; 0ee4 _ 74, 77
        mov     dword [esp+8H], mdec                    ; 0EE6 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0EEE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EF1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EF5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EF8 _ 89. 04 24
        call    computeMousePosition                    ; 0EFB _ E8, FFFFFFFC(rel)
        mov     edx, dword [my]                         ; 0F00 _ 8B. 15, 00000114(d)
        mov     eax, dword [mx]                         ; 0F06 _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0F0B _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0F0F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0F13 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0F16 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F1A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F1D _ 89. 04 24
        call    sheet_slide                             ; 0F20 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_181]                      ; 0F25 _ A1, 000000EC(d)
        and     eax, 01H                                ; 0F2A _ 83. E0, 01
        test    eax, eax                                ; 0F2D _ 85. C0
        jz near       ?_018                                   ; 0f2f _ 74, 2c
        mov     eax, dword [my]                         ; 0F31 _ A1, 00000114(d)
        lea     ecx, [eax-8H]                           ; 0F36 _ 8D. 48, F8
        mov     eax, dword [mx]                         ; 0F39 _ A1, 00000110(d)
        lea     edx, [eax-50H]                          ; 0F3E _ 8D. 50, B0
        mov     eax, dword [shtMsgBox]                  ; 0F41 _ A1, 00000240(d)
        mov     dword [esp+0CH], ecx                    ; 0F46 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0F4A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0F4E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F52 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F55 _ 89. 04 24
        call    sheet_slide                             ; 0F58 _ E8, FFFFFFFC(rel)
?_018:  leave                                           ; 0F5D _ C9
        ret                                             ; 0F5E _ C3
; show_mouse_info End of function

initBootInfo:; Function begin
        push    ebp                                     ; 0F5F _ 55
        mov     ebp, esp                                ; 0F60 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F62 _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0F65 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0F6B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0F6E _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0F74 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0F77 _ 66: C7. 40, 06, 01E0
        pop     ebp                                     ; 0F7D _ 5D
        ret                                             ; 0F7E _ C3
; initBootInfo End of function

showString:; Function begin
        push    ebp                                     ; 0F7F _ 55
        mov     ebp, esp                                ; 0F80 _ 89. E5
        push    ebx                                     ; 0F82 _ 53
        sub     esp, 52                                 ; 0F83 _ 83. EC, 34
        mov     eax, dword [ebp+18H]                    ; 0F86 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0F89 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0F8C _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0F8F _ 89. 45, F4
        jmp     ?_020                                   ; 0F92 _ EB, 4B

?_019:  mov     eax, dword [ebp+1CH]                    ; 0F94 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F97 _ 0F B6. 00
        movzx   eax, al                                 ; 0F9A _ 0F B6. C0
        shl     eax, 4                                  ; 0F9D _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 0FA0 _ 8D. 98, 00000000(d)
        movsx   ecx, byte [ebp-1CH]                     ; 0FA6 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+0CH]                    ; 0FAA _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 0FAD _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 0FB0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 0FB3 _ 8B. 00
        mov     dword [esp+14H], ebx                    ; 0FB5 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0FB9 _ 89. 4C 24, 10
        mov     ecx, dword [ebp+14H]                    ; 0FBD _ 8B. 4D, 14
        mov     dword [esp+0CH], ecx                    ; 0FC0 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp+10H]                    ; 0FC4 _ 8B. 4D, 10
        mov     dword [esp+8H], ecx                     ; 0FC7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0FCB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0FCF _ 89. 04 24
        call    showFont8                               ; 0FD2 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 0FD7 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0FDB _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 0FDF _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0FE2 _ 0F B6. 00
        test    al, al                                  ; 0FE5 _ 84. C0
        jnz near      ?_019                                   ; 0fe7 _ 75, ab
        mov     eax, dword [ebp+14H]                    ; 0FE9 _ 8B. 45, 14
        add     eax, 16                                 ; 0FEC _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0FEF _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0FF3 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0FF6 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0FFA _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0FFD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1001 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1004 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1008 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 100B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 100F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1012 _ 89. 04 24
        call    sheet_refresh                           ; 1015 _ E8, FFFFFFFC(rel)
        add     esp, 52                                 ; 101A _ 83. C4, 34
        pop     ebx                                     ; 101D _ 5B
        pop     ebp                                     ; 101E _ 5D
        ret                                             ; 101F _ C3
; showString End of function

init_palette:; Function begin
        push    ebp                                     ; 1020 _ 55
        mov     ebp, esp                                ; 1021 _ 89. E5
        sub     esp, 24                                 ; 1023 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1759          ; 1026 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 102E _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 1036 _ C7. 04 24, 00000000
        call    set_palette                             ; 103D _ E8, FFFFFFFC(rel)
        nop                                             ; 1042 _ 90
        leave                                           ; 1043 _ C9
        ret                                             ; 1044 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 1045 _ 55
        mov     ebp, esp                                ; 1046 _ 89. E5
        sub     esp, 40                                 ; 1048 _ 83. EC, 28
        call    io_load_eflags                          ; 104B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1050 _ 89. 45, F4
        call    io_cli                                  ; 1053 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 1058 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 105B _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 105F _ C7. 04 24, 000003C8
        call    io_out8                                 ; 1066 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 106B _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 106E _ 89. 45, F0
        jmp     ?_022                                   ; 1071 _ EB, 62

?_021:  mov     eax, dword [ebp+10H]                    ; 1073 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 1076 _ 0F B6. 00
        shr     al, 2                                   ; 1079 _ C0. E8, 02
        movzx   eax, al                                 ; 107C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 107F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1083 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 108A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 108F _ 8B. 45, 10
        add     eax, 1                                  ; 1092 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 1095 _ 0F B6. 00
        shr     al, 2                                   ; 1098 _ C0. E8, 02
        movzx   eax, al                                 ; 109B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 109E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 10A2 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 10A9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 10AE _ 8B. 45, 10
        add     eax, 2                                  ; 10B1 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 10B4 _ 0F B6. 00
        shr     al, 2                                   ; 10B7 _ C0. E8, 02
        movzx   eax, al                                 ; 10BA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 10BD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 10C1 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 10C8 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 10CD _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 10D1 _ 83. 45, F0, 01
?_022:  mov     eax, dword [ebp-10H]                    ; 10D5 _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 10D8 _ 3B. 45, 0C
        jle near      ?_021                                   ; 10db _ 7e, 96
        mov     eax, dword [ebp-0CH]                    ; 10DD _ 8B. 45, F4
        mov     dword [esp], eax                        ; 10E0 _ 89. 04 24
        call    io_store_eflags                         ; 10E3 _ E8, FFFFFFFC(rel)
        nop                                             ; 10E8 _ 90
        leave                                           ; 10E9 _ C9
        ret                                             ; 10EA _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 10EB _ 55
        mov     ebp, esp                                ; 10EC _ 89. E5
        sub     esp, 20                                 ; 10EE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 10F1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 10F4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 10F7 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 10FA _ 89. 45, FC
        jmp     ?_026                                   ; 10FD _ EB, 33

?_023:  mov     eax, dword [ebp+14H]                    ; 10FF _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 1102 _ 89. 45, F8
        jmp     ?_025                                   ; 1105 _ EB, 1F

?_024:  mov     eax, dword [ebp-4H]                     ; 1107 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 110A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 110E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1110 _ 8B. 45, F8
        add     eax, edx                                ; 1113 _ 01. D0
        mov     edx, eax                                ; 1115 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1117 _ 8B. 45, 08
        add     edx, eax                                ; 111A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 111C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1120 _ 88. 02
        add     dword [ebp-8H], 1                       ; 1122 _ 83. 45, F8, 01
?_025:  mov     eax, dword [ebp-8H]                     ; 1126 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 1129 _ 3B. 45, 1C
        jle near      ?_024                                   ; 112c _ 7e, d9
        add     dword [ebp-4H], 1                       ; 112E _ 83. 45, FC, 01
?_026:  mov     eax, dword [ebp-4H]                     ; 1132 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 1135 _ 3B. 45, 20
        jle near      ?_023                                   ; 1138 _ 7e, c5
        leave                                           ; 113A _ C9
        ret                                             ; 113B _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 113C _ 55
        mov     ebp, esp                                ; 113D _ 89. E5
        sub     esp, 20                                 ; 113F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 1142 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1145 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1148 _ C7. 45, FC, 00000000
        jmp     ?_036                                   ; 114F _ E9, 0000016C

?_027:  mov     edx, dword [ebp-4H]                     ; 1154 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1157 _ 8B. 45, 1C
        add     eax, edx                                ; 115A _ 01. D0
        movzx   eax, byte [eax]                         ; 115C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 115F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 1162 _ 80. 7D, FB, 00
        jns     ?_028                                   ; 1166 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 1168 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 116B _ 8B. 55, 14
        add     eax, edx                                ; 116E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1170 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1174 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1176 _ 8B. 45, 10
        add     eax, edx                                ; 1179 _ 01. D0
        mov     edx, eax                                ; 117B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 117D _ 8B. 45, 08
        add     edx, eax                                ; 1180 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1182 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1186 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1188 _ 0F BE. 45, FB
        and     eax, 40H                                ; 118C _ 83. E0, 40
        test    eax, eax                                ; 118F _ 85. C0
        jz near       ?_029                                   ; 1191 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 1193 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1196 _ 8B. 55, 14
        add     eax, edx                                ; 1199 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 119B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 119F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11A1 _ 8B. 45, 10
        add     eax, edx                                ; 11A4 _ 01. D0
        lea     edx, [eax+1H]                           ; 11A6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 11A9 _ 8B. 45, 08
        add     edx, eax                                ; 11AC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11AE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B2 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 11B4 _ 0F BE. 45, FB
        and     eax, 20H                                ; 11B8 _ 83. E0, 20
        test    eax, eax                                ; 11BB _ 85. C0
        jz near       ?_030                                   ; 11bd _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 11BF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 11C2 _ 8B. 55, 14
        add     eax, edx                                ; 11C5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11C7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11CB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11CD _ 8B. 45, 10
        add     eax, edx                                ; 11D0 _ 01. D0
        lea     edx, [eax+2H]                           ; 11D2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 11D5 _ 8B. 45, 08
        add     edx, eax                                ; 11D8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11DA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11DE _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 11E0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 11E4 _ 83. E0, 10
        test    eax, eax                                ; 11E7 _ 85. C0
        jz near       ?_031                                   ; 11e9 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 11EB _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 11EE _ 8B. 55, 14
        add     eax, edx                                ; 11F1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11F3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 11F7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 11F9 _ 8B. 45, 10
        add     eax, edx                                ; 11FC _ 01. D0
        lea     edx, [eax+3H]                           ; 11FE _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1201 _ 8B. 45, 08
        add     edx, eax                                ; 1204 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1206 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 120A _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 120C _ 0F BE. 45, FB
        and     eax, 08H                                ; 1210 _ 83. E0, 08
        test    eax, eax                                ; 1213 _ 85. C0
        jz near       ?_032                                   ; 1215 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 1217 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 121A _ 8B. 55, 14
        add     eax, edx                                ; 121D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 121F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1223 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1225 _ 8B. 45, 10
        add     eax, edx                                ; 1228 _ 01. D0
        lea     edx, [eax+4H]                           ; 122A _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 122D _ 8B. 45, 08
        add     edx, eax                                ; 1230 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1232 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1236 _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 1238 _ 0F BE. 45, FB
        and     eax, 04H                                ; 123C _ 83. E0, 04
        test    eax, eax                                ; 123F _ 85. C0
        jz near       ?_033                                   ; 1241 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 1243 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1246 _ 8B. 55, 14
        add     eax, edx                                ; 1249 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 124B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 124F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1251 _ 8B. 45, 10
        add     eax, edx                                ; 1254 _ 01. D0
        lea     edx, [eax+5H]                           ; 1256 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1259 _ 8B. 45, 08
        add     edx, eax                                ; 125C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 125E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1262 _ 88. 02
?_033:  movsx   eax, byte [ebp-5H]                      ; 1264 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1268 _ 83. E0, 02
        test    eax, eax                                ; 126B _ 85. C0
        jz near       ?_034                                   ; 126d _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 126F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1272 _ 8B. 55, 14
        add     eax, edx                                ; 1275 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1277 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 127B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 127D _ 8B. 45, 10
        add     eax, edx                                ; 1280 _ 01. D0
        lea     edx, [eax+6H]                           ; 1282 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1285 _ 8B. 45, 08
        add     edx, eax                                ; 1288 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 128A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 128E _ 88. 02
?_034:  movsx   eax, byte [ebp-5H]                      ; 1290 _ 0F BE. 45, FB
        and     eax, 01H                                ; 1294 _ 83. E0, 01
        test    eax, eax                                ; 1297 _ 85. C0
        jz near       ?_035                                   ; 1299 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 129B _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 129E _ 8B. 55, 14
        add     eax, edx                                ; 12A1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12A3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 12A7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 12A9 _ 8B. 45, 10
        add     eax, edx                                ; 12AC _ 01. D0
        lea     edx, [eax+7H]                           ; 12AE _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 12B1 _ 8B. 45, 08
        add     edx, eax                                ; 12B4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12B6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12BA _ 88. 02
?_035:  add     dword [ebp-4H], 1                       ; 12BC _ 83. 45, FC, 01
?_036:  cmp     dword [ebp-4H], 15                      ; 12C0 _ 83. 7D, FC, 0F
        jle near      ?_027                                   ; 12c4 _ 0f 8e, fffffe8a
        leave                                           ; 12CA _ C9
        ret                                             ; 12CB _ C3
; showFont8 End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 12CC _ 55
        mov     ebp, esp                                ; 12CD _ 89. E5
        sub     esp, 20                                 ; 12CF _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 12D2 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 12D5 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 12D8 _ C7. 45, FC, 00000000
        jmp     ?_043                                   ; 12DF _ E9, 000000B1

?_037:  mov     dword [ebp-8H], 0                       ; 12E4 _ C7. 45, F8, 00000000
        jmp     ?_042                                   ; 12EB _ E9, 00000097

?_038:  mov     eax, dword [ebp-4H]                     ; 12F0 _ 8B. 45, FC
        shl     eax, 4                                  ; 12F3 _ C1. E0, 04
        mov     edx, eax                                ; 12F6 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 12F8 _ 8B. 45, F8
        add     eax, edx                                ; 12FB _ 01. D0
        add     eax, cursor.1806                        ; 12FD _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1302 _ 0F B6. 00
        cmp     al, 42                                  ; 1305 _ 3C, 2A
        jnz near      ?_039                                   ; 1307 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1309 _ 8B. 45, FC
        shl     eax, 4                                  ; 130C _ C1. E0, 04
        mov     edx, eax                                ; 130F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1311 _ 8B. 45, F8
        add     eax, edx                                ; 1314 _ 01. D0
        mov     edx, eax                                ; 1316 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1318 _ 8B. 45, 08
        add     eax, edx                                ; 131B _ 01. D0
        mov     byte [eax], 0                           ; 131D _ C6. 00, 00
?_039:  mov     eax, dword [ebp-4H]                     ; 1320 _ 8B. 45, FC
        shl     eax, 4                                  ; 1323 _ C1. E0, 04
        mov     edx, eax                                ; 1326 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1328 _ 8B. 45, F8
        add     eax, edx                                ; 132B _ 01. D0
        add     eax, cursor.1806                        ; 132D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1332 _ 0F B6. 00
        cmp     al, 79                                  ; 1335 _ 3C, 4F
        jnz near      ?_040                                   ; 1337 _ 75, 17
        mov     eax, dword [ebp-4H]                     ; 1339 _ 8B. 45, FC
        shl     eax, 4                                  ; 133C _ C1. E0, 04
        mov     edx, eax                                ; 133F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1341 _ 8B. 45, F8
        add     eax, edx                                ; 1344 _ 01. D0
        mov     edx, eax                                ; 1346 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1348 _ 8B. 45, 08
        add     eax, edx                                ; 134B _ 01. D0
        mov     byte [eax], 7                           ; 134D _ C6. 00, 07
?_040:  mov     eax, dword [ebp-4H]                     ; 1350 _ 8B. 45, FC
        shl     eax, 4                                  ; 1353 _ C1. E0, 04
        mov     edx, eax                                ; 1356 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1358 _ 8B. 45, F8
        add     eax, edx                                ; 135B _ 01. D0
        add     eax, cursor.1806                        ; 135D _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1362 _ 0F B6. 00
        cmp     al, 46                                  ; 1365 _ 3C, 2E
        jnz near      ?_041                                   ; 1367 _ 75, 1a
        mov     eax, dword [ebp-4H]                     ; 1369 _ 8B. 45, FC
        shl     eax, 4                                  ; 136C _ C1. E0, 04
        mov     edx, eax                                ; 136F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1371 _ 8B. 45, F8
        add     eax, edx                                ; 1374 _ 01. D0
        mov     edx, eax                                ; 1376 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1378 _ 8B. 45, 08
        add     edx, eax                                ; 137B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 137D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1381 _ 88. 02
?_041:  add     dword [ebp-8H], 1                       ; 1383 _ 83. 45, F8, 01
?_042:  cmp     dword [ebp-8H], 15                      ; 1387 _ 83. 7D, F8, 0F
        jle near      ?_038                                   ; 138b _ 0f 8e, ffffff5f
        add     dword [ebp-4H], 1                       ; 1391 _ 83. 45, FC, 01
?_043:  cmp     dword [ebp-4H], 15                      ; 1395 _ 83. 7D, FC, 0F
        jle near      ?_037                                   ; 1399 _ 0f 8e, ffffff45
        leave                                           ; 139F _ C9
        ret                                             ; 13A0 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 13A1 _ 55
        mov     ebp, esp                                ; 13A2 _ 89. E5
        sub     esp, 16                                 ; 13A4 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 13A7 _ C7. 45, FC, 00000000
        jmp     ?_047                                   ; 13AE _ EB, 50

?_044:  mov     dword [ebp-8H], 0                       ; 13B0 _ C7. 45, F8, 00000000
        jmp     ?_046                                   ; 13B7 _ EB, 3B

?_045:  mov     eax, dword [ebp-4H]                     ; 13B9 _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 13BC _ 8B. 55, 1C
        add     eax, edx                                ; 13BF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 13C1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 13C5 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 13C8 _ 8B. 4D, 18
        add     edx, ecx                                ; 13CB _ 01. CA
        add     eax, edx                                ; 13CD _ 01. D0
        mov     edx, eax                                ; 13CF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 13D1 _ 8B. 45, 08
        add     edx, eax                                ; 13D4 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 13D6 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 13D9 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 13DD _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 13DF _ 8B. 45, F8
        add     eax, ecx                                ; 13E2 _ 01. C8
        mov     ecx, eax                                ; 13E4 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 13E6 _ 8B. 45, 20
        add     eax, ecx                                ; 13E9 _ 01. C8
        movzx   eax, byte [eax]                         ; 13EB _ 0F B6. 00
        mov     byte [edx], al                          ; 13EE _ 88. 02
        add     dword [ebp-8H], 1                       ; 13F0 _ 83. 45, F8, 01
?_046:  mov     eax, dword [ebp-8H]                     ; 13F4 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 13F7 _ 3B. 45, 10
        jl      ?_045                                   ; 13FA _ 7C, BD
        add     dword [ebp-4H], 1                       ; 13FC _ 83. 45, FC, 01
?_047:  mov     eax, dword [ebp-4H]                     ; 1400 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 1403 _ 3B. 45, 14
        jl      ?_044                                   ; 1406 _ 7C, A8
        leave                                           ; 1408 _ C9
        ret                                             ; 1409 _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 140A _ 55
        mov     ebp, esp                                ; 140B _ 89. E5
        sub     esp, 40                                 ; 140D _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 1410 _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 1415 _ 89. 45, EC
        movzx   eax, word [?_179]                       ; 1418 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 141F _ 98
        mov     dword [ebp-10H], eax                    ; 1420 _ 89. 45, F0
        movzx   eax, word [?_180]                       ; 1423 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 142A _ 98
        mov     dword [ebp-0CH], eax                    ; 142B _ 89. 45, F4
        mov     dword [esp+4H], 32                      ; 142E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1436 _ C7. 04 24, 00000020
        call    io_out8                                 ; 143D _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 1442 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1446 _ C7. 04 24, 00000060
        call    io_in8                                  ; 144D _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 1452 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1455 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 1459 _ 89. 44 24, 04
        mov     dword [esp], keyinfo                    ; 145D _ C7. 04 24, 00000008(d)
        call    fifo8_put                               ; 1464 _ E8, FFFFFFFC(rel)
        nop                                             ; 1469 _ 90
        leave                                           ; 146A _ C9
        ret                                             ; 146B _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 146C _ 55
        mov     ebp, esp                                ; 146D _ 89. E5
        sub     esp, 4                                  ; 146F _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1472 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1475 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1478 _ 80. 7D, FC, 09
        jle near      ?_048                                   ; 147c _ 7e, 09
        movzx   eax, byte [ebp-4H]                      ; 147E _ 0F B6. 45, FC
        add     eax, 55                                 ; 1482 _ 83. C0, 37
        jmp     ?_049                                   ; 1485 _ EB, 07

?_048:  movzx   eax, byte [ebp-4H]                      ; 1487 _ 0F B6. 45, FC
        add     eax, 48                                 ; 148B _ 83. C0, 30
?_049:  leave                                           ; 148E _ C9
        ret                                             ; 148F _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 1490 _ 55
        mov     ebp, esp                                ; 1491 _ 89. E5
        sub     esp, 24                                 ; 1493 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 1496 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 1499 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 149C _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 14A3 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 14A7 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 14AA _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 14AD _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 14B1 _ 89. 04 24
        call    charToHexVal                            ; 14B4 _ E8, FFFFFFFC(rel)
        mov     byte [?_178], al                        ; 14B9 _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 14BE _ 0F B6. 45, EC
        shr     al, 4                                   ; 14C2 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 14C5 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 14C8 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 14CC _ 0F BE. C0
        mov     dword [esp], eax                        ; 14CF _ 89. 04 24
        call    charToHexVal                            ; 14D2 _ E8, FFFFFFFC(rel)
        mov     byte [?_177], al                        ; 14D7 _ A2, 00000076(d)
        mov     eax, keyval                             ; 14DC _ B8, 00000074(d)
        leave                                           ; 14E1 _ C9
        ret                                             ; 14E2 _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 14E3 _ 55
        mov     ebp, esp                                ; 14E4 _ 89. E5
        sub     esp, 16                                 ; 14E6 _ 83. EC, 10
        mov     byte [str.1854], 48                     ; 14E9 _ C6. 05, 00000368(d), 30
        mov     byte [?_208], 88                        ; 14F0 _ C6. 05, 00000369(d), 58
        mov     byte [?_209], 0                         ; 14F7 _ C6. 05, 00000372(d), 00
        mov     dword [ebp-0CH], 2                      ; 14FE _ C7. 45, F4, 00000002
        jmp     ?_051                                   ; 1505 _ EB, 0F

?_050:  mov     eax, dword [ebp-0CH]                    ; 1507 _ 8B. 45, F4
        add     eax, str.1854                           ; 150A _ 05, 00000368(d)
        mov     byte [eax], 48                          ; 150F _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 1512 _ 83. 45, F4, 01
?_051:  cmp     dword [ebp-0CH], 9                      ; 1516 _ 83. 7D, F4, 09
        jle near      ?_050                                   ; 151a _ 7e, eb
        mov     dword [ebp-8H], 9                       ; 151C _ C7. 45, F8, 00000009
        jmp     ?_055                                   ; 1523 _ EB, 40

?_052:  mov     eax, dword [ebp+8H]                     ; 1525 _ 8B. 45, 08
        and     eax, 0FH                                ; 1528 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 152B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 152E _ 8B. 45, 08
        shr     eax, 4                                  ; 1531 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1534 _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 1537 _ 83. 7D, FC, 09
        jle near      ?_053                                   ; 153b _ 7e, 13
        mov     eax, dword [ebp-4H]                     ; 153D _ 8B. 45, FC
        add     eax, 55                                 ; 1540 _ 83. C0, 37
        mov     edx, dword [ebp-8H]                     ; 1543 _ 8B. 55, F8
        add     edx, str.1854                           ; 1546 _ 81. C2, 00000368(d)
        mov     byte [edx], al                          ; 154C _ 88. 02
        jmp     ?_054                                   ; 154E _ EB, 11

?_053:  mov     eax, dword [ebp-4H]                     ; 1550 _ 8B. 45, FC
        add     eax, 48                                 ; 1553 _ 83. C0, 30
        mov     edx, dword [ebp-8H]                     ; 1556 _ 8B. 55, F8
        add     edx, str.1854                           ; 1559 _ 81. C2, 00000368(d)
        mov     byte [edx], al                          ; 155F _ 88. 02
?_054:  sub     dword [ebp-8H], 1                       ; 1561 _ 83. 6D, F8, 01
?_055:  cmp     dword [ebp-8H], 1                       ; 1565 _ 83. 7D, F8, 01
        jle near      ?_056                                   ; 1569 _ 7e, 06
        cmp     dword [ebp+8H], 0                       ; 156B _ 83. 7D, 08, 00
        jnz near      ?_052                                   ; 156f _ 75, b4
?_056:  mov     eax, str.1854                           ; 1571 _ B8, 00000368(d)
        leave                                           ; 1576 _ C9
        ret                                             ; 1577 _ C3
; intToHexStr End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 1578 _ 55
        mov     ebp, esp                                ; 1579 _ 89. E5
        sub     esp, 24                                 ; 157B _ 83. EC, 18
?_057:  mov     dword [esp], 100                        ; 157E _ C7. 04 24, 00000064
        call    io_in8                                  ; 1585 _ E8, FFFFFFFC(rel)
        and     eax, 02H                                ; 158A _ 83. E0, 02
        test    eax, eax                                ; 158D _ 85. C0
        jnz near      ?_058                                   ; 158f _ 75, 02
        jmp     ?_059                                   ; 1591 _ EB, 02

?_058:  jmp     ?_057                                   ; 1593 _ EB, E9

?_059:  leave                                           ; 1595 _ C9
        ret                                             ; 1596 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 1597 _ 55
        mov     ebp, esp                                ; 1598 _ 89. E5
        sub     esp, 24                                 ; 159A _ 83. EC, 18
        call    wait_KBC_sendready                      ; 159D _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 96                      ; 15A2 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 15AA _ C7. 04 24, 00000064
        call    io_out8                                 ; 15B1 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 15B6 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 71                      ; 15BB _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 15C3 _ C7. 04 24, 00000060
        call    io_out8                                 ; 15CA _ E8, FFFFFFFC(rel)
        nop                                             ; 15CF _ 90
        leave                                           ; 15D0 _ C9
        ret                                             ; 15D1 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 15D2 _ 55
        mov     ebp, esp                                ; 15D3 _ 89. E5
        sub     esp, 24                                 ; 15D5 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 15D8 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 212                     ; 15DD _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 15E5 _ C7. 04 24, 00000064
        call    io_out8                                 ; 15EC _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 15F1 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 244                     ; 15F6 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 15FE _ C7. 04 24, 00000060
        call    io_out8                                 ; 1605 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 160A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 160D _ C6. 40, 03, 00
        nop                                             ; 1611 _ 90
        leave                                           ; 1612 _ C9
        ret                                             ; 1613 _ C3
; enable_mouse End of function

intHandlerForMouse:; Function begin
        push    ebp                                     ; 1614 _ 55
        mov     ebp, esp                                ; 1615 _ 89. E5
        sub     esp, 40                                 ; 1617 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 161A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1622 _ C7. 04 24, 000000A0
        call    io_out8                                 ; 1629 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 32                      ; 162E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1636 _ C7. 04 24, 00000020
        call    io_out8                                 ; 163D _ E8, FFFFFFFC(rel)
        mov     dword [esp], 96                         ; 1642 _ C7. 04 24, 00000060
        call    io_in8                                  ; 1649 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 164E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1651 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1655 _ 89. 44 24, 04
        mov     dword [esp], mouseinfo                  ; 1659 _ C7. 04 24, 00000020(d)
        call    fifo8_put                               ; 1660 _ E8, FFFFFFFC(rel)
        leave                                           ; 1665 _ C9
        ret                                             ; 1666 _ C3
; intHandlerForMouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 1667 _ 55
        mov     ebp, esp                                ; 1668 _ 89. E5
        sub     esp, 4                                  ; 166A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 166D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1670 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1673 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1676 _ 0F B6. 40, 03
        test    al, al                                  ; 167A _ 84. C0
        jnz near      ?_061                                   ; 167c _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 167E _ 80. 7D, FC, FA
        jnz near      ?_060                                   ; 1682 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1684 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1687 _ C6. 40, 03, 01
?_060:  mov     eax, 0                                  ; 168B _ B8, 00000000
        jmp     ?_068                                   ; 1690 _ E9, 0000010F

?_061:  mov     eax, dword [ebp+8H]                     ; 1695 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1698 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 169C _ 3C, 01
        jnz near      ?_063                                   ; 169e _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 16A0 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 16A4 _ 25, 000000C8
        cmp     eax, 8                                  ; 16A9 _ 83. F8, 08
        jnz near      ?_062                                   ; 16ac _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 16AE _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 16B1 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 16B5 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 16B7 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 16BA _ C6. 40, 03, 02
?_062:  mov     eax, 0                                  ; 16BE _ B8, 00000000
        jmp     ?_068                                   ; 16C3 _ E9, 000000DC

?_063:  mov     eax, dword [ebp+8H]                     ; 16C8 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16CB _ 0F B6. 40, 03
        cmp     al, 2                                   ; 16CF _ 3C, 02
        jnz near      ?_064                                   ; 16d1 _ 75, 1b
        mov     eax, dword [ebp+8H]                     ; 16D3 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 16D6 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 16DA _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 16DD _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 16E0 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 16E4 _ B8, 00000000
        jmp     ?_068                                   ; 16E9 _ E9, 000000B6

?_064:  mov     eax, dword [ebp+8H]                     ; 16EE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 16F1 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 16F5 _ 3C, 03
        jne near      ?_067                                   ; 16f7 _ 0f 85, 000000a2
        mov     eax, dword [ebp+8H]                     ; 16FD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 1700 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 1704 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 1707 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 170A _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 170E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1711 _ 0F B6. 00
        movzx   eax, al                                 ; 1714 _ 0F B6. C0
        and     eax, 07H                                ; 1717 _ 83. E0, 07
        mov     edx, eax                                ; 171A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 171C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 171F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1722 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1725 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 1729 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 172C _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 172F _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1732 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1735 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 1739 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 173C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 173F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1742 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1745 _ 0F B6. 00
        movzx   eax, al                                 ; 1748 _ 0F B6. C0
        and     eax, 10H                                ; 174B _ 83. E0, 10
        test    eax, eax                                ; 174E _ 85. C0
        jz near       ?_065                                   ; 1750 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1752 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1755 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1758 _ 0D, FFFFFF00
        mov     edx, eax                                ; 175D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 175F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1762 _ 89. 50, 04
?_065:  mov     eax, dword [ebp+8H]                     ; 1765 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1768 _ 0F B6. 00
        movzx   eax, al                                 ; 176B _ 0F B6. C0
        and     eax, 20H                                ; 176E _ 83. E0, 20
        test    eax, eax                                ; 1771 _ 85. C0
        jz near       ?_066                                   ; 1773 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1775 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1778 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 177B _ 0D, FFFFFF00
        mov     edx, eax                                ; 1780 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1782 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1785 _ 89. 50, 08
?_066:  mov     eax, dword [ebp+8H]                     ; 1788 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 178B _ 8B. 40, 08
        neg     eax                                     ; 178E _ F7. D8
        mov     edx, eax                                ; 1790 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1792 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1795 _ 89. 50, 08
        mov     eax, 1                                  ; 1798 _ B8, 00000001
        jmp     ?_068                                   ; 179D _ EB, 05

?_067:  mov     eax, 4294967295                         ; 179F _ B8, FFFFFFFF
?_068:  leave                                           ; 17A4 _ C9
        ret                                             ; 17A5 _ C3
; mouse_decode End of function

showMemoryInfo:; Function begin
        push    ebp                                     ; 17A6 _ 55
        mov     ebp, esp                                ; 17A7 _ 89. E5
        sub     esp, 72                                 ; 17A9 _ 83. EC, 48
        mov     dword [ebp-28H], 0                      ; 17AC _ C7. 45, D8, 00000000
        mov     dword [ebp-24H], 0                      ; 17B3 _ C7. 45, DC, 00000000
        mov     dword [ebp-20H], 104                    ; 17BA _ C7. 45, E0, 00000068
        mov     dword [ebp-1CH], 80                     ; 17C1 _ C7. 45, E4, 00000050
        mov     edx, dword [ysize]                      ; 17C8 _ 8B. 15, 0000011C(d)
        mov     eax, dword [ebp+0CH]                    ; 17CE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17D1 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 17D3 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 17D7 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 17DA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17DE _ 89. 04 24
        call    init_screen8                            ; 17E1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+20H]                    ; 17E6 _ 8B. 45, 20
        movsx   eax, al                                 ; 17E9 _ 0F BE. C0
        mov     dword [esp+14H], ?_173                  ; 17EC _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 17F4 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 17F8 _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 17FB _ 89. 44 24, 0C
        mov     eax, dword [ebp-28H]                    ; 17FF _ 8B. 45, D8
        mov     dword [esp+8H], eax                     ; 1802 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1806 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1809 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 180D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1810 _ 89. 04 24
        call    showString                              ; 1813 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+18H]                    ; 1818 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 181B _ 89. 04 24
        call    intToHexStr                             ; 181E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 1823 _ 89. 45, E8
        mov     eax, dword [ebp+20H]                    ; 1826 _ 8B. 45, 20
        movsx   eax, al                                 ; 1829 _ 0F BE. C0
        mov     edx, dword [ebp-18H]                    ; 182C _ 8B. 55, E8
        mov     dword [esp+14H], edx                    ; 182F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1833 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 1837 _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 183A _ 89. 44 24, 0C
        mov     eax, dword [ebp-20H]                    ; 183E _ 8B. 45, E0
        mov     dword [esp+8H], eax                     ; 1841 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1845 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1848 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 184C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 184F _ 89. 04 24
        call    showString                              ; 1852 _ E8, FFFFFFFC(rel)
        add     dword [ebp-24H], 16                     ; 1857 _ 83. 45, DC, 10
        mov     eax, dword [ebp+20H]                    ; 185B _ 8B. 45, 20
        movsx   eax, al                                 ; 185E _ 0F BE. C0
        mov     dword [esp+14H], ?_174                  ; 1861 _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 1869 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 186D _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 1870 _ 89. 44 24, 0C
        mov     eax, dword [ebp-28H]                    ; 1874 _ 8B. 45, D8
        mov     dword [esp+8H], eax                     ; 1877 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 187B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 187E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1882 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1885 _ 89. 04 24
        call    showString                              ; 1888 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 188D _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1890 _ 8B. 00
        mov     dword [esp], eax                        ; 1892 _ 89. 04 24
        call    intToHexStr                             ; 1895 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 189A _ 89. 45, EC
        mov     eax, dword [ebp+20H]                    ; 189D _ 8B. 45, 20
        movsx   eax, al                                 ; 18A0 _ 0F BE. C0
        mov     edx, dword [ebp-14H]                    ; 18A3 _ 8B. 55, EC
        mov     dword [esp+14H], edx                    ; 18A6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 18AA _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 18AE _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 18B1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-20H]                    ; 18B5 _ 8B. 45, E0
        mov     dword [esp+8H], eax                     ; 18B8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18BC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18C6 _ 89. 04 24
        call    showString                              ; 18C9 _ E8, FFFFFFFC(rel)
        add     dword [ebp-24H], 16                     ; 18CE _ 83. 45, DC, 10
        mov     eax, dword [ebp+20H]                    ; 18D2 _ 8B. 45, 20
        movsx   eax, al                                 ; 18D5 _ 0F BE. C0
        mov     dword [esp+14H], ?_175                  ; 18D8 _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 18E0 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 18E4 _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 18E7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-28H]                    ; 18EB _ 8B. 45, D8
        mov     dword [esp+8H], eax                     ; 18EE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18F2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18FC _ 89. 04 24
        call    showString                              ; 18FF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1904 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1907 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 190A _ 89. 04 24
        call    intToHexStr                             ; 190D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 1912 _ 89. 45, F0
        mov     eax, dword [ebp+20H]                    ; 1915 _ 8B. 45, 20
        movsx   eax, al                                 ; 1918 _ 0F BE. C0
        mov     edx, dword [ebp-10H]                    ; 191B _ 8B. 55, F0
        mov     dword [esp+14H], edx                    ; 191E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1922 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 1926 _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 1929 _ 89. 44 24, 0C
        mov     eax, dword [ebp-20H]                    ; 192D _ 8B. 45, E0
        mov     dword [esp+8H], eax                     ; 1930 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1934 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1937 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 193B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 193E _ 89. 04 24
        call    showString                              ; 1941 _ E8, FFFFFFFC(rel)
        add     dword [ebp-24H], 16                     ; 1946 _ 83. 45, DC, 10
        mov     eax, dword [ebp+20H]                    ; 194A _ 8B. 45, 20
        movsx   eax, al                                 ; 194D _ 0F BE. C0
        mov     dword [esp+14H], ?_176                  ; 1950 _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 1958 _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 195C _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 195F _ 89. 44 24, 0C
        mov     eax, dword [ebp-28H]                    ; 1963 _ 8B. 45, D8
        mov     dword [esp+8H], eax                     ; 1966 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 196A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 196D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1971 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1974 _ 89. 04 24
        call    showString                              ; 1977 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 197C _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 197F _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1982 _ 89. 04 24
        call    intToHexStr                             ; 1985 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 198A _ 89. 45, F4
        mov     eax, dword [ebp+20H]                    ; 198D _ 8B. 45, 20
        movsx   eax, al                                 ; 1990 _ 0F BE. C0
        mov     edx, dword [ebp-0CH]                    ; 1993 _ 8B. 55, F4
        mov     dword [esp+14H], edx                    ; 1996 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 199A _ 89. 44 24, 10
        mov     eax, dword [ebp-24H]                    ; 199E _ 8B. 45, DC
        mov     dword [esp+0CH], eax                    ; 19A1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-20H]                    ; 19A5 _ 8B. 45, E0
        mov     dword [esp+8H], eax                     ; 19A8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19AC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19AF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19B3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19B6 _ 89. 04 24
        call    showString                              ; 19B9 _ E8, FFFFFFFC(rel)
        leave                                           ; 19BE _ C9
        ret                                             ; 19BF _ C3
; showMemoryInfo End of function

message_box:; Function begin
        push    ebp                                     ; 19C0 _ 55
        mov     ebp, esp                                ; 19C1 _ 89. E5
        sub     esp, 56                                 ; 19C3 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 19C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19C9 _ 89. 04 24
        call    sheet_alloc                             ; 19CC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 19D1 _ 89. 45, F0
        mov     eax, dword [memman]                     ; 19D4 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 19D9 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 19E1 _ 89. 04 24
        call    memman_alloc_4k                         ; 19E4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 19E9 _ 89. 45, F4
        mov     dword [esp+10H], -1                     ; 19EC _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 19F4 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 19FC _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-0CH]                    ; 1A04 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A07 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 1A0B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1A0E _ 89. 04 24
        call    sheet_setbuf                            ; 1A11 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 1A16 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1A19 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 1A1D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1A20 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A24 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A27 _ 89. 04 24
        call    make_window8                            ; 1A2A _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], 7                      ; 1A2F _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1A37 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1A3F _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1A47 _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1A4F _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-10H]                    ; 1A57 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 1A5A _ 89. 04 24
        call    make_textbox8                           ; 1A5D _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 72                     ; 1A62 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 160                     ; 1A6A _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1A72 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1A75 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A79 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A7C _ 89. 04 24
        call    sheet_slide                             ; 1A7F _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], 2                       ; 1A84 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-10H]                    ; 1A8C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1A8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A96 _ 89. 04 24
        call    sheet_updown                            ; 1A99 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1A9E _ 8B. 45, F0
        leave                                           ; 1AA1 _ C9
        ret                                             ; 1AA2 _ C3
; message_box End of function

make_window8:; Function begin
        push    ebp                                     ; 1AA3 _ 55
        mov     ebp, esp                                ; 1AA4 _ 89. E5
        push    ebx                                     ; 1AA6 _ 53
        sub     esp, 68                                 ; 1AA7 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1AAA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AAD _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1AB0 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1AB3 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1AB6 _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1AB9 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1ABC _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1ABF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AC2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AC5 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1AC7 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1ACF _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1AD3 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1ADB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AE3 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1AEB _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1AEE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AF2 _ 89. 04 24
        call    boxfill8                                ; 1AF5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1AFA _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1AFD _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B00 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B03 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1B05 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1B0D _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1B11 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B19 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B21 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-10H]                    ; 1B29 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1B2C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B30 _ 89. 04 24
        call    boxfill8                                ; 1B33 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1B38 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1B3B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B3E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B41 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B43 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1B47 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1B4F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B57 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B5F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1B67 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1B6A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B6E _ 89. 04 24
        call    boxfill8                                ; 1B71 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1B76 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1B79 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B7C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B7F _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B81 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1B85 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1B8D _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B95 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B9D _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-10H]                    ; 1BA5 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1BA8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BAC _ 89. 04 24
        call    boxfill8                                ; 1BAF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BB4 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1BB7 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1BBA _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1BBD _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1BC0 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1BC3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1BC6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BC9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1BCB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1BCF _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1BD3 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1BDB _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1BDF _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-10H]                    ; 1BE7 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1BEA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BEE _ 89. 04 24
        call    boxfill8                                ; 1BF1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BF6 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1BF9 _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1BFC _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1BFF _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1C02 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C05 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C08 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C0B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C0D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C11 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1C15 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1C1D _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1C21 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-10H]                    ; 1C29 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1C2C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C30 _ 89. 04 24
        call    boxfill8                                ; 1C33 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1C38 _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1C3B _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1C3E _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1C41 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C44 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C47 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1C49 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1C4D _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1C51 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1C59 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1C61 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1C69 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1C6C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C70 _ 89. 04 24
        call    boxfill8                                ; 1C73 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1C78 _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1C7B _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1C7E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C81 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1C83 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1C8B _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1C8F _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1C97 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1C9F _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-10H]                    ; 1CA7 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1CAA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CAE _ 89. 04 24
        call    boxfill8                                ; 1CB1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1CB6 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1CB9 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1CBC _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1CBF _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1CC2 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1CC5 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CC8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CCB _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CCD _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CD1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CD5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1CD9 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1CE1 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-10H]                    ; 1CE9 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1CEC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CF0 _ 89. 04 24
        call    boxfill8                                ; 1CF3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1CF8 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1CFB _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1CFE _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1D01 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D04 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D07 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D0A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D0D _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D0F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D13 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D17 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1D1B _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1D23 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-10H]                    ; 1D2B _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1D2E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D32 _ 89. 04 24
        call    boxfill8                                ; 1D35 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1D3A _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1D3D _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1D41 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1D49 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1D51 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1D59 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D5C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D60 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D63 _ 89. 04 24
        call    showString                              ; 1D66 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], 0                      ; 1D6B _ C7. 45, EC, 00000000
        jmp     ?_076                                   ; 1D72 _ E9, 00000083

?_069:  mov     dword [ebp-18H], 0                      ; 1D77 _ C7. 45, E8, 00000000
        jmp     ?_075                                   ; 1D7E _ EB, 70

?_070:  mov     eax, dword [ebp-14H]                    ; 1D80 _ 8B. 45, EC
        shl     eax, 4                                  ; 1D83 _ C1. E0, 04
        mov     edx, eax                                ; 1D86 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1D88 _ 8B. 45, E8
        add     eax, edx                                ; 1D8B _ 01. D0
        add     eax, closebtn.1916                      ; 1D8D _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1D92 _ 0F B6. 00
        mov     byte [ebp-19H], al                      ; 1D95 _ 88. 45, E7
        cmp     byte [ebp-19H], 64                      ; 1D98 _ 80. 7D, E7, 40
        jnz near      ?_071                                   ; 1d9c _ 75, 06
        mov     byte [ebp-19H], 0                       ; 1D9E _ C6. 45, E7, 00
        jmp     ?_074                                   ; 1DA2 _ EB, 1C

?_071:  cmp     byte [ebp-19H], 36                      ; 1DA4 _ 80. 7D, E7, 24
        jnz near      ?_072                                   ; 1da8 _ 75, 06
        mov     byte [ebp-19H], 15                      ; 1DAA _ C6. 45, E7, 0F
        jmp     ?_074                                   ; 1DAE _ EB, 10

?_072:  cmp     byte [ebp-19H], 81                      ; 1DB0 _ 80. 7D, E7, 51
        jnz near      ?_073                                   ; 1db4 _ 75, 06
        mov     byte [ebp-19H], 8                       ; 1DB6 _ C6. 45, E7, 08
        jmp     ?_074                                   ; 1DBA _ EB, 04

?_073:  mov     byte [ebp-19H], 7                       ; 1DBC _ C6. 45, E7, 07
?_074:  mov     eax, dword [ebp+0CH]                    ; 1DC0 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1DC3 _ 8B. 10
        mov     eax, dword [ebp-14H]                    ; 1DC5 _ 8B. 45, EC
        lea     ecx, [eax+5H]                           ; 1DC8 _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1DCB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DCE _ 8B. 40, 04
        imul    ecx, eax                                ; 1DD1 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1DD4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DD7 _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1DDA _ 8D. 58, EB
        mov     eax, dword [ebp-18H]                    ; 1DDD _ 8B. 45, E8
        add     eax, ebx                                ; 1DE0 _ 01. D8
        add     eax, ecx                                ; 1DE2 _ 01. C8
        add     edx, eax                                ; 1DE4 _ 01. C2
        movzx   eax, byte [ebp-19H]                     ; 1DE6 _ 0F B6. 45, E7
        mov     byte [edx], al                          ; 1DEA _ 88. 02
        add     dword [ebp-18H], 1                      ; 1DEC _ 83. 45, E8, 01
?_075:  cmp     dword [ebp-18H], 15                     ; 1DF0 _ 83. 7D, E8, 0F
        jle near      ?_070                                   ; 1df4 _ 7e, 8a
        add     dword [ebp-14H], 1                      ; 1DF6 _ 83. 45, EC, 01
?_076:  cmp     dword [ebp-14H], 13                     ; 1DFA _ 83. 7D, EC, 0D
        jle near      ?_069                                   ; 1dfe _ 0f 8e, ffffff73
        nop                                             ; 1E04 _ 90
        add     esp, 68                                 ; 1E05 _ 83. C4, 44
        pop     ebx                                     ; 1E08 _ 5B
        pop     ebp                                     ; 1E09 _ 5D
        ret                                             ; 1E0A _ C3
; make_window8 End of function

make_textbox8:; Function begin
        push    ebp                                     ; 1E0B _ 55
        mov     ebp, esp                                ; 1E0C _ 89. E5
        push    edi                                     ; 1E0E _ 57
        push    esi                                     ; 1E0F _ 56
        push    ebx                                     ; 1E10 _ 53
        sub     esp, 44                                 ; 1E11 _ 83. EC, 2C
        mov     eax, dword [ebp+14H]                    ; 1E14 _ 8B. 45, 14
        mov     edx, dword [ebp+0CH]                    ; 1E17 _ 8B. 55, 0C
        add     eax, edx                                ; 1E1A _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1E1C _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1E1F _ 8B. 45, 18
        mov     edx, dword [ebp+10H]                    ; 1E22 _ 8B. 55, 10
        add     eax, edx                                ; 1E25 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1E27 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1E2A _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1E2D _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 1E30 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1E33 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1E36 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E39 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E3C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1E3F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1E42 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E45 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E48 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E4B _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E4D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E51 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E55 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E59 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1E5D _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1E65 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E69 _ 89. 04 24
        call    boxfill8                                ; 1E6C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1E71 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1E74 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1E77 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1E7A _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1E7D _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E80 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E83 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E86 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1E89 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E8C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E8F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E92 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E94 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E98 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E9C _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EA0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1EA4 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1EAC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EB0 _ 89. 04 24
        call    boxfill8                                ; 1EB3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1EB8 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1EBB _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1EBE _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1EC1 _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1EC4 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1EC7 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1ECA _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1ECD _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1ED0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1ED3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ED6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1ED9 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1EDB _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EDF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EE3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EE7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1EEB _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1EF3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EF7 _ 89. 04 24
        call    boxfill8                                ; 1EFA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1EFF _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1F02 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1F05 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1F08 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1F0B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F0E _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 1F11 _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1F14 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1F17 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F1A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F1D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F20 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F22 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F26 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F2A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F2E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F32 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F3A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F3E _ 89. 04 24
        call    boxfill8                                ; 1F41 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1F46 _ 8B. 45, 10
        lea     ecx, [eax-2H]                           ; 1F49 _ 8D. 48, FE
        mov     eax, dword [ebp+10H]                    ; 1F4C _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1F4F _ 8D. 70, FE
        mov     eax, dword [ebp+0CH]                    ; 1F52 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1F55 _ 8D. 58, FF
        mov     eax, dword [ebp+8H]                     ; 1F58 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F5B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F61 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1F63 _ 89. 4C 24, 18
        mov     ecx, dword [ebp-14H]                    ; 1F67 _ 8B. 4D, EC
        mov     dword [esp+14H], ecx                    ; 1F6A _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 1F6E _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1F72 _ 89. 5C 24, 0C
        mov     dword [esp+8H], 0                       ; 1F76 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1F7E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F82 _ 89. 04 24
        call    boxfill8                                ; 1F85 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 1F8A _ 8B. 45, 0C
        lea     edi, [eax-2H]                           ; 1F8D _ 8D. 78, FE
        mov     eax, dword [ebp+10H]                    ; 1F90 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1F93 _ 8D. 70, FE
        mov     eax, dword [ebp+0CH]                    ; 1F96 _ 8B. 45, 0C
        lea     ebx, [eax-2H]                           ; 1F99 _ 8D. 58, FE
        mov     eax, dword [ebp+8H]                     ; 1F9C _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F9F _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FA2 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FA5 _ 8B. 00
        mov     ecx, dword [ebp-10H]                    ; 1FA7 _ 8B. 4D, F0
        mov     dword [esp+18H], ecx                    ; 1FAA _ 89. 4C 24, 18
        mov     dword [esp+14H], edi                    ; 1FAE _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 1FB2 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1FB6 _ 89. 5C 24, 0C
        mov     dword [esp+8H], 0                       ; 1FBA _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1FC2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FC6 _ 89. 04 24
        call    boxfill8                                ; 1FC9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1FCE _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1FD1 _ 8D. 48, 01
        mov     eax, dword [ebp-10H]                    ; 1FD4 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1FD7 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1FDA _ 8B. 45, 0C
        lea     ebx, [eax-2H]                           ; 1FDD _ 8D. 58, FE
        mov     eax, dword [ebp+8H]                     ; 1FE0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FE3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FE6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FE9 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1FEB _ 89. 4C 24, 18
        mov     ecx, dword [ebp-14H]                    ; 1FEF _ 8B. 4D, EC
        mov     dword [esp+14H], ecx                    ; 1FF2 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 1FF6 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1FFA _ 89. 5C 24, 0C
        mov     dword [esp+8H], 8                       ; 1FFE _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2006 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 200A _ 89. 04 24
        call    boxfill8                                ; 200D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 2012 _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 2015 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 2018 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 201B _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 201E _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2021 _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 2024 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 2027 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 202A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 202D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2030 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2033 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 2035 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2039 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 203D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2041 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2045 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 204D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2051 _ 89. 04 24
        call    boxfill8                                ; 2054 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 2059 _ 8B. 45, 10
        lea     edi, [eax-1H]                           ; 205C _ 8D. 78, FF
        mov     eax, dword [ebp+0CH]                    ; 205F _ 8B. 45, 0C
        lea     esi, [eax-1H]                           ; 2062 _ 8D. 70, FF
        mov     eax, dword [ebp+1CH]                    ; 2065 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 2068 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 206B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 206E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2071 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2074 _ 8B. 00
        mov     ebx, dword [ebp-10H]                    ; 2076 _ 8B. 5D, F0
        mov     dword [esp+18H], ebx                    ; 2079 _ 89. 5C 24, 18
        mov     ebx, dword [ebp-14H]                    ; 207D _ 8B. 5D, EC
        mov     dword [esp+14H], ebx                    ; 2080 _ 89. 5C 24, 14
        mov     dword [esp+10H], edi                    ; 2084 _ 89. 7C 24, 10
        mov     dword [esp+0CH], esi                    ; 2088 _ 89. 74 24, 0C
        mov     dword [esp+8H], ecx                     ; 208C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 2090 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2094 _ 89. 04 24
        call    boxfill8                                ; 2097 _ E8, FFFFFFFC(rel)
        add     esp, 44                                 ; 209C _ 83. C4, 2C
        pop     ebx                                     ; 209F _ 5B
        pop     esi                                     ; 20A0 _ 5E
        pop     edi                                     ; 20A1 _ 5F
        pop     ebp                                     ; 20A2 _ 5D
        ret                                             ; 20A3 _ C3
; make_textbox8 End of function

memman_init:; Function begin
        push    ebp                                     ; 20A4 _ 55
        mov     ebp, esp                                ; 20A5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 20A7 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 20AA _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 20B0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 20B3 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 20BA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 20BD _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 20C4 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 20C7 _ C7. 40, 0C, 00000000
        pop     ebp                                     ; 20CE _ 5D
        ret                                             ; 20CF _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 20D0 _ 55
        mov     ebp, esp                                ; 20D1 _ 89. E5
        sub     esp, 16                                 ; 20D3 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 20D6 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 20DD _ C7. 45, F8, 00000000
        jmp     ?_078                                   ; 20E4 _ EB, 14

?_077:  mov     eax, dword [ebp+8H]                     ; 20E6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 20E9 _ 8B. 55, F8
        add     edx, 2                                  ; 20EC _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20EF _ 8B. 44 D0, 04
        add     dword [ebp-4H], eax                     ; 20F3 _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 20F6 _ 83. 45, F8, 01
?_078:  mov     eax, dword [ebp+8H]                     ; 20FA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20FD _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 20FF _ 3B. 45, F8
        ja      ?_077                                   ; 2102 _ 77, E2
        mov     eax, dword [ebp-4H]                     ; 2104 _ 8B. 45, FC
        leave                                           ; 2107 _ C9
        ret                                             ; 2108 _ C3
; memman_total End of function

memman_alloc:; Function begin
        push    ebp                                     ; 2109 _ 55
        mov     ebp, esp                                ; 210A _ 89. E5
        sub     esp, 16                                 ; 210C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 210F _ C7. 45, F8, 00000000
        jmp     ?_082                                   ; 2116 _ E9, 00000085

?_079:  mov     eax, dword [ebp+8H]                     ; 211B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 211E _ 8B. 55, F8
        add     edx, 2                                  ; 2121 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2124 _ 8B. 44 D0, 04
        cmp     eax, dword [ebp+0CH]                    ; 2128 _ 3B. 45, 0C
        jc near       ?_081                                   ; 212b _ 72, 6f
        mov     eax, dword [ebp+8H]                     ; 212D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2130 _ 8B. 55, F8
        add     edx, 2                                  ; 2133 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2136 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2139 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 213C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 213F _ 8B. 55, F8
        add     edx, 2                                  ; 2142 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2145 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2148 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 214B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 214E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2151 _ 8B. 55, F8
        add     edx, 2                                  ; 2154 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2157 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 215A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 215D _ 8B. 55, F8
        add     edx, 2                                  ; 2160 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2163 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2167 _ 2B. 45, 0C
        mov     edx, eax                                ; 216A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 216C _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 216F _ 8B. 4D, F8
        add     ecx, 2                                  ; 2172 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2175 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2179 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 217C _ 8B. 55, F8
        add     edx, 2                                  ; 217F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2182 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2186 _ 85. C0
        jnz near      ?_080                                   ; 2188 _ 75, 0d
        mov     eax, dword [ebp+8H]                     ; 218A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 218D _ 8B. 00
        lea     edx, [eax-1H]                           ; 218F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2192 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2195 _ 89. 10
?_080:  mov     eax, dword [ebp-4H]                     ; 2197 _ 8B. 45, FC
        jmp     ?_083                                   ; 219A _ EB, 17

?_081:  add     dword [ebp-8H], 1                       ; 219C _ 83. 45, F8, 01
?_082:  mov     eax, dword [ebp+8H]                     ; 21A0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21A3 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 21A5 _ 3B. 45, F8
        ja      ?_079                                   ; 21A8 _ 0F 87, FFFFFF6D
        mov     eax, 0                                  ; 21AE _ B8, 00000000
?_083:  leave                                           ; 21B3 _ C9
        ret                                             ; 21B4 _ C3
; memman_alloc End of function

memman_free:; Function begin
        push    ebp                                     ; 21B5 _ 55
        mov     ebp, esp                                ; 21B6 _ 89. E5
        push    ebx                                     ; 21B8 _ 53
        sub     esp, 16                                 ; 21B9 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 21BC _ C7. 45, F4, 00000000
        jmp     ?_086                                   ; 21C3 _ EB, 17

?_084:  mov     eax, dword [ebp+8H]                     ; 21C5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 21C8 _ 8B. 55, F4
        add     edx, 2                                  ; 21CB _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 21CE _ 8B. 04 D0
        cmp     eax, dword [ebp+0CH]                    ; 21D1 _ 3B. 45, 0C
        jbe     ?_085                                   ; 21D4 _ 76, 02
        jmp     ?_087                                   ; 21D6 _ EB, 0E

?_085:  add     dword [ebp-0CH], 1                      ; 21D8 _ 83. 45, F4, 01
?_086:  mov     eax, dword [ebp+8H]                     ; 21DC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21DF _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 21E1 _ 3B. 45, F4
        jg  near      ?_084                                   ; 21e4 _ 7f, df
?_087:  cmp     dword [ebp-0CH], 0                      ; 21E6 _ 83. 7D, F4, 00
        jle near      ?_089                                   ; 21ea _ 0f 8e, 000000ba
        mov     eax, dword [ebp-0CH]                    ; 21F0 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21F3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21F6 _ 8B. 45, 08
        add     edx, 2                                  ; 21F9 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 21FC _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 21FF _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2202 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2205 _ 8B. 45, 08
        add     ecx, 2                                  ; 2208 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 220B _ 8B. 44 C8, 04
        add     eax, edx                                ; 220F _ 01. D0
        cmp     eax, dword [ebp+0CH]                    ; 2211 _ 3B. 45, 0C
        jne near      ?_089                                   ; 2214 _ 0f 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 221A _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 221D _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2220 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2223 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        add     edx, 2                                  ; 2229 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 222C _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2230 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2233 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2236 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2239 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 223C _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2240 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2243 _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 2245 _ 3B. 45, F4
        jle near      ?_088                                   ; 2248 _ 7e, 56
        mov     eax, dword [ebp+10H]                    ; 224A _ 8B. 45, 10
        mov     edx, dword [ebp+0CH]                    ; 224D _ 8B. 55, 0C
        lea     ecx, [edx+eax]                          ; 2250 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2253 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2256 _ 8B. 55, F4
        add     edx, 2                                  ; 2259 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 225C _ 8B. 04 D0
        cmp     ecx, eax                                ; 225F _ 39. C1
        jnz near      ?_088                                   ; 2261 _ 75, 3d
        mov     eax, dword [ebp-0CH]                    ; 2263 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2266 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2269 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 226C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 226F _ 8B. 45, 08
        add     edx, 2                                  ; 2272 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2275 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2279 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 227C _ 8B. 4D, F4
        add     ecx, 2                                  ; 227F _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2282 _ 8B. 44 C8, 04
        lea     ecx, [edx+eax]                          ; 2286 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2289 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 228C _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 228F _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2293 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2296 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2298 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 229B _ 8B. 45, 08
        mov     dword [eax], edx                        ; 229E _ 89. 10
?_088:  mov     eax, 0                                  ; 22A0 _ B8, 00000000
        jmp     ?_095                                   ; 22A5 _ E9, 0000011C

?_089:  mov     eax, dword [ebp+8H]                     ; 22AA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 22AD _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 22AF _ 3B. 45, F4
        jle near      ?_090                                   ; 22b2 _ 7e, 52
        mov     eax, dword [ebp+10H]                    ; 22B4 _ 8B. 45, 10
        mov     edx, dword [ebp+0CH]                    ; 22B7 _ 8B. 55, 0C
        lea     ecx, [edx+eax]                          ; 22BA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22BD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 22C0 _ 8B. 55, F4
        add     edx, 2                                  ; 22C3 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 22C6 _ 8B. 04 D0
        cmp     ecx, eax                                ; 22C9 _ 39. C1
        jnz near      ?_090                                   ; 22cb _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 22CD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 22D0 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 22D3 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 22D6 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 22D9 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 22DC _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 22DF _ 8B. 55, F4
        add     edx, 2                                  ; 22E2 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 22E5 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 22E9 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 22EC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 22EF _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 22F2 _ 8B. 55, F4
        add     edx, 2                                  ; 22F5 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 22F8 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 22FC _ B8, 00000000
        jmp     ?_095                                   ; 2301 _ E9, 000000C0

?_090:  mov     eax, dword [ebp+8H]                     ; 2306 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2309 _ 8B. 00
        cmp     eax, 4095                               ; 230B _ 3D, 00000FFF
        jg  near      ?_094                                   ; 2310 _ 0f 8f, 00000087
        mov     eax, dword [ebp+8H]                     ; 2316 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2319 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 231B _ 89. 45, F8
        jmp     ?_092                                   ; 231E _ EB, 28

?_091:  mov     eax, dword [ebp-8H]                     ; 2320 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2323 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2326 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2329 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 232C _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 232F _ 8B. 45, 08
        add     edx, 2                                  ; 2332 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2335 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2338 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 233A _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 233D _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2340 _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2344 _ 83. 6D, F8, 01
?_092:  mov     eax, dword [ebp-8H]                     ; 2348 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 234B _ 3B. 45, F4
        jg  near      ?_091                                   ; 234e _ 7f, d0
        mov     eax, dword [ebp+8H]                     ; 2350 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2353 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2355 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2358 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 235B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 235D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2360 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2363 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2366 _ 8B. 00
        cmp     edx, eax                                ; 2368 _ 39. C2
        jge near      ?_093                                   ; 236a _ 7d, 0b
        mov     eax, dword [ebp+8H]                     ; 236C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 236F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2371 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2374 _ 89. 50, 04
?_093:  mov     eax, dword [ebp+8H]                     ; 2377 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 237A _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 237D _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2380 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2383 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2386 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2389 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 238C _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 238F _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2392 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2396 _ B8, 00000000
        jmp     ?_095                                   ; 239B _ EB, 29

?_094:  mov     eax, dword [ebp+8H]                     ; 239D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 23A0 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 23A3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23A6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 23A9 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 23AC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 23AF _ 8B. 40, 08
        mov     edx, eax                                ; 23B2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 23B4 _ 8B. 45, 10
        add     eax, edx                                ; 23B7 _ 01. D0
        mov     edx, eax                                ; 23B9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 23BB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 23BE _ 89. 50, 08
        mov     eax, 4294967295                         ; 23C1 _ B8, FFFFFFFF
?_095:  add     esp, 16                                 ; 23C6 _ 83. C4, 10
        pop     ebx                                     ; 23C9 _ 5B
        pop     ebp                                     ; 23CA _ 5D
        ret                                             ; 23CB _ C3
; memman_free End of function

memman_alloc_4k:; Function begin
        push    ebp                                     ; 23CC _ 55
        mov     ebp, esp                                ; 23CD _ 89. E5
        sub     esp, 24                                 ; 23CF _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 23D2 _ 8B. 45, 0C
        add     eax, 4095                               ; 23D5 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 23DA _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 23DF _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 23E2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 23E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23EC _ 89. 04 24
        call    memman_alloc                            ; 23EF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4H], eax                     ; 23F4 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 23F7 _ 8B. 45, FC
        leave                                           ; 23FA _ C9
        ret                                             ; 23FB _ C3
; memman_alloc_4k End of function

memman_free_4k:; Function begin
        push    ebp                                     ; 23FC _ 55
        mov     ebp, esp                                ; 23FD _ 89. E5
        sub     esp, 28                                 ; 23FF _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2402 _ 8B. 45, 10
        add     eax, 4095                               ; 2405 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 240A _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 240F _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2412 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2415 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2419 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 241C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2420 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2423 _ 89. 04 24
        call    memman_free                             ; 2426 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4H], eax                     ; 242B _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 242E _ 8B. 45, FC
        leave                                           ; 2431 _ C9
        ret                                             ; 2432 _ C3
; memman_free_4k End of function

shtctl_init:; Function begin
        push    ebp                                     ; 2433 _ 55
        mov     ebp, esp                                ; 2434 _ 89. E5
        sub     esp, 40                                 ; 2436 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 2439 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 2441 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2444 _ 89. 04 24
        call    memman_alloc_4k                         ; 2447 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 244C _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 244F _ 83. 7D, F4, 00
        jnz near      ?_096                                   ; 2453 _ 75, 0a
        mov     eax, 0                                  ; 2455 _ B8, 00000000
        jmp     ?_100                                   ; 245A _ E9, 0000009D

?_096:  mov     eax, dword [ebp+10H]                    ; 245F _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 2462 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2466 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 246A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 246D _ 89. 04 24
        call    memman_alloc_4k                         ; 2470 _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 2475 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2477 _ 8B. 45, F4
        mov     dword [eax+4H], edx                     ; 247A _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 247D _ 8B. 45, F4
        mov     eax, dword [eax+4H]                     ; 2480 _ 8B. 40, 04
        test    eax, eax                                ; 2483 _ 85. C0
        jnz near      ?_097                                   ; 2485 _ 75, 21
        mov     eax, dword [ebp-0CH]                    ; 2487 _ 8B. 45, F4
        mov     dword [esp+8H], 9232                    ; 248A _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 2492 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2496 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2499 _ 89. 04 24
        call    memman_free_4k                          ; 249C _ E8, FFFFFFFC(rel)
        mov     eax, 0                                  ; 24A1 _ B8, 00000000
        jmp     ?_100                                   ; 24A6 _ EB, 54

?_097:  mov     eax, dword [ebp-0CH]                    ; 24A8 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 24AB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 24AE _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 24B0 _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 24B3 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 24B6 _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 24B9 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 24BC _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 24BF _ 89. 50, 0C
        mov     eax, dword [ebp-0CH]                    ; 24C2 _ 8B. 45, F4
        mov     dword [eax+10H], -1                     ; 24C5 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 24CC _ C7. 45, F0, 00000000
        jmp     ?_099                                   ; 24D3 _ EB, 1B

?_098:  mov     eax, dword [ebp-0CH]                    ; 24D5 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 24D8 _ 8B. 55, F0
        add     edx, 33                                 ; 24DB _ 83. C2, 21
        shl     edx, 5                                  ; 24DE _ C1. E2, 05
        add     eax, edx                                ; 24E1 _ 01. D0
        add     eax, 16                                 ; 24E3 _ 83. C0, 10
        mov     dword [eax], 0                          ; 24E6 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 24EC _ 83. 45, F0, 01
?_099:  cmp     dword [ebp-10H], 255                    ; 24F0 _ 81. 7D, F0, 000000FF
        jle near      ?_098                                   ; 24f7 _ 7e, dc
        mov     eax, dword [ebp-0CH]                    ; 24F9 _ 8B. 45, F4
?_100:  leave                                           ; 24FC _ C9
        ret                                             ; 24FD _ C3
; shtctl_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 24FE _ 55
        mov     ebp, esp                                ; 24FF _ 89. E5
        sub     esp, 16                                 ; 2501 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2504 _ C7. 45, F8, 00000000
        jmp     ?_103                                   ; 250B _ EB, 5B

?_101:  mov     eax, dword [ebp+8H]                     ; 250D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2510 _ 8B. 55, F8
        add     edx, 33                                 ; 2513 _ 83. C2, 21
        shl     edx, 5                                  ; 2516 _ C1. E2, 05
        add     eax, edx                                ; 2519 _ 01. D0
        add     eax, 16                                 ; 251B _ 83. C0, 10
        mov     eax, dword [eax]                        ; 251E _ 8B. 00
        test    eax, eax                                ; 2520 _ 85. C0
        jnz near      ?_102                                   ; 2522 _ 75, 40
        mov     eax, dword [ebp-8H]                     ; 2524 _ 8B. 45, F8
        shl     eax, 5                                  ; 2527 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 252A _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2530 _ 8B. 45, 08
        add     eax, edx                                ; 2533 _ 01. D0
        add     eax, 4                                  ; 2535 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 2538 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 253B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 253E _ 8B. 55, F8
        lea     ecx, [edx+4H]                           ; 2541 _ 8D. 4A, 04
        mov     edx, dword [ebp-4H]                     ; 2544 _ 8B. 55, FC
        mov     dword [eax+ecx*4+4H], edx               ; 2547 _ 89. 54 88, 04
        mov     eax, dword [ebp-4H]                     ; 254B _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 254E _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 2555 _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 2558 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 255F _ 8B. 45, FC
        jmp     ?_104                                   ; 2562 _ EB, 12

?_102:  add     dword [ebp-8H], 1                       ; 2564 _ 83. 45, F8, 01
?_103:  cmp     dword [ebp-8H], 255                     ; 2568 _ 81. 7D, F8, 000000FF
        jle near      ?_101                                   ; 256f _ 7e, 9c
        mov     eax, 0                                  ; 2571 _ B8, 00000000
?_104:  leave                                           ; 2576 _ C9
        ret                                             ; 2577 _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 2578 _ 55
        mov     ebp, esp                                ; 2579 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 257B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 257E _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2581 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2586 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2589 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 258C _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 258F _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 2592 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2595 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2598 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 259B _ 89. 50, 14
        nop                                             ; 259E _ 90
        pop     ebp                                     ; 259F _ 5D
        ret                                             ; 25A0 _ C3
; sheet_setbuf End of function

sheet_updown:; Function begin
        push    ebp                                     ; 25A1 _ 55
        mov     ebp, esp                                ; 25A2 _ 89. E5
        push    edi                                     ; 25A4 _ 57
        push    esi                                     ; 25A5 _ 56
        push    ebx                                     ; 25A6 _ 53
        sub     esp, 60                                 ; 25A7 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 25AA _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 25AD _ 8B. 40, 18
        mov     dword [ebp-1CH], eax                    ; 25B0 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 25B3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25B6 _ 8B. 40, 10
        add     eax, 1                                  ; 25B9 _ 83. C0, 01
        cmp     eax, dword [ebp+10H]                    ; 25BC _ 3B. 45, 10
        jge near      ?_105                                   ; 25bf _ 7d, 0c
        mov     eax, dword [ebp+8H]                     ; 25C1 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 25C4 _ 8B. 40, 10
        add     eax, 1                                  ; 25C7 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 25CA _ 89. 45, 10
?_105:  cmp     dword [ebp+10H], -1                     ; 25CD _ 83. 7D, 10, FF
        jge near      ?_106                                   ; 25d1 _ 7d, 07
        mov     dword [ebp+10H], -1                     ; 25D3 _ C7. 45, 10, FFFFFFFF
?_106:  mov     eax, dword [ebp+0CH]                    ; 25DA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 25DD _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 25E0 _ 89. 50, 18
        mov     eax, dword [ebp-1CH]                    ; 25E3 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 25E6 _ 3B. 45, 10
        jle near      ?_113                                   ; 25e9 _ 0f 8e, 00000212
        cmp     dword [ebp+10H], 0                      ; 25EF _ 83. 7D, 10, 00
        js near       ?_109                                   ; 25f3 _ 0f 88, 000000fe
        mov     eax, dword [ebp-1CH]                    ; 25F9 _ 8B. 45, E4
        mov     dword [ebp-20H], eax                    ; 25FC _ 89. 45, E0
        jmp     ?_108                                   ; 25FF _ EB, 34

?_107:  mov     eax, dword [ebp-20H]                    ; 2601 _ 8B. 45, E0
        lea     edx, [eax-1H]                           ; 2604 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2607 _ 8B. 45, 08
        add     edx, 4                                  ; 260A _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 260D _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2611 _ 8B. 45, 08
        mov     ecx, dword [ebp-20H]                    ; 2614 _ 8B. 4D, E0
        add     ecx, 4                                  ; 2617 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 261A _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 261E _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 2621 _ 8B. 55, E0
        add     edx, 4                                  ; 2624 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2627 _ 8B. 44 90, 04
        mov     edx, dword [ebp-20H]                    ; 262B _ 8B. 55, E0
        mov     dword [eax+18H], edx                    ; 262E _ 89. 50, 18
        sub     dword [ebp-20H], 1                      ; 2631 _ 83. 6D, E0, 01
?_108:  mov     eax, dword [ebp-20H]                    ; 2635 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2638 _ 3B. 45, 10
        jg  near      ?_107                                   ; 263b _ 7f, c4
        mov     eax, dword [ebp+8H]                     ; 263D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2640 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 2643 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2646 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2649 _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 264D _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2650 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2653 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2656 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2659 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 265C _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 265F _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2662 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2665 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2668 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 266B _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 266E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2671 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2674 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2677 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 267A _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 267D _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2681 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2685 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2689 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 268D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2691 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2694 _ 89. 04 24
        call    sheet_refreshmap                        ; 2697 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 269C _ 8B. 45, 10
        lea     edi, [eax+1H]                           ; 269F _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 26A2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26A5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26A8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 26AB _ 8B. 40, 08
        lea     esi, [edx+eax]                          ; 26AE _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 26B1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 26B4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26B7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 26BA _ 8B. 40, 04
        lea     ebx, [edx+eax]                          ; 26BD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 26C0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 26C3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26C6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26C9 _ 8B. 40, 0C
        mov     ecx, dword [ebp-1CH]                    ; 26CC _ 8B. 4D, E4
        mov     dword [esp+18H], ecx                    ; 26CF _ 89. 4C 24, 18
        mov     dword [esp+14H], edi                    ; 26D3 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 26D7 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 26DB _ 89. 5C 24, 0C
        mov     dword [esp+8H], edx                     ; 26DF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 26E3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26E7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26EA _ 89. 04 24
        call    sheet_refreshsub                        ; 26ED _ E8, FFFFFFFC(rel)
        jmp     ?_120                                   ; 26F2 _ E9, 0000027D

?_109:  mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 26FA _ 8B. 40, 10
        cmp     eax, dword [ebp-1CH]                    ; 26FD _ 3B. 45, E4
        jle near      ?_112                                   ; 2700 _ 7e, 47
        mov     eax, dword [ebp-1CH]                    ; 2702 _ 8B. 45, E4
        mov     dword [ebp-20H], eax                    ; 2705 _ 89. 45, E0
        jmp     ?_111                                   ; 2708 _ EB, 34

?_110:  mov     eax, dword [ebp-20H]                    ; 270A _ 8B. 45, E0
        lea     edx, [eax+1H]                           ; 270D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2710 _ 8B. 45, 08
        add     edx, 4                                  ; 2713 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2716 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 271A _ 8B. 45, 08
        mov     ecx, dword [ebp-20H]                    ; 271D _ 8B. 4D, E0
        add     ecx, 4                                  ; 2720 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2723 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2727 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 272A _ 8B. 55, E0
        add     edx, 4                                  ; 272D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2730 _ 8B. 44 90, 04
        mov     edx, dword [ebp-20H]                    ; 2734 _ 8B. 55, E0
        mov     dword [eax+18H], edx                    ; 2737 _ 89. 50, 18
        add     dword [ebp-20H], 1                      ; 273A _ 83. 45, E0, 01
?_111:  mov     eax, dword [ebp+8H]                     ; 273E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2741 _ 8B. 40, 10
        cmp     eax, dword [ebp-20H]                    ; 2744 _ 3B. 45, E0
        jg  near      ?_110                                   ; 2747 _ 7f, c1
?_112:  mov     eax, dword [ebp+8H]                     ; 2749 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 274C _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 274F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2752 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2755 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2758 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 275B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 275E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2761 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2764 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2767 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 276A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 276D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2770 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2773 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2776 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2779 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 277C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 277F _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 2782 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 278A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 278E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2792 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2796 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 279A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 279D _ 89. 04 24
        call    sheet_refreshmap                        ; 27A0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-1CH]                    ; 27A5 _ 8B. 45, E4
        lea     esi, [eax-1H]                           ; 27A8 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 27AB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27AE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27B1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 27B4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 27B7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 27BA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 27BD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 27C0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 27C3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 27C6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 27C9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 27CC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 27CF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 27D2 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 27D5 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 27D9 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 27E1 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 27E5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 27E9 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 27ED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27F1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27F4 _ 89. 04 24
        call    sheet_refreshsub                        ; 27F7 _ E8, FFFFFFFC(rel)
        jmp     ?_120                                   ; 27FC _ E9, 00000173

?_113:  mov     eax, dword [ebp-1CH]                    ; 2801 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2804 _ 3B. 45, 10
        jge near      ?_120                                   ; 2807 _ 0f 8d, 00000167
        cmp     dword [ebp-1CH], 0                      ; 280D _ 83. 7D, E4, 00
        js near       ?_116                                   ; 2811 _ 78, 56
        mov     eax, dword [ebp-1CH]                    ; 2813 _ 8B. 45, E4
        mov     dword [ebp-20H], eax                    ; 2816 _ 89. 45, E0
        jmp     ?_115                                   ; 2819 _ EB, 34

?_114:  mov     eax, dword [ebp-20H]                    ; 281B _ 8B. 45, E0
        lea     edx, [eax+1H]                           ; 281E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2821 _ 8B. 45, 08
        add     edx, 4                                  ; 2824 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2827 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 282B _ 8B. 45, 08
        mov     ecx, dword [ebp-20H]                    ; 282E _ 8B. 4D, E0
        add     ecx, 4                                  ; 2831 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 2834 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 2838 _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 283B _ 8B. 55, E0
        add     edx, 4                                  ; 283E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2841 _ 8B. 44 90, 04
        mov     edx, dword [ebp-20H]                    ; 2845 _ 8B. 55, E0
        mov     dword [eax+18H], edx                    ; 2848 _ 89. 50, 18
        add     dword [ebp-20H], 1                      ; 284B _ 83. 45, E0, 01
?_115:  mov     eax, dword [ebp-20H]                    ; 284F _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2852 _ 3B. 45, 10
        jl      ?_114                                   ; 2855 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2857 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 285A _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 285D _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 2860 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 2863 _ 89. 54 88, 04
        jmp     ?_119                                   ; 2867 _ EB, 6C

?_116:  mov     eax, dword [ebp+8H]                     ; 2869 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 286C _ 8B. 40, 10
        mov     dword [ebp-20H], eax                    ; 286F _ 89. 45, E0
        jmp     ?_118                                   ; 2872 _ EB, 3A

?_117:  mov     eax, dword [ebp-20H]                    ; 2874 _ 8B. 45, E0
        lea     ecx, [eax+1H]                           ; 2877 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 287A _ 8B. 45, 08
        mov     edx, dword [ebp-20H]                    ; 287D _ 8B. 55, E0
        add     edx, 4                                  ; 2880 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 2883 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 2887 _ 8B. 45, 08
        add     ecx, 4                                  ; 288A _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 288D _ 89. 54 88, 04
        mov     eax, dword [ebp-20H]                    ; 2891 _ 8B. 45, E0
        lea     edx, [eax+1H]                           ; 2894 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2897 _ 8B. 45, 08
        add     edx, 4                                  ; 289A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 289D _ 8B. 44 90, 04
        mov     edx, dword [ebp-20H]                    ; 28A1 _ 8B. 55, E0
        add     edx, 1                                  ; 28A4 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 28A7 _ 89. 50, 18
        sub     dword [ebp-20H], 1                      ; 28AA _ 83. 6D, E0, 01
?_118:  mov     eax, dword [ebp-20H]                    ; 28AE _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 28B1 _ 3B. 45, 10
        jge near      ?_117                                   ; 28b4 _ 7d, be
        mov     eax, dword [ebp+8H]                     ; 28B6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 28B9 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 28BC _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 28BF _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 28C2 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 28C6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28C9 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 28CC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28CF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28D2 _ 89. 50, 10
?_119:  mov     eax, dword [ebp+0CH]                    ; 28D5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28D8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28DB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 28DE _ 8B. 40, 08
        lea     esi, [edx+eax]                          ; 28E1 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 28E4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 28E7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 28EA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 28ED _ 8B. 40, 04
        lea     ebx, [edx+eax]                          ; 28F0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 28F3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 28F6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 28F9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 28FC _ 8B. 40, 0C
        mov     ecx, dword [ebp+10H]                    ; 28FF _ 8B. 4D, 10
        mov     dword [esp+14H], ecx                    ; 2902 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 2906 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 290A _ 89. 5C 24, 0C
        mov     dword [esp+8H], edx                     ; 290E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2912 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2916 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2919 _ 89. 04 24
        call    sheet_refreshmap                        ; 291C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 2921 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2924 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2927 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 292A _ 8B. 40, 08
        lea     esi, [edx+eax]                          ; 292D _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 2930 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2933 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2936 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2939 _ 8B. 40, 04
        lea     ebx, [edx+eax]                          ; 293C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 293F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2942 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2945 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2948 _ 8B. 40, 0C
        mov     ecx, dword [ebp+10H]                    ; 294B _ 8B. 4D, 10
        mov     dword [esp+18H], ecx                    ; 294E _ 89. 4C 24, 18
        mov     ecx, dword [ebp+10H]                    ; 2952 _ 8B. 4D, 10
        mov     dword [esp+14H], ecx                    ; 2955 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 2959 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 295D _ 89. 5C 24, 0C
        mov     dword [esp+8H], edx                     ; 2961 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2965 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2969 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 296C _ 89. 04 24
        call    sheet_refreshsub                        ; 296F _ E8, FFFFFFFC(rel)
?_120:  add     esp, 60                                 ; 2974 _ 83. C4, 3C
        pop     ebx                                     ; 2977 _ 5B
        pop     esi                                     ; 2978 _ 5E
        pop     edi                                     ; 2979 _ 5F
        pop     ebp                                     ; 297A _ 5D
        ret                                             ; 297B _ C3
; sheet_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 297C _ 55
        mov     ebp, esp                                ; 297D _ 89. E5
        push    edi                                     ; 297F _ 57
        push    esi                                     ; 2980 _ 56
        push    ebx                                     ; 2981 _ 53
        sub     esp, 44                                 ; 2982 _ 83. EC, 2C
        mov     eax, dword [ebp+0CH]                    ; 2985 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2988 _ 8B. 40, 18
        test    eax, eax                                ; 298B _ 85. C0
        js near       ?_121                                   ; 298d _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 298F _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2992 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2995 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2998 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 299B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 299E _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 29A1 _ 8B. 45, 1C
        lea     edi, [edx+eax]                          ; 29A4 _ 8D. 3C 02
        mov     eax, dword [ebp+0CH]                    ; 29A7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 29AA _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 29AD _ 8B. 45, 18
        lea     esi, [edx+eax]                          ; 29B0 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 29B3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 29B6 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 29B9 _ 8B. 45, 14
        add     edx, eax                                ; 29BC _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 29BE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 29C1 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 29C4 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 29C7 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 29CA _ 03. 45, E4
        mov     dword [esp+18H], ebx                    ; 29CD _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 29D1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edi                    ; 29D5 _ 89. 7C 24, 10
        mov     dword [esp+0CH], esi                    ; 29D9 _ 89. 74 24, 0C
        mov     dword [esp+8H], edx                     ; 29DD _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 29E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 29E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 29E8 _ 89. 04 24
        call    sheet_refreshsub                        ; 29EB _ E8, FFFFFFFC(rel)
?_121:  mov     eax, 0                                  ; 29F0 _ B8, 00000000
        add     esp, 44                                 ; 29F5 _ 83. C4, 2C
        pop     ebx                                     ; 29F8 _ 5B
        pop     esi                                     ; 29F9 _ 5E
        pop     edi                                     ; 29FA _ 5F
        pop     ebp                                     ; 29FB _ 5D
        ret                                             ; 29FC _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 29FD _ 55
        mov     ebp, esp                                ; 29FE _ 89. E5
        push    esi                                     ; 2A00 _ 56
        push    ebx                                     ; 2A01 _ 53
        sub     esp, 48                                 ; 2A02 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2A05 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2A08 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 2A0B _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2A0E _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 2A11 _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 2A14 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2A17 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2A1A _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2A1D _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2A20 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2A23 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2A26 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2A29 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A2C _ 8B. 40, 18
        test    eax, eax                                ; 2A2F _ 85. C0
        js near       ?_122                                   ; 2a31 _ 0f 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2A37 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2A3A _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2A3D _ 8B. 45, F4
        add     edx, eax                                ; 2A40 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2A42 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2A45 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 2A48 _ 8B. 45, F0
        add     eax, ecx                                ; 2A4B _ 01. C8
        mov     dword [esp+14H], 0                      ; 2A4D _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2A55 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2A59 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2A5D _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2A60 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 2A64 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2A67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2A6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2A6E _ 89. 04 24
        call    sheet_refreshmap                        ; 2A71 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 2A76 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2A79 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 2A7C _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 2A7F _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 2A82 _ 8B. 55, 14
        add     ecx, edx                                ; 2A85 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 2A87 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 2A8A _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 2A8D _ 8B. 55, 10
        add     edx, ebx                                ; 2A90 _ 01. DA
        mov     dword [esp+14H], eax                    ; 2A92 _ 89. 44 24, 14
        mov     dword [esp+10H], ecx                    ; 2A96 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 2A9A _ 89. 54 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2A9E _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2AA1 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2AA5 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2AA8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AAC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AAF _ 89. 04 24
        call    sheet_refreshmap                        ; 2AB2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 2AB7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2ABA _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2ABD _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 2AC0 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2AC3 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 2AC6 _ 8B. 45, F4
        add     edx, eax                                ; 2AC9 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2ACB _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2ACE _ 8B. 58, 04
        mov     eax, dword [ebp-10H]                    ; 2AD1 _ 8B. 45, F0
        add     eax, ebx                                ; 2AD4 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2AD6 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2ADA _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2AE2 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2AE6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 2AEA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 2AED _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 2AF1 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 2AF4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2AF8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2AFB _ 89. 04 24
        call    sheet_refreshsub                        ; 2AFE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 2B03 _ 8B. 45, 0C
        mov     edx, dword [eax+18H]                    ; 2B06 _ 8B. 50, 18
        mov     eax, dword [ebp+0CH]                    ; 2B09 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2B0C _ 8B. 40, 18
        mov     ecx, dword [ebp+0CH]                    ; 2B0F _ 8B. 4D, 0C
        mov     ebx, dword [ecx+8H]                     ; 2B12 _ 8B. 59, 08
        mov     ecx, dword [ebp+14H]                    ; 2B15 _ 8B. 4D, 14
        add     ebx, ecx                                ; 2B18 _ 01. CB
        mov     ecx, dword [ebp+0CH]                    ; 2B1A _ 8B. 4D, 0C
        mov     esi, dword [ecx+4H]                     ; 2B1D _ 8B. 71, 04
        mov     ecx, dword [ebp+10H]                    ; 2B20 _ 8B. 4D, 10
        add     ecx, esi                                ; 2B23 _ 01. F1
        mov     dword [esp+18H], edx                    ; 2B25 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 2B29 _ 89. 44 24, 14
        mov     dword [esp+10H], ebx                    ; 2B2D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2B31 _ 89. 4C 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2B35 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2B38 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2B3C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2B3F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2B43 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2B46 _ 89. 04 24
        call    sheet_refreshsub                        ; 2B49 _ E8, FFFFFFFC(rel)
?_122:  add     esp, 48                                 ; 2B4E _ 83. C4, 30
        pop     ebx                                     ; 2B51 _ 5B
        pop     esi                                     ; 2B52 _ 5E
        pop     ebp                                     ; 2B53 _ 5D
        ret                                             ; 2B54 _ C3
; sheet_slide End of function

sheet_refreshsub:; Function begin
        push    ebp                                     ; 2B55 _ 55
        mov     ebp, esp                                ; 2B56 _ 89. E5
        sub     esp, 48                                 ; 2B58 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2B5B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B5E _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 2B60 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 2B63 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2B66 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2B69 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2B6C _ 83. 7D, 0C, 00
        jns     ?_123                                   ; 2B70 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2B72 _ C7. 45, 0C, 00000000
?_123:  cmp     dword [ebp+10H], 8                      ; 2B79 _ 83. 7D, 10, 08
        jg  near      ?_124                                   ; 2b7d _ 7f, 07
        mov     dword [ebp+10H], 0                      ; 2B7F _ C7. 45, 10, 00000000
?_124:  mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B89 _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 2B8C _ 3B. 45, 14
        jge near      ?_125                                   ; 2b8f _ 7d, 09
        mov     eax, dword [ebp+8H]                     ; 2B91 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B94 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2B97 _ 89. 45, 14
?_125:  mov     eax, dword [ebp+8H]                     ; 2B9A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B9D _ 8B. 40, 0C
        cmp     eax, dword [ebp+18H]                    ; 2BA0 _ 3B. 45, 18
        jge near      ?_126                                   ; 2ba3 _ 7d, 09
        mov     eax, dword [ebp+8H]                     ; 2BA5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BA8 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2BAB _ 89. 45, 18
?_126:  mov     eax, dword [ebp+1CH]                    ; 2BAE _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 2BB1 _ 89. 45, DC
        jmp     ?_133                                   ; 2BB4 _ E9, 00000119

?_127:  mov     eax, dword [ebp+8H]                     ; 2BB9 _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 2BBC _ 8B. 55, DC
        add     edx, 4                                  ; 2BBF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2BC2 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2BC6 _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 2BC9 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2BCC _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2BCE _ 89. 45, F4
        mov     edx, dword [ebp-10H]                    ; 2BD1 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 2BD4 _ 8B. 45, 08
        add     eax, 1044                               ; 2BD7 _ 05, 00000414
        sub     edx, eax                                ; 2BDC _ 29. C2
        mov     eax, edx                                ; 2BDE _ 89. D0
        sar     eax, 5                                  ; 2BE0 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 2BE3 _ 88. 45, DA
        mov     dword [ebp-1CH], 0                      ; 2BE6 _ C7. 45, E4, 00000000
        jmp     ?_132                                   ; 2BED _ E9, 000000CD

?_128:  mov     eax, dword [ebp-10H]                    ; 2BF2 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2BF5 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 2BF8 _ 8B. 45, E4
        add     eax, edx                                ; 2BFB _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2BFD _ 89. 45, F8
        mov     dword [ebp-20H], 0                      ; 2C00 _ C7. 45, E0, 00000000
        jmp     ?_131                                   ; 2C07 _ E9, 000000A0

?_129:  mov     eax, dword [ebp-10H]                    ; 2C0C _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2C0F _ 8B. 50, 0C
        mov     eax, dword [ebp-20H]                    ; 2C12 _ 8B. 45, E0
        add     eax, edx                                ; 2C15 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2C17 _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 2C1A _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 2C1D _ 3B. 45, FC
        jg  near      ?_130                                   ; 2c20 _ 0f 8f, 00000082
        mov     eax, dword [ebp-4H]                     ; 2C26 _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 2C29 _ 3B. 45, 14
        jge near      ?_130                                   ; 2c2c _ 7d, 7a
        mov     eax, dword [ebp+10H]                    ; 2C2E _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 2C31 _ 3B. 45, F8
        jg  near      ?_130                                   ; 2c34 _ 7f, 72
        mov     eax, dword [ebp-8H]                     ; 2C36 _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 2C39 _ 3B. 45, 18
        jge near      ?_130                                   ; 2c3c _ 7d, 6a
        mov     eax, dword [ebp-10H]                    ; 2C3E _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2C41 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 2C44 _ 0F AF. 45, E4
        mov     edx, eax                                ; 2C48 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2C4A _ 8B. 45, E0
        add     eax, edx                                ; 2C4D _ 01. D0
        mov     edx, eax                                ; 2C4F _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2C51 _ 8B. 45, F4
        add     eax, edx                                ; 2C54 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C56 _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 2C59 _ 88. 45, DB
        mov     eax, dword [ebp+8H]                     ; 2C5C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C5F _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2C62 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2C66 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2C68 _ 8B. 45, FC
        add     eax, edx                                ; 2C6B _ 01. D0
        mov     edx, eax                                ; 2C6D _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2C6F _ 8B. 45, EC
        add     eax, edx                                ; 2C72 _ 01. D0
        movzx   eax, byte [eax]                         ; 2C74 _ 0F B6. 00
        cmp     al, byte [ebp-26H]                      ; 2C77 _ 3A. 45, DA
        jnz near      ?_130                                   ; 2c7a _ 75, 2c
        movzx   edx, byte [ebp-25H]                     ; 2C7C _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 2C80 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2C83 _ 8B. 40, 14
        cmp     edx, eax                                ; 2C86 _ 39. C2
        jz near       ?_130                                   ; 2c88 _ 74, 1e
        mov     eax, dword [ebp+8H]                     ; 2C8A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2C8D _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2C90 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2C94 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2C96 _ 8B. 45, FC
        add     eax, edx                                ; 2C99 _ 01. D0
        mov     edx, eax                                ; 2C9B _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 2C9D _ 8B. 45, E8
        add     edx, eax                                ; 2CA0 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2CA2 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2CA6 _ 88. 02
?_130:  add     dword [ebp-20H], 1                      ; 2CA8 _ 83. 45, E0, 01
?_131:  mov     eax, dword [ebp-10H]                    ; 2CAC _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2CAF _ 8B. 40, 04
        cmp     eax, dword [ebp-20H]                    ; 2CB2 _ 3B. 45, E0
        jg  near      ?_129                                   ; 2cb5 _ 0f 8f, ffffff51
        add     dword [ebp-1CH], 1                      ; 2CBB _ 83. 45, E4, 01
?_132:  mov     eax, dword [ebp-10H]                    ; 2CBF _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2CC2 _ 8B. 40, 08
        cmp     eax, dword [ebp-1CH]                    ; 2CC5 _ 3B. 45, E4
        jg  near      ?_128                                   ; 2cc8 _ 0f 8f, ffffff24
        add     dword [ebp-24H], 1                      ; 2CCE _ 83. 45, DC, 01
?_133:  mov     eax, dword [ebp-24H]                    ; 2CD2 _ 8B. 45, DC
        cmp     eax, dword [ebp+20H]                    ; 2CD5 _ 3B. 45, 20
        jle near      ?_127                                   ; 2cd8 _ 0f 8e, fffffedb
        leave                                           ; 2CDE _ C9
        ret                                             ; 2CDF _ C3
; sheet_refreshsub End of function

sheet_refreshmap:; Function begin
        push    ebp                                     ; 2CE0 _ 55
        mov     ebp, esp                                ; 2CE1 _ 89. E5
        sub     esp, 64                                 ; 2CE3 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2CE6 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2CE9 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2CEC _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2CEF _ 83. 7D, 0C, 00
        jns     ?_134                                   ; 2CF3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2CF5 _ C7. 45, 0C, 00000000
?_134:  cmp     dword [ebp+10H], 0                      ; 2CFC _ 83. 7D, 10, 00
        jns     ?_135                                   ; 2D00 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2D02 _ C7. 45, 10, 00000000
?_135:  mov     eax, dword [ebp+8H]                     ; 2D09 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D0C _ 8B. 40, 08
        cmp     eax, dword [ebp+14H]                    ; 2D0F _ 3B. 45, 14
        jge near      ?_136                                   ; 2d12 _ 7d, 09
        mov     eax, dword [ebp+8H]                     ; 2D14 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D17 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2D1A _ 89. 45, 14
?_136:  mov     eax, dword [ebp+8H]                     ; 2D1D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D20 _ 8B. 40, 0C
        cmp     eax, dword [ebp+18H]                    ; 2D23 _ 3B. 45, 18
        jge near      ?_137                                   ; 2d26 _ 7d, 09
        mov     eax, dword [ebp+8H]                     ; 2D28 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D2B _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2D2E _ 89. 45, 18
?_137:  mov     eax, dword [ebp+1CH]                    ; 2D31 _ 8B. 45, 1C
        mov     dword [ebp-30H], eax                    ; 2D34 _ 89. 45, D0
        jmp     ?_148                                   ; 2D37 _ E9, 00000141

?_138:  mov     eax, dword [ebp+8H]                     ; 2D3C _ 8B. 45, 08
        mov     edx, dword [ebp-30H]                    ; 2D3F _ 8B. 55, D0
        add     edx, 4                                  ; 2D42 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2D45 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 2D49 _ 89. 45, F0
        mov     edx, dword [ebp-10H]                    ; 2D4C _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 2D4F _ 8B. 45, 08
        add     eax, 1044                               ; 2D52 _ 05, 00000414
        sub     edx, eax                                ; 2D57 _ 29. C2
        mov     eax, edx                                ; 2D59 _ 89. D0
        sar     eax, 5                                  ; 2D5B _ C1. F8, 05
        mov     byte [ebp-31H], al                      ; 2D5E _ 88. 45, CF
        mov     eax, dword [ebp-10H]                    ; 2D61 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 2D64 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2D66 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 2D69 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2D6C _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2D6F _ 8B. 55, 0C
        sub     edx, eax                                ; 2D72 _ 29. C2
        mov     eax, edx                                ; 2D74 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 2D76 _ 89. 45, DC
        mov     eax, dword [ebp-10H]                    ; 2D79 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2D7C _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2D7F _ 8B. 55, 10
        sub     edx, eax                                ; 2D82 _ 29. C2
        mov     eax, edx                                ; 2D84 _ 89. D0
        mov     dword [ebp-20H], eax                    ; 2D86 _ 89. 45, E0
        mov     eax, dword [ebp-10H]                    ; 2D89 _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 2D8C _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2D8F _ 8B. 55, 14
        sub     edx, eax                                ; 2D92 _ 29. C2
        mov     eax, edx                                ; 2D94 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2D96 _ 89. 45, E4
        mov     eax, dword [ebp-10H]                    ; 2D99 _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 2D9C _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2D9F _ 8B. 55, 18
        sub     edx, eax                                ; 2DA2 _ 29. C2
        mov     eax, edx                                ; 2DA4 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2DA6 _ 89. 45, E8
        cmp     dword [ebp-24H], 0                      ; 2DA9 _ 83. 7D, DC, 00
        jns     ?_139                                   ; 2DAD _ 79, 07
        mov     dword [ebp-24H], 0                      ; 2DAF _ C7. 45, DC, 00000000
?_139:  cmp     dword [ebp-20H], 0                      ; 2DB6 _ 83. 7D, E0, 00
        jns     ?_140                                   ; 2DBA _ 79, 07
        mov     dword [ebp-20H], 0                      ; 2DBC _ C7. 45, E0, 00000000
?_140:  mov     eax, dword [ebp-10H]                    ; 2DC3 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DC6 _ 8B. 40, 04
        cmp     eax, dword [ebp-1CH]                    ; 2DC9 _ 3B. 45, E4
        jge near      ?_141                                   ; 2dcc _ 7d, 09
        mov     eax, dword [ebp-10H]                    ; 2DCE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2DD1 _ 8B. 40, 04
        mov     dword [ebp-1CH], eax                    ; 2DD4 _ 89. 45, E4
?_141:  mov     eax, dword [ebp-10H]                    ; 2DD7 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2DDA _ 8B. 40, 08
        cmp     eax, dword [ebp-18H]                    ; 2DDD _ 3B. 45, E8
        jge near      ?_142                                   ; 2de0 _ 7d, 09
        mov     eax, dword [ebp-10H]                    ; 2DE2 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 2DE5 _ 8B. 40, 08
        mov     dword [ebp-18H], eax                    ; 2DE8 _ 89. 45, E8
?_142:  mov     eax, dword [ebp-20H]                    ; 2DEB _ 8B. 45, E0
        mov     dword [ebp-28H], eax                    ; 2DEE _ 89. 45, D8
        jmp     ?_147                                   ; 2DF1 _ EB, 7A

?_143:  mov     eax, dword [ebp-10H]                    ; 2DF3 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 2DF6 _ 8B. 50, 10
        mov     eax, dword [ebp-28H]                    ; 2DF9 _ 8B. 45, D8
        add     eax, edx                                ; 2DFC _ 01. D0
        mov     dword [ebp-8H], eax                     ; 2DFE _ 89. 45, F8
        mov     eax, dword [ebp-24H]                    ; 2E01 _ 8B. 45, DC
        mov     dword [ebp-2CH], eax                    ; 2E04 _ 89. 45, D4
        jmp     ?_146                                   ; 2E07 _ EB, 58

?_144:  mov     eax, dword [ebp-10H]                    ; 2E09 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 2E0C _ 8B. 50, 0C
        mov     eax, dword [ebp-2CH]                    ; 2E0F _ 8B. 45, D4
        add     eax, edx                                ; 2E12 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 2E14 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 2E17 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 2E1A _ 8B. 40, 04
        imul    eax, dword [ebp-28H]                    ; 2E1D _ 0F AF. 45, D8
        mov     edx, eax                                ; 2E21 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2E23 _ 8B. 45, D4
        add     eax, edx                                ; 2E26 _ 01. D0
        mov     edx, eax                                ; 2E28 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 2E2A _ 8B. 45, F4
        add     eax, edx                                ; 2E2D _ 01. D0
        movzx   eax, byte [eax]                         ; 2E2F _ 0F B6. 00
        movzx   edx, al                                 ; 2E32 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 2E35 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 2E38 _ 8B. 40, 14
        cmp     edx, eax                                ; 2E3B _ 39. C2
        jz near       ?_145                                   ; 2e3d _ 74, 1e
        mov     eax, dword [ebp+8H]                     ; 2E3F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E42 _ 8B. 40, 08
        imul    eax, dword [ebp-8H]                     ; 2E45 _ 0F AF. 45, F8
        mov     edx, eax                                ; 2E49 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 2E4B _ 8B. 45, FC
        add     eax, edx                                ; 2E4E _ 01. D0
        mov     edx, eax                                ; 2E50 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2E52 _ 8B. 45, EC
        add     edx, eax                                ; 2E55 _ 01. C2
        movzx   eax, byte [ebp-31H]                     ; 2E57 _ 0F B6. 45, CF
        mov     byte [edx], al                          ; 2E5B _ 88. 02
?_145:  add     dword [ebp-2CH], 1                      ; 2E5D _ 83. 45, D4, 01
?_146:  mov     eax, dword [ebp-2CH]                    ; 2E61 _ 8B. 45, D4
        cmp     eax, dword [ebp-1CH]                    ; 2E64 _ 3B. 45, E4
        jl      ?_144                                   ; 2E67 _ 7C, A0
        add     dword [ebp-28H], 1                      ; 2E69 _ 83. 45, D8, 01
?_147:  mov     eax, dword [ebp-28H]                    ; 2E6D _ 8B. 45, D8
        cmp     eax, dword [ebp-18H]                    ; 2E70 _ 3B. 45, E8
        jl      ?_143                                   ; 2E73 _ 0F 8C, FFFFFF7A
        add     dword [ebp-30H], 1                      ; 2E79 _ 83. 45, D0, 01
?_148:  mov     eax, dword [ebp+8H]                     ; 2E7D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2E80 _ 8B. 40, 10
        cmp     eax, dword [ebp-30H]                    ; 2E83 _ 3B. 45, D0
        jge near      ?_138                                   ; 2e86 _ 0f 8d, fffffeb0
        nop                                             ; 2E8C _ 90
        leave                                           ; 2E8D _ C9
        ret                                             ; 2E8E _ C3
; sheet_refreshmap End of function

init_pit:; Function begin
        push    ebp                                     ; 2E8F _ 55
        mov     ebp, esp                                ; 2E90 _ 89. E5
        sub     esp, 40                                 ; 2E92 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 2E95 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 2E9D _ C7. 04 24, 00000043
        call    io_out8                                 ; 2EA4 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 156                     ; 2EA9 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 2EB1 _ C7. 04 24, 00000040
        call    io_out8                                 ; 2EB8 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 46                      ; 2EBD _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 2EC5 _ C7. 04 24, 00000040
        call    io_out8                                 ; 2ECC _ E8, FFFFFFFC(rel)
        mov     dword [timerctl], 0                     ; 2ED1 _ C7. 05, 00000380(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2EDB _ C7. 45, F4, 00000000
        jmp     ?_150                                   ; 2EE2 _ EB, 16

?_149:  mov     eax, dword [ebp-0CH]                    ; 2EE4 _ 8B. 45, F4
        shl     eax, 4                                  ; 2EE7 _ C1. E0, 04
        add     eax, timerctl                           ; 2EEA _ 05, 00000380(d)
        mov     dword [eax+8H], 0                       ; 2EEF _ C7. 40, 08, 00000000
        add     dword [ebp-0CH], 1                      ; 2EF6 _ 83. 45, F4, 01
?_150:  cmp     dword [ebp-0CH], 499                    ; 2EFA _ 81. 7D, F4, 000001F3
        jle near      ?_149                                   ; 2f01 _ 7e, e1
        leave                                           ; 2F03 _ C9
        ret                                             ; 2F04 _ C3
; init_pit End of function

timer_alloc:; Function begin
        push    ebp                                     ; 2F05 _ 55
        mov     ebp, esp                                ; 2F06 _ 89. E5
        sub     esp, 16                                 ; 2F08 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2F0B _ C7. 45, FC, 00000000
        jmp     ?_153                                   ; 2F12 _ EB, 38

?_151:  mov     eax, dword [ebp-4H]                     ; 2F14 _ 8B. 45, FC
        shl     eax, 4                                  ; 2F17 _ C1. E0, 04
        add     eax, timerctl                           ; 2F1A _ 05, 00000380(d)
        mov     eax, dword [eax+8H]                     ; 2F1F _ 8B. 40, 08
        test    eax, eax                                ; 2F22 _ 85. C0
        jnz near      ?_152                                   ; 2f24 _ 75, 22
        mov     eax, dword [ebp-4H]                     ; 2F26 _ 8B. 45, FC
        shl     eax, 4                                  ; 2F29 _ C1. E0, 04
        add     eax, timerctl                           ; 2F2C _ 05, 00000380(d)
        mov     dword [eax+8H], 1                       ; 2F31 _ C7. 40, 08, 00000001
        mov     eax, dword [ebp-4H]                     ; 2F38 _ 8B. 45, FC
        shl     eax, 4                                  ; 2F3B _ C1. E0, 04
        add     eax, timerctl                           ; 2F3E _ 05, 00000380(d)
        add     eax, 4                                  ; 2F43 _ 83. C0, 04
        jmp     ?_154                                   ; 2F46 _ EB, 12

?_152:  add     dword [ebp-4H], 1                       ; 2F48 _ 83. 45, FC, 01
?_153:  cmp     dword [ebp-4H], 499                     ; 2F4C _ 81. 7D, FC, 000001F3
        jle near      ?_151                                   ; 2f53 _ 7e, bf
        mov     eax, 0                                  ; 2F55 _ B8, 00000000
?_154:  leave                                           ; 2F5A _ C9
        ret                                             ; 2F5B _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 2F5C _ 55
        mov     ebp, esp                                ; 2F5D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F5F _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F62 _ C7. 40, 04, 00000000
        nop                                             ; 2F69 _ 90
        pop     ebp                                     ; 2F6A _ 5D
        ret                                             ; 2F6B _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 2F6C _ 55
        mov     ebp, esp                                ; 2F6D _ 89. E5
        sub     esp, 4                                  ; 2F6F _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2F72 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2F75 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2F78 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F7B _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2F7E _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2F81 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2F84 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 2F88 _ 88. 50, 0C
        nop                                             ; 2F8B _ 90
        leave                                           ; 2F8C _ C9
        ret                                             ; 2F8D _ C3
; timer_init End of function

timer_settime:; Function begin
        push    ebp                                     ; 2F8E _ 55
        mov     ebp, esp                                ; 2F8F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2F91 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2F94 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2F97 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F99 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2F9C _ C7. 40, 04, 00000002
        nop                                             ; 2FA3 _ 90
        pop     ebp                                     ; 2FA4 _ 5D
        ret                                             ; 2FA5 _ C3
; timer_settime End of function

intHandlerForTimer:; Function begin
        push    ebp                                     ; 2FA6 _ 55
        mov     ebp, esp                                ; 2FA7 _ 89. E5
        push    ebx                                     ; 2FA9 _ 53
        sub     esp, 36                                 ; 2FAA _ 83. EC, 24
        mov     dword [esp+4H], 32                      ; 2FAD _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2FB5 _ C7. 04 24, 00000020
        call    io_out8                                 ; 2FBC _ E8, FFFFFFFC(rel)
        mov     eax, dword [timerctl]                   ; 2FC1 _ A1, 00000380(d)
        add     eax, 1                                  ; 2FC6 _ 83. C0, 01
        mov     dword [timerctl], eax                   ; 2FC9 _ A3, 00000380(d)
        mov     byte [ebp-0DH], 0                       ; 2FCE _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 2FD2 _ C7. 45, F4, 00000000
        jmp     ?_158                                   ; 2FD9 _ E9, 000000B0

?_155:  mov     eax, dword [ebp-0CH]                    ; 2FDE _ 8B. 45, F4
        shl     eax, 4                                  ; 2FE1 _ C1. E0, 04
        add     eax, timerctl                           ; 2FE4 _ 05, 00000380(d)
        mov     eax, dword [eax+8H]                     ; 2FE9 _ 8B. 40, 08
        cmp     eax, 2                                  ; 2FEC _ 83. F8, 02
        jne near      ?_156                                   ; 2fef _ 0f 85, 0000008a
        mov     eax, dword [ebp-0CH]                    ; 2FF5 _ 8B. 45, F4
        shl     eax, 4                                  ; 2FF8 _ C1. E0, 04
        add     eax, timerctl                           ; 2FFB _ 05, 00000380(d)
        mov     eax, dword [eax+4H]                     ; 3000 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3003 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3006 _ 8B. 45, F4
        shl     eax, 4                                  ; 3009 _ C1. E0, 04
        add     eax, timerctl                           ; 300C _ 05, 00000380(d)
        mov     dword [eax+4H], edx                     ; 3011 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3014 _ 8B. 45, F4
        shl     eax, 4                                  ; 3017 _ C1. E0, 04
        add     eax, timerctl                           ; 301A _ 05, 00000380(d)
        mov     eax, dword [eax+4H]                     ; 301F _ 8B. 40, 04
        test    eax, eax                                ; 3022 _ 85. C0
        jnz near      ?_156                                   ; 3024 _ 75, 59
        mov     eax, dword [ebp-0CH]                    ; 3026 _ 8B. 45, F4
        shl     eax, 4                                  ; 3029 _ C1. E0, 04
        add     eax, timerctl                           ; 302C _ 05, 00000380(d)
        mov     dword [eax+8H], 1                       ; 3031 _ C7. 40, 08, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3038 _ 8B. 45, F4
        shl     eax, 4                                  ; 303B _ C1. E0, 04
        add     eax, timerctl                           ; 303E _ 05, 00000380(d)
        movzx   eax, byte [eax+10H]                     ; 3043 _ 0F B6. 40, 10
        movzx   edx, al                                 ; 3047 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 304A _ 8B. 45, F4
        shl     eax, 4                                  ; 304D _ C1. E0, 04
        add     eax, timerctl                           ; 3050 _ 05, 00000380(d)
        mov     eax, dword [eax+0CH]                    ; 3055 _ 8B. 40, 0C
        mov     dword [esp+4H], edx                     ; 3058 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 305C _ 89. 04 24
        call    fifo8_put                               ; 305F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3064 _ 8B. 45, F4
        shl     eax, 4                                  ; 3067 _ C1. E0, 04
        add     eax, timerctl                           ; 306A _ 05, 00000380(d)
        lea     ebx, [eax+4H]                           ; 306F _ 8D. 58, 04
        call    GetStaticTimer                          ; 3072 _ E8, FFFFFFFC(rel)
        cmp     ebx, eax                                ; 3077 _ 39. C3
        jnz near      ?_156                                   ; 3079 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 307B _ C6. 45, F3, 01
?_156:  cmp     byte [ebp-0DH], 0                       ; 307F _ 80. 7D, F3, 00
        jz near       ?_157                                   ; 3083 _ 74, 05
        call    mt_taskswitch                           ; 3085 _ E8, FFFFFFFC(rel)
?_157:  add     dword [ebp-0CH], 1                      ; 308A _ 83. 45, F4, 01
?_158:  cmp     dword [ebp-0CH], 499                    ; 308E _ 81. 7D, F4, 000001F3
        jle near      ?_155                                   ; 3095 _ 0f 8e, ffffff43
        nop                                             ; 309B _ 90
        add     esp, 36                                 ; 309C _ 83. C4, 24
        pop     ebx                                     ; 309F _ 5B
        pop     ebp                                     ; 30A0 _ 5D
        ret                                             ; 30A1 _ C3
; intHandlerForTimer End of function

getTimerController:; Function begin
        push    ebp                                     ; 30A2 _ 55
        mov     ebp, esp                                ; 30A3 _ 89. E5
        mov     eax, timerctl                           ; 30A5 _ B8, 00000380(d)
        pop     ebp                                     ; 30AA _ 5D
        ret                                             ; 30AB _ C3
; getTimerController End of function

fifo8_init:; Function begin
        push    ebp                                     ; 30AC _ 55
        mov     ebp, esp                                ; 30AD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30AF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30B2 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 30B5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 30B8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 30BB _ 8B. 55, 10
        mov     dword [eax], edx                        ; 30BE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30C3 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 30C6 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 30C9 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 30CC _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 30D3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30D6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 30DD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 30E0 _ C7. 40, 08, 00000000
        nop                                             ; 30E7 _ 90
        pop     ebp                                     ; 30E8 _ 5D
        ret                                             ; 30E9 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 30EA _ 55
        mov     ebp, esp                                ; 30EB _ 89. E5
        sub     esp, 4                                  ; 30ED _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 30F0 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 30F3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 30F6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 30F9 _ 8B. 40, 10
        test    eax, eax                                ; 30FC _ 85. C0
        jnz near      ?_159                                   ; 30fe _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 3100 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 3103 _ 8B. 40, 14
        or      eax, 01H                                ; 3106 _ 83. C8, 01
        mov     edx, eax                                ; 3109 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 310B _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 310E _ 89. 50, 14
        mov     eax, 4294967295                         ; 3111 _ B8, FFFFFFFF
        jmp     ?_161                                   ; 3116 _ EB, 50

?_159:  mov     eax, dword [ebp+8H]                     ; 3118 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 311B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 311D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3120 _ 8B. 40, 04
        add     edx, eax                                ; 3123 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 3125 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 3129 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 312B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 312E _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 3131 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3134 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 3137 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 313A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 313D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 3140 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3143 _ 8B. 40, 0C
        cmp     edx, eax                                ; 3146 _ 39. C2
        jnz near      ?_160                                   ; 3148 _ 75, 0a
        mov     eax, dword [ebp+8H]                     ; 314A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 314D _ C7. 40, 04, 00000000
?_160:  mov     eax, dword [ebp+8H]                     ; 3154 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3157 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 315A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 315D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3160 _ 89. 50, 10
        mov     eax, 0                                  ; 3163 _ B8, 00000000
?_161:  leave                                           ; 3168 _ C9
        ret                                             ; 3169 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 316A _ 55
        mov     ebp, esp                                ; 316B _ 89. E5
        sub     esp, 16                                 ; 316D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 3170 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 3173 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 3176 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3179 _ 8B. 40, 0C
        cmp     edx, eax                                ; 317C _ 39. C2
        jnz near      ?_162                                   ; 317e _ 75, 07
        mov     eax, 4294967295                         ; 3180 _ B8, FFFFFFFF
        jmp     ?_164                                   ; 3185 _ EB, 51

?_162:  mov     eax, dword [ebp+8H]                     ; 3187 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 318A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 318C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 318F _ 8B. 40, 08
        add     eax, edx                                ; 3192 _ 01. D0
        movzx   eax, byte [eax]                         ; 3194 _ 0F B6. 00
        movzx   eax, al                                 ; 3197 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 319A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 319D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 31A0 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 31A3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31A6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 31A9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31AC _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 31AF _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31B2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31B5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 31B8 _ 39. C2
        jnz near      ?_163                                   ; 31ba _ 75, 0a
        mov     eax, dword [ebp+8H]                     ; 31BC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 31BF _ C7. 40, 08, 00000000
?_163:  mov     eax, dword [ebp+8H]                     ; 31C6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31C9 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 31CC _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 31CF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 31D2 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 31D5 _ 8B. 45, FC
?_164:  leave                                           ; 31D8 _ C9
        ret                                             ; 31D9 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 31DA _ 55
        mov     ebp, esp                                ; 31DB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31DD _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 31E0 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 31E3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 31E6 _ 8B. 40, 10
        sub     edx, eax                                ; 31E9 _ 29. C2
        mov     eax, edx                                ; 31EB _ 89. D0
        pop     ebp                                     ; 31ED _ 5D
        ret                                             ; 31EE _ C3
; fifo8_status End of function

set_segmdesc:; Function begin
        push    ebp                                     ; 31EF _ 55
        mov     ebp, esp                                ; 31F0 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 31F2 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_165                                   ; 31F9 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 31FB _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3202 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3205 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3208 _ 89. 45, 0C
?_165:  mov     eax, dword [ebp+0CH]                    ; 320B _ 8B. 45, 0C
        mov     edx, eax                                ; 320E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3210 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3213 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3216 _ 8B. 45, 10
        mov     edx, eax                                ; 3219 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 321B _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 321E _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3222 _ 8B. 45, 10
        sar     eax, 16                                 ; 3225 _ C1. F8, 10
        mov     edx, eax                                ; 3228 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 322A _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 322D _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3230 _ 8B. 45, 14
        mov     edx, eax                                ; 3233 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3235 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3238 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 323B _ 8B. 45, 0C
        shr     eax, 16                                 ; 323E _ C1. E8, 10
        and     eax, 0FH                                ; 3241 _ 83. E0, 0F
        mov     edx, eax                                ; 3244 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3246 _ 8B. 45, 14
        sar     eax, 8                                  ; 3249 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 324C _ 83. E0, F0
        or      eax, edx                                ; 324F _ 09. D0
        mov     edx, eax                                ; 3251 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3253 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3256 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3259 _ 8B. 45, 10
        shr     eax, 24                                 ; 325C _ C1. E8, 18
        mov     edx, eax                                ; 325F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3261 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3264 _ 88. 50, 07
        nop                                             ; 3267 _ 90
        pop     ebp                                     ; 3268 _ 5D
        ret                                             ; 3269 _ C3
; set_segmdesc End of function

mt_init:; Function begin
        push    ebp                                     ; 326A _ 55
        mov     ebp, esp                                ; 326B _ 89. E5
        sub     esp, 24                                 ; 326D _ 83. EC, 18
        call    timer_alloc                             ; 3270 _ E8, FFFFFFFC(rel)
        mov     dword [mt_timer], eax                   ; 3275 _ A3, 000022C8(d)
        mov     eax, dword [mt_timer]                   ; 327A _ A1, 000022C8(d)
        mov     dword [esp+4H], 100                     ; 327F _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 3287 _ 89. 04 24
        call    timer_settime                           ; 328A _ E8, FFFFFFFC(rel)
        mov     dword [mt_tr], 56                       ; 328F _ C7. 05, 000022C4(d), 00000038
        nop                                             ; 3299 _ 90
        leave                                           ; 329A _ C9
        ret                                             ; 329B _ C3
; mt_init End of function

mt_taskswitch:; Function begin
        push    ebp                                     ; 329C _ 55
        mov     ebp, esp                                ; 329D _ 89. E5
        sub     esp, 24                                 ; 329F _ 83. EC, 18
        mov     eax, dword [mt_tr]                      ; 32A2 _ A1, 000022C4(d)
        cmp     eax, 56                                 ; 32A7 _ 83. F8, 38
        jnz near      ?_166                                   ; 32aa _ 75, 0c
        mov     dword [mt_tr], 72                       ; 32AC _ C7. 05, 000022C4(d), 00000048
        jmp     ?_167                                   ; 32B6 _ EB, 0A

?_166:  mov     dword [mt_tr], 56                       ; 32B8 _ C7. 05, 000022C4(d), 00000038
?_167:  mov     eax, dword [mt_timer]                   ; 32C2 _ A1, 000022C8(d)
        mov     dword [esp+4H], 100                     ; 32C7 _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 32CF _ 89. 04 24
        call    timer_settime                           ; 32D2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [mt_tr]                      ; 32D7 _ A1, 000022C4(d)
        mov     dword [esp+4H], eax                     ; 32DC _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 32E0 _ C7. 04 24, 00000000
        call    farjmp                                  ; 32E7 _ E8, FFFFFFFC(rel)
        nop                                             ; 32EC _ 90
        leave                                           ; 32ED _ C9
        ret                                             ; 32EE _ C3
; mt_taskswitch End of function

GetStaticTimer:; Function begin
        push    ebp                                     ; 32EF _ 55
        mov     ebp, esp                                ; 32F0 _ 89. E5
        mov     eax, dword [mt_timer]                   ; 32F2 _ A1, 000022C8(d)
        pop     ebp                                     ; 32F7 _ 5D
        ret                                             ; 32F8 _ C3
; GetStaticTimer End of function



?_168:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_169:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_170:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_171:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_172:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_173:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_174:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_175:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_176:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0042 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 004A _ w: .



memman:                                                 ; dword
        dd 00100000H, 00000000H                         ; 0000 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 0008 _ 0 0 
        dd 00000000H, 00000000H                         ; 0010 _ 0 0 
        dd 00000000H, 00000000H                         ; 0018 _ 0 0 

keytable:                                               ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 5EH, 00H, 00H       ; 0028 _ 7890-^..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 40H, 5BH, 00H, 00H, 41H, 53H       ; 0038 _ OP@[..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 3AH, 00H, 00H, 5DH, 5AH, 58H, 43H, 56H       ; 0048 _ :..]ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 2AH       ; 0050 _ BNM,./.*
        db 00H, 20H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ . ......
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 37H       ; 0060 _ .......7
        db 38H, 39H, 2DH, 34H, 35H, 36H, 2BH, 31H       ; 0068 _ 89-456+1
        db 32H, 33H, 30H, 2EH                           ; 0070 _ 230.

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0074 _ 0X

?_177:  db 00H                                          ; 0076 _ .

?_178:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

table_rgb.1759:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

cursor.1806:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 00C0 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 00C8 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 00D8 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00E0 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00F0 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0100 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0108 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0110 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0118 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0120 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0128 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0130 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0138 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 0140 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0148 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 0150 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0158 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0168 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0178 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0180 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0188 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0190 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0198 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A0 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 01A8 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B0 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 01B8 _ .....***

closebtn.1916:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01C0 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 01C8 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01D0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 01E0 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0200 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0210 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 0220 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0228 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 0230 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0238 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 0240 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 0248 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0250 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0258 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0260 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0268 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0280 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0288 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0290 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0298 _ @@@@@@@@



bootInfo:                                               ; qword
        resb    4                                       ; 0000

?_179:  resw    1                                       ; 0004

?_180:  resw    1                                       ; 0006

keyinfo:                                                ; byte
        resb    24                                      ; 0008

mouseinfo:                                              ; byte
        resb    32                                      ; 0020

keybuf:                                                 ; yword
        resb    32                                      ; 0040

mousebuf:                                               ; byte
        resb    128                                     ; 0060

mdec:                                                   ; oword
        resb    12                                      ; 00E0

?_181:  resd    1                                       ; 00EC

timerinfo:                                              ; byte
        resb    24                                      ; 00F0

timerbuf: resq  1                                       ; 0108

mx:     resd    1                                       ; 0110

my:     resd    1                                       ; 0114

xsize:  resd    1                                       ; 0118

ysize:  resd    1                                       ; 011C

buf_back: resd  8                                       ; 0120

buf_mouse:                                              ; byte
        resb    256                                     ; 0140

shtMsgBox:                                              ; dword
        resd    1                                       ; 0240

shtctl: resd    1                                       ; 0244

sht_back: resd  1                                       ; 0248

sht_mouse:                                              ; dword
        resd    1                                       ; 024C

task_b: resd    1                                       ; 0250

g_timer_b:                                              ; oword
        resb    44                                      ; 0254

tss_a.1698:                                             ; byte
        resb    72                                      ; 0280

?_182:  resd    1                                       ; 02C8

?_183:  resd    1                                       ; 02CC

?_184:  resd    1                                       ; 02D0

?_185:  resd    1                                       ; 02D4

?_186:  resd    1                                       ; 02D8

?_187:  resd    1                                       ; 02DC

?_188:  resd    1                                       ; 02E0

?_189:  resd    7                                       ; 02E4

tss_b.1699:                                             ; byte
        resb    32                                      ; 0300

?_190:  resd    1                                       ; 0320

?_191:  resd    1                                       ; 0324

?_192:  resd    1                                       ; 0328

?_193:  resd    1                                       ; 032C

?_194:  resd    1                                       ; 0330

?_195:  resd    1                                       ; 0334

?_196:  resd    1                                       ; 0338

?_197:  resd    1                                       ; 033C

?_198:  resd    1                                       ; 0340

?_199:  resd    1                                       ; 0344

?_200:  resd    1                                       ; 0348

?_201:  resd    1                                       ; 034C

?_202:  resd    1                                       ; 0350

?_203:  resd    1                                       ; 0354

?_204:  resd    1                                       ; 0358

?_205:  resd    1                                       ; 035C

?_206:  resd    1                                       ; 0360

?_207:  resd    1                                       ; 0364

str.1854:                                               ; byte
        resb    1                                       ; 0368

?_208:  resb    9                                       ; 0369

?_209:  resb    14                                      ; 0372

timerctl:                                               ; byte
        resd    2001                                    ; 0380

mt_tr:  resd    1                                       ; 22C4

mt_timer: resd  1                                       ; 22C8


