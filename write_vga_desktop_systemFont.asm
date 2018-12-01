; Disassembly of file: ./bin/write_vga_desktop_systemFont.o
; Sun Aug 19 20:45:10 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        lea     eax, [ebp-10H]                          ; 0007 _ 8D. 45, F0
        mov     dword [esp], eax                        ; 000A _ 89. 04 24
        call    initBootInfo                            ; 000D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], 655360                 ; 0012 _ C7. 45, E4, 000A0000
        mov     dword [ebp-18H], 320                    ; 0019 _ C7. 45, E8, 00000140
        mov     dword [ebp-14H], 200                    ; 0020 _ C7. 45, EC, 000000C8
        call    init_palette                            ; 0027 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 002C _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 002F _ 8D. 50, E3
        mov     eax, dword [ebp-18H]                    ; 0032 _ 8B. 45, E8
        sub     eax, 1                                  ; 0035 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0038 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 003C _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0040 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0048 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0050 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-18H]                    ; 0058 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 005B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 005F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0062 _ 89. 04 24
        call    boxfill8                                ; 0065 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 006A _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 006D _ 8D. 48, E4
        mov     eax, dword [ebp-18H]                    ; 0070 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 0073 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0076 _ 8B. 45, EC
        sub     eax, 28                                 ; 0079 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 007C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0080 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0084 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0088 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0090 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0098 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 009B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 009F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00A2 _ 89. 04 24
        call    boxfill8                                ; 00A5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00AA _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00AD _ 8D. 48, E5
        mov     eax, dword [ebp-18H]                    ; 00B0 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00B3 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00B6 _ 8B. 45, EC
        sub     eax, 27                                 ; 00B9 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00BC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00C0 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00C4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00C8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00D0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 00D8 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00DB _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00DF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00E2 _ 89. 04 24
        call    boxfill8                                ; 00E5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00EA _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00ED _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 00F0 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00F3 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00F6 _ 8B. 45, EC
        sub     eax, 26                                 ; 00F9 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 00FC _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0100 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0104 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0108 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0110 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0118 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 011B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 011F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0122 _ 89. 04 24
        call    boxfill8                                ; 0125 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 012A _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 012D _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 0130 _ 8B. 45, EC
        sub     eax, 24                                 ; 0133 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0136 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 013A _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0142 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0146 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 014E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0156 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0159 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 015D _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0160 _ 89. 04 24
        call    boxfill8                                ; 0163 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0168 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 016B _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 016E _ 8B. 45, EC
        sub     eax, 24                                 ; 0171 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0174 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0178 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0180 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0184 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 018C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0194 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0197 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 019B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 019E _ 89. 04 24
        call    boxfill8                                ; 01A1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01A6 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01A9 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01AC _ 8B. 45, EC
        sub     eax, 4                                  ; 01AF _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01B2 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01B6 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01BE _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01C2 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01CA _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 01D2 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01D5 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01D9 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01DC _ 89. 04 24
        call    boxfill8                                ; 01DF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01E4 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01E7 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01EA _ 8B. 45, EC
        sub     eax, 23                                 ; 01ED _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01F0 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01F4 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01FC _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0200 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0208 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 0210 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0213 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0217 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 021A _ 89. 04 24
        call    boxfill8                                ; 021D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0222 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0225 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0228 _ 8B. 45, EC
        sub     eax, 3                                  ; 022B _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 022E _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0232 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 023A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 023E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0246 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 024E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0251 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0255 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0258 _ 89. 04 24
        call    boxfill8                                ; 025B _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0260 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0263 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0266 _ 8B. 45, EC
        sub     eax, 24                                 ; 0269 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 026C _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0270 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0278 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 027C _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0284 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 028C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 028F _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0293 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0296 _ 89. 04 24
        call    boxfill8                                ; 0299 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 029E _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02A1 _ 8D. 58, E8
        mov     eax, dword [ebp-18H]                    ; 02A4 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 02A7 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02AA _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02AD _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 02B0 _ 8B. 45, E8
        sub     eax, 47                                 ; 02B3 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02B6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02BA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02BE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02C2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02C6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 02CE _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02D1 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 02D5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02D8 _ 89. 04 24
        call    boxfill8                                ; 02DB _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02E0 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02E3 _ 8D. 58, FC
        mov     eax, dword [ebp-18H]                    ; 02E6 _ 8B. 45, E8
        lea     ecx, [eax-2FH]                          ; 02E9 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02EC _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02EF _ 8D. 50, E9
        mov     eax, dword [ebp-18H]                    ; 02F2 _ 8B. 45, E8
        sub     eax, 47                                 ; 02F5 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02F8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02FC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0300 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0304 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0308 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 0310 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0313 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0317 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 031A _ 89. 04 24
        call    boxfill8                                ; 031D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0322 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0325 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0328 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 032B _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 032E _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0331 _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 0334 _ 8B. 45, E8
        sub     eax, 47                                 ; 0337 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 033A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 033E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0342 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0346 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 034A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0352 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0355 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0359 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 035C _ 89. 04 24
        call    boxfill8                                ; 035F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0364 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0367 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 036A _ 8B. 45, E8
        lea     ecx, [eax-3H]                           ; 036D _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 0370 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0373 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 0376 _ 8B. 45, E8
        sub     eax, 3                                  ; 0379 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 037C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0380 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0384 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0388 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 038C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0394 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0397 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 039B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 039E _ 89. 04 24
        call    boxfill8                                ; 03A1 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+410H        ; 03A6 _ C7. 44 24, 14, 00000410(d)
        mov     dword [esp+10H], 7                      ; 03AE _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03B6 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 8                       ; 03BE _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 03C6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03C9 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03CD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 03D0 _ 89. 04 24
        call    showFont8                               ; 03D3 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+420H        ; 03D8 _ C7. 44 24, 14, 00000420(d)
        mov     dword [esp+10H], 7                      ; 03E0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03E8 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 16                      ; 03F0 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-18H]                    ; 03F8 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03FB _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03FF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0402 _ 89. 04 24
        call    showFont8                               ; 0405 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+430H        ; 040A _ C7. 44 24, 14, 00000430(d)
        mov     dword [esp+10H], 7                      ; 0412 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 041A _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 24                      ; 0422 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-18H]                    ; 042A _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 042D _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0431 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0434 _ 89. 04 24
        call    showFont8                               ; 0437 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+310H        ; 043C _ C7. 44 24, 14, 00000310(d)
        mov     dword [esp+10H], 7                      ; 0444 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 044C _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 32                      ; 0454 _ C7. 44 24, 08, 00000020
        mov     eax, dword [ebp-18H]                    ; 045C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 045F _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0463 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0466 _ 89. 04 24
        call    showFont8                               ; 0469 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+320H        ; 046E _ C7. 44 24, 14, 00000320(d)
        mov     dword [esp+10H], 7                      ; 0476 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 047E _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 48                      ; 0486 _ C7. 44 24, 08, 00000030
        mov     eax, dword [ebp-18H]                    ; 048E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0491 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0495 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0498 _ 89. 04 24
        call    showFont8                               ; 049B _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+330H        ; 04A0 _ C7. 44 24, 14, 00000330(d)
        mov     dword [esp+10H], 7                      ; 04A8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 04B0 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 64                      ; 04B8 _ C7. 44 24, 08, 00000040
        mov     eax, dword [ebp-18H]                    ; 04C0 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 04C3 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 04C7 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 04CA _ 89. 04 24
        call    showFont8                               ; 04CD _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 04D2 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 04D7 _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04D9 _ 55
        mov     ebp, esp                                ; 04DA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04DC _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04DF _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04E5 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04E8 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 04EE _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 04F1 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 04F7 _ 5D
        ret                                             ; 04F8 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 04F9 _ 55
        mov     ebp, esp                                ; 04FA _ 89. E5
        sub     esp, 24                                 ; 04FC _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1422          ; 04FF _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0507 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 050F _ C7. 04 24, 00000000
        call    set_palette                             ; 0516 _ E8, FFFFFFFC(rel)
        nop                                             ; 051B _ 90
        leave                                           ; 051C _ C9
        ret                                             ; 051D _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 051E _ 55
        mov     ebp, esp                                ; 051F _ 89. E5
        sub     esp, 40                                 ; 0521 _ 83. EC, 28
        call    io_load_eflags                          ; 0524 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0529 _ 89. 45, F4
        call    io_cli                                  ; 052C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0531 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0534 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0538 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 053F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0544 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0547 _ 89. 45, F0
        jmp     ?_003                                   ; 054A _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 054C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 054F _ 0F B6. 00
        shr     al, 2                                   ; 0552 _ C0. E8, 02
        movzx   eax, al                                 ; 0555 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0558 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 055C _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0563 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0568 _ 8B. 45, 10
        add     eax, 1                                  ; 056B _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 056E _ 0F B6. 00
        shr     al, 2                                   ; 0571 _ C0. E8, 02
        movzx   eax, al                                 ; 0574 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0577 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 057B _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0582 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0587 _ 8B. 45, 10
        add     eax, 2                                  ; 058A _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 058D _ 0F B6. 00
        shr     al, 2                                   ; 0590 _ C0. E8, 02
        movzx   eax, al                                 ; 0593 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0596 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 059A _ C7. 04 24, 000003C9
        call    io_out8                                 ; 05A1 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 05A6 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 05AA _ 83. 45, F0, 01
?_003:  mov     eax, dword [ebp-10H]                    ; 05AE _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 05B1 _ 3B. 45, 0C
        jle     ?_002                                   ; 05B4 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 05B6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 05B9 _ 89. 04 24
        call    io_store_eflags                         ; 05BC _ E8, FFFFFFFC(rel)
        nop                                             ; 05C1 _ 90
        leave                                           ; 05C2 _ C9
        ret                                             ; 05C3 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05C4 _ 55
        mov     ebp, esp                                ; 05C5 _ 89. E5
        sub     esp, 20                                 ; 05C7 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05CA _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05CD _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05D0 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 05D3 _ 89. 45, FC
        jmp     ?_007                                   ; 05D6 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 05D8 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 05DB _ 89. 45, F8
        jmp     ?_006                                   ; 05DE _ EB, 1F

?_005:  mov     eax, dword [ebp-4H]                     ; 05E0 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 05E3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05E7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 05E9 _ 8B. 45, F8
        add     eax, edx                                ; 05EC _ 01. D0
        mov     edx, eax                                ; 05EE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05F0 _ 8B. 45, 08
        add     edx, eax                                ; 05F3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05F5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05F9 _ 88. 02
        add     dword [ebp-8H], 1                       ; 05FB _ 83. 45, F8, 01
?_006:  mov     eax, dword [ebp-8H]                     ; 05FF _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0602 _ 3B. 45, 1C
        jle     ?_005                                   ; 0605 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0607 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 060B _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 060E _ 3B. 45, 20
        jle     ?_004                                   ; 0611 _ 7E, C5
        leave                                           ; 0613 _ C9
        ret                                             ; 0614 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0615 _ 55
        mov     ebp, esp                                ; 0616 _ 89. E5
        sub     esp, 20                                 ; 0618 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 061B _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 061E _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0621 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0628 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 062D _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0630 _ 8B. 45, 1C
        add     eax, edx                                ; 0633 _ 01. D0
        movzx   eax, byte [eax]                         ; 0635 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0638 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 063B _ 80. 7D, FB, 00
        jns     ?_009                                   ; 063F _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0641 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0644 _ 8B. 55, 14
        add     eax, edx                                ; 0647 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0649 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 064D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 064F _ 8B. 45, 10
        add     eax, edx                                ; 0652 _ 01. D0
        mov     edx, eax                                ; 0654 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0656 _ 8B. 45, 08
        add     edx, eax                                ; 0659 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 065B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 065F _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 0661 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0665 _ 83. E0, 40
        test    eax, eax                                ; 0668 _ 85. C0
        jz      ?_010                                   ; 066A _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 066C _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 066F _ 8B. 55, 14
        add     eax, edx                                ; 0672 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0674 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0678 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 067A _ 8B. 45, 10
        add     eax, edx                                ; 067D _ 01. D0
        lea     edx, [eax+1H]                           ; 067F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0682 _ 8B. 45, 08
        add     edx, eax                                ; 0685 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0687 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 068B _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 068D _ 0F BE. 45, FB
        and     eax, 20H                                ; 0691 _ 83. E0, 20
        test    eax, eax                                ; 0694 _ 85. C0
        jz      ?_011                                   ; 0696 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0698 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 069B _ 8B. 55, 14
        add     eax, edx                                ; 069E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06A0 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06A4 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06A6 _ 8B. 45, 10
        add     eax, edx                                ; 06A9 _ 01. D0
        lea     edx, [eax+2H]                           ; 06AB _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06AE _ 8B. 45, 08
        add     edx, eax                                ; 06B1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06B3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06B7 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 06B9 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06BD _ 83. E0, 10
        test    eax, eax                                ; 06C0 _ 85. C0
        jz      ?_012                                   ; 06C2 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06C4 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06C7 _ 8B. 55, 14
        add     eax, edx                                ; 06CA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06CC _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06D0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06D2 _ 8B. 45, 10
        add     eax, edx                                ; 06D5 _ 01. D0
        lea     edx, [eax+3H]                           ; 06D7 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06DA _ 8B. 45, 08
        add     edx, eax                                ; 06DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06E3 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 06E5 _ 0F BE. 45, FB
        and     eax, 08H                                ; 06E9 _ 83. E0, 08
        test    eax, eax                                ; 06EC _ 85. C0
        jz      ?_013                                   ; 06EE _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06F0 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06F3 _ 8B. 55, 14
        add     eax, edx                                ; 06F6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06F8 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06FC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06FE _ 8B. 45, 10
        add     eax, edx                                ; 0701 _ 01. D0
        lea     edx, [eax+4H]                           ; 0703 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0706 _ 8B. 45, 08
        add     edx, eax                                ; 0709 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 070B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 070F _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0711 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0715 _ 83. E0, 04
        test    eax, eax                                ; 0718 _ 85. C0
        jz      ?_014                                   ; 071A _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 071C _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 071F _ 8B. 55, 14
        add     eax, edx                                ; 0722 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0724 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0728 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 072A _ 8B. 45, 10
        add     eax, edx                                ; 072D _ 01. D0
        lea     edx, [eax+5H]                           ; 072F _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0732 _ 8B. 45, 08
        add     edx, eax                                ; 0735 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0737 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 073B _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 073D _ 0F BE. 45, FB
        and     eax, 02H                                ; 0741 _ 83. E0, 02
        test    eax, eax                                ; 0744 _ 85. C0
        jz      ?_015                                   ; 0746 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0748 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 074B _ 8B. 55, 14
        add     eax, edx                                ; 074E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0750 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0754 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0756 _ 8B. 45, 10
        add     eax, edx                                ; 0759 _ 01. D0
        lea     edx, [eax+6H]                           ; 075B _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 075E _ 8B. 45, 08
        add     edx, eax                                ; 0761 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0763 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0767 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0769 _ 0F BE. 45, FB
        and     eax, 01H                                ; 076D _ 83. E0, 01
        test    eax, eax                                ; 0770 _ 85. C0
        jz      ?_016                                   ; 0772 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0774 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0777 _ 8B. 55, 14
        add     eax, edx                                ; 077A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 077C _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0780 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0782 _ 8B. 45, 10
        add     eax, edx                                ; 0785 _ 01. D0
        lea     edx, [eax+7H]                           ; 0787 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 078A _ 8B. 45, 08
        add     edx, eax                                ; 078D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 078F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0793 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 0795 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0799 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 079D _ 0F 8E, FFFFFE8A
        leave                                           ; 07A3 _ C9
        ret                                             ; 07A4 _ C3
; showFont8 End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1422:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........




