; Disassembly of file: ./bin/write_vag_cursor.o
; Sat Sep  1 12:56:52 2018
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [esp], bootInfo                   ; 0007 _ C7. 04 24, 00000000(d)
        call    initBootInfo                            ; 000E _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 0018 _ 89. 45, E4
        movzx   eax, word [?_037]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [ebp-18H], eax                    ; 0023 _ 89. 45, E8
        movzx   eax, word [?_038]                       ; 0026 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002D _ 98
        mov     dword [ebp-14H], eax                    ; 002E _ 89. 45, EC
        call    init_palette                            ; 0031 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0036 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0039 _ 8D. 50, E3
        mov     eax, dword [ebp-18H]                    ; 003C _ 8B. 45, E8
        sub     eax, 1                                  ; 003F _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0042 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0046 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 004A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0052 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 005A _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-18H]                    ; 0062 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0065 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0069 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 006C _ 89. 04 24
        call    boxfill8                                ; 006F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0074 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0077 _ 8D. 48, E4
        mov     eax, dword [ebp-18H]                    ; 007A _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 007D _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0080 _ 8B. 45, EC
        sub     eax, 28                                 ; 0083 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0086 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 008A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 008E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0092 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 009A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 00A2 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00A5 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00A9 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00AC _ 89. 04 24
        call    boxfill8                                ; 00AF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00B4 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00B7 _ 8D. 48, E5
        mov     eax, dword [ebp-18H]                    ; 00BA _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00BD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00C0 _ 8B. 45, EC
        sub     eax, 27                                 ; 00C3 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00C6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00CA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00CE _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00D2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00DA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 00E2 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 00E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 00E9 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 00EC _ 89. 04 24
        call    boxfill8                                ; 00EF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00F4 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00F7 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 00FA _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 00FD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0100 _ 8B. 45, EC
        sub     eax, 26                                 ; 0103 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0106 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 010A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 010E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0112 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 011A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 0122 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0125 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0129 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 012C _ 89. 04 24
        call    boxfill8                                ; 012F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0134 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0137 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 013A _ 8B. 45, EC
        sub     eax, 24                                 ; 013D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0140 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0144 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 014C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0150 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0158 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 0160 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0163 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0167 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 016A _ 89. 04 24
        call    boxfill8                                ; 016D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0172 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0175 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0178 _ 8B. 45, EC
        sub     eax, 24                                 ; 017B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 017E _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0182 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 018A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 018E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0196 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 019E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01A5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01A8 _ 89. 04 24
        call    boxfill8                                ; 01AB _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01B0 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01B3 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01B6 _ 8B. 45, EC
        sub     eax, 4                                  ; 01B9 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01BC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01C0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01C8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01CC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01D4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 01DC _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 01DF _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 01E3 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 01E6 _ 89. 04 24
        call    boxfill8                                ; 01E9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01EE _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01F1 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01F4 _ 8B. 45, EC
        sub     eax, 23                                 ; 01F7 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01FA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01FE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0206 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 020A _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0212 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 021A _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 021D _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0221 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0224 _ 89. 04 24
        call    boxfill8                                ; 0227 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 022C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 022F _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0232 _ 8B. 45, EC
        sub     eax, 3                                  ; 0235 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0238 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 023C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0244 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0248 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0250 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 0258 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 025B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 025F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0262 _ 89. 04 24
        call    boxfill8                                ; 0265 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 026A _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 026D _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0270 _ 8B. 45, EC
        sub     eax, 24                                 ; 0273 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0276 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 027A _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0282 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0286 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 028E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-18H]                    ; 0296 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0299 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 029D _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02A0 _ 89. 04 24
        call    boxfill8                                ; 02A3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02A8 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02AB _ 8D. 58, E8
        mov     eax, dword [ebp-18H]                    ; 02AE _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 02B1 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02B4 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02B7 _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 02BA _ 8B. 45, E8
        sub     eax, 47                                 ; 02BD _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02C0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02C4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02C8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02CC _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02D0 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 02D8 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02DB _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 02DF _ 8B. 45, E4
        mov     dword [esp], eax                        ; 02E2 _ 89. 04 24
        call    boxfill8                                ; 02E5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02EA _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02ED _ 8D. 58, FC
        mov     eax, dword [ebp-18H]                    ; 02F0 _ 8B. 45, E8
        lea     ecx, [eax-2FH]                          ; 02F3 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02F6 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02F9 _ 8D. 50, E9
        mov     eax, dword [ebp-18H]                    ; 02FC _ 8B. 45, E8
        sub     eax, 47                                 ; 02FF _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0302 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0306 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 030A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 030E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0312 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-18H]                    ; 031A _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 031D _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0321 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    boxfill8                                ; 0327 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 032C _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 032F _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0332 _ 8B. 45, E8
        lea     ecx, [eax-4H]                           ; 0335 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0338 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 033B _ 8D. 50, FD
        mov     eax, dword [ebp-18H]                    ; 033E _ 8B. 45, E8
        sub     eax, 47                                 ; 0341 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0344 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0348 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 034C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0350 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0354 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 035C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 035F _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0363 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0366 _ 89. 04 24
        call    boxfill8                                ; 0369 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 036E _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0371 _ 8D. 58, FD
        mov     eax, dword [ebp-18H]                    ; 0374 _ 8B. 45, E8
        lea     ecx, [eax-3H]                           ; 0377 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 037A _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 037D _ 8D. 50, E8
        mov     eax, dword [ebp-18H]                    ; 0380 _ 8B. 45, E8
        sub     eax, 3                                  ; 0383 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0386 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 038A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 038E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0392 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0396 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-18H]                    ; 039E _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03A5 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 03A8 _ 89. 04 24
        call    boxfill8                                ; 03AB _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+410H        ; 03B0 _ C7. 44 24, 14, 00000410(d)
        mov     dword [esp+10H], 7                      ; 03B8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03C0 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 8                       ; 03C8 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-18H]                    ; 03D0 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 03D3 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 03D7 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 03DA _ 89. 04 24
        call    showFont8                               ; 03DD _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+420H        ; 03E2 _ C7. 44 24, 14, 00000420(d)
        mov     dword [esp+10H], 7                      ; 03EA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03F2 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 16                      ; 03FA _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-18H]                    ; 0402 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0405 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0409 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 040C _ 89. 04 24
        call    showFont8                               ; 040F _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+430H        ; 0414 _ C7. 44 24, 14, 00000430(d)
        mov     dword [esp+10H], 7                      ; 041C _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 0424 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 24                      ; 042C _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-18H]                    ; 0434 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0437 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 043B _ 8B. 45, E4
        mov     dword [esp], eax                        ; 043E _ 89. 04 24
        call    showFont8                               ; 0441 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+310H        ; 0446 _ C7. 44 24, 14, 00000310(d)
        mov     dword [esp+10H], 7                      ; 044E _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 0456 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 32                      ; 045E _ C7. 44 24, 08, 00000020
        mov     eax, dword [ebp-18H]                    ; 0466 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0469 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 046D _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0470 _ 89. 04 24
        call    showFont8                               ; 0473 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+320H        ; 0478 _ C7. 44 24, 14, 00000320(d)
        mov     dword [esp+10H], 7                      ; 0480 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 0488 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 48                      ; 0490 _ C7. 44 24, 08, 00000030
        mov     eax, dword [ebp-18H]                    ; 0498 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 049B _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 049F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 04A2 _ 89. 04 24
        call    showFont8                               ; 04A5 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], systemFont+330H        ; 04AA _ C7. 44 24, 14, 00000330(d)
        mov     dword [esp+10H], 7                      ; 04B2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 04BA _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 64                      ; 04C2 _ C7. 44 24, 08, 00000040
        mov     eax, dword [ebp-18H]                    ; 04CA _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 04CD _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 04D1 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 04D4 _ 89. 04 24
        call    showFont8                               ; 04D7 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 14                      ; 04DC _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 04E4 _ C7. 04 24, 00000020(d)
        call    init_mouse_cursor                       ; 04EB _ E8, FFFFFFFC(rel)
        mov     dword [esp+1CH], 16                     ; 04F0 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 04F8 _ C7. 44 24, 18, 00000020(d)
        mov     dword [esp+14H], 80                     ; 0500 _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 0508 _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 0510 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0518 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-18H]                    ; 0520 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0523 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 0527 _ 8B. 45, E4
        mov     dword [esp], eax                        ; 052A _ 89. 04 24
        call    putblock                                ; 052D _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0532 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 0                      ; 0537 _ C7. 45, F0, 00000000
?_001:  call    io_cli                                  ; 053E _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_041]                      ; 0543 _ A1, 00000148(d)
        test    eax, eax                                ; 0548 _ 85. C0
        jnz     ?_002                                   ; 054A _ 75, 07
        call    io_stihlt                               ; 054C _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0551 _ EB, EB

?_002:  mov     eax, dword [?_039]                      ; 0553 _ A1, 00000140(d)
        movzx   eax, byte [keybuf+eax]                  ; 0558 _ 0F B6. 80, 00000120(d)
        movzx   eax, al                                 ; 055F _ 0F B6. C0
        mov     dword [ebp-10H], eax                    ; 0562 _ 89. 45, F0
        mov     eax, dword [?_039]                      ; 0565 _ A1, 00000140(d)
        lea     edx, [eax+1H]                           ; 056A _ 8D. 50, 01
        mov     eax, edx                                ; 056D _ 89. D0
        sar     eax, 31                                 ; 056F _ C1. F8, 1F
        shr     eax, 27                                 ; 0572 _ C1. E8, 1B
        add     edx, eax                                ; 0575 _ 01. C2
        and     edx, 1FH                                ; 0577 _ 83. E2, 1F
        sub     edx, eax                                ; 057A _ 29. C2
        mov     eax, edx                                ; 057C _ 89. D0
        mov     dword [?_039], eax                      ; 057E _ A3, 00000140(d)
        call    io_sti                                  ; 0583 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_041]                      ; 0588 _ A1, 00000148(d)
        sub     eax, 1                                  ; 058D _ 83. E8, 01
        mov     dword [?_041], eax                      ; 0590 _ A3, 00000148(d)
        mov     eax, dword [ebp-10H]                    ; 0595 _ 8B. 45, F0
        movzx   eax, al                                 ; 0598 _ 0F B6. C0
        mov     dword [esp], eax                        ; 059B _ 89. 04 24
        call    charToHexStr                            ; 059E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 05A3 _ 89. 45, F4
        mov     eax, dword [showXPos.1459]              ; 05A6 _ A1, 0000014C(d)
        mov     edx, dword [ebp-0CH]                    ; 05AB _ 8B. 55, F4
        mov     dword [esp+14H], edx                    ; 05AE _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 05B2 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 05BA _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 05C2 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 05C6 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 05C9 _ 89. 44 24, 04
        mov     eax, dword [ebp-1CH]                    ; 05CD _ 8B. 45, E4
        mov     dword [esp], eax                        ; 05D0 _ 89. 04 24
        call    showString                              ; 05D3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showXPos.1459]              ; 05D8 _ A1, 0000014C(d)
        add     eax, 32                                 ; 05DD _ 83. C0, 20
        mov     dword [showXPos.1459], eax              ; 05E0 _ A3, 0000014C(d)
        jmp     ?_001                                   ; 05E5 _ E9, FFFFFF54
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 05EA _ 55
        mov     ebp, esp                                ; 05EB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 05ED _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 05F0 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 05F6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 05F9 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 05FF _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0602 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 0608 _ 5D
        ret                                             ; 0609 _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 060A _ 55
        mov     ebp, esp                                ; 060B _ 89. E5
        sub     esp, 24                                 ; 060D _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1469          ; 0610 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0618 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0620 _ C7. 04 24, 00000000
        call    set_palette                             ; 0627 _ E8, FFFFFFFC(rel)
        nop                                             ; 062C _ 90
        leave                                           ; 062D _ C9
        ret                                             ; 062E _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 062F _ 55
        mov     ebp, esp                                ; 0630 _ 89. E5
        sub     esp, 40                                 ; 0632 _ 83. EC, 28
        call    io_load_eflags                          ; 0635 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 063A _ 89. 45, F4
        call    io_cli                                  ; 063D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0642 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0645 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0649 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0650 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0655 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0658 _ 89. 45, F0
        jmp     ?_004                                   ; 065B _ EB, 62

?_003:  mov     eax, dword [ebp+10H]                    ; 065D _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0660 _ 0F B6. 00
        shr     al, 2                                   ; 0663 _ C0. E8, 02
        movzx   eax, al                                 ; 0666 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0669 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 066D _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0674 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0679 _ 8B. 45, 10
        add     eax, 1                                  ; 067C _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 067F _ 0F B6. 00
        shr     al, 2                                   ; 0682 _ C0. E8, 02
        movzx   eax, al                                 ; 0685 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0688 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 068C _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0693 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0698 _ 8B. 45, 10
        add     eax, 2                                  ; 069B _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 069E _ 0F B6. 00
        shr     al, 2                                   ; 06A1 _ C0. E8, 02
        movzx   eax, al                                 ; 06A4 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 06A7 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 06AB _ C7. 04 24, 000003C9
        call    io_out8                                 ; 06B2 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 06B7 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 06BB _ 83. 45, F0, 01
?_004:  mov     eax, dword [ebp-10H]                    ; 06BF _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 06C2 _ 3B. 45, 0C
        jle     ?_003                                   ; 06C5 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 06C7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 06CA _ 89. 04 24
        call    io_store_eflags                         ; 06CD _ E8, FFFFFFFC(rel)
        nop                                             ; 06D2 _ 90
        leave                                           ; 06D3 _ C9
        ret                                             ; 06D4 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 06D5 _ 55
        mov     ebp, esp                                ; 06D6 _ 89. E5
        sub     esp, 20                                 ; 06D8 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 06DB _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 06DE _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 06E1 _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 06E4 _ 89. 45, FC
        jmp     ?_008                                   ; 06E7 _ EB, 33

?_005:  mov     eax, dword [ebp+14H]                    ; 06E9 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 06EC _ 89. 45, F8
        jmp     ?_007                                   ; 06EF _ EB, 1F

?_006:  mov     eax, dword [ebp-4H]                     ; 06F1 _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 06F4 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06F8 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 06FA _ 8B. 45, F8
        add     eax, edx                                ; 06FD _ 01. D0
        mov     edx, eax                                ; 06FF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0701 _ 8B. 45, 08
        add     edx, eax                                ; 0704 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0706 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 070A _ 88. 02
        add     dword [ebp-8H], 1                       ; 070C _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 0710 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0713 _ 3B. 45, 1C
        jle     ?_006                                   ; 0716 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0718 _ 83. 45, FC, 01
?_008:  mov     eax, dword [ebp-4H]                     ; 071C _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 071F _ 3B. 45, 20
        jle     ?_005                                   ; 0722 _ 7E, C5
        leave                                           ; 0724 _ C9
        ret                                             ; 0725 _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 0726 _ 55
        mov     ebp, esp                                ; 0727 _ 89. E5
        sub     esp, 20                                 ; 0729 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 072C _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 072F _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0732 _ C7. 45, FC, 00000000
        jmp     ?_018                                   ; 0739 _ E9, 0000016C

?_009:  mov     edx, dword [ebp-4H]                     ; 073E _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0741 _ 8B. 45, 1C
        add     eax, edx                                ; 0744 _ 01. D0
        movzx   eax, byte [eax]                         ; 0746 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0749 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 074C _ 80. 7D, FB, 00
        jns     ?_010                                   ; 0750 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0752 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0755 _ 8B. 55, 14
        add     eax, edx                                ; 0758 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 075A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 075E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0760 _ 8B. 45, 10
        add     eax, edx                                ; 0763 _ 01. D0
        mov     edx, eax                                ; 0765 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0767 _ 8B. 45, 08
        add     edx, eax                                ; 076A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 076C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0770 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0772 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0776 _ 83. E0, 40
        test    eax, eax                                ; 0779 _ 85. C0
        jz      ?_011                                   ; 077B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 077D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0780 _ 8B. 55, 14
        add     eax, edx                                ; 0783 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0785 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0789 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 078B _ 8B. 45, 10
        add     eax, edx                                ; 078E _ 01. D0
        lea     edx, [eax+1H]                           ; 0790 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0793 _ 8B. 45, 08
        add     edx, eax                                ; 0796 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0798 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 079C _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 079E _ 0F BE. 45, FB
        and     eax, 20H                                ; 07A2 _ 83. E0, 20
        test    eax, eax                                ; 07A5 _ 85. C0
        jz      ?_012                                   ; 07A7 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 07A9 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 07AC _ 8B. 55, 14
        add     eax, edx                                ; 07AF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07B1 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07B5 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07B7 _ 8B. 45, 10
        add     eax, edx                                ; 07BA _ 01. D0
        lea     edx, [eax+2H]                           ; 07BC _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 07BF _ 8B. 45, 08
        add     edx, eax                                ; 07C2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07C4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07C8 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 07CA _ 0F BE. 45, FB
        and     eax, 10H                                ; 07CE _ 83. E0, 10
        test    eax, eax                                ; 07D1 _ 85. C0
        jz      ?_013                                   ; 07D3 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 07D5 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 07D8 _ 8B. 55, 14
        add     eax, edx                                ; 07DB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 07DD _ 0F AF. 45, 0C
        mov     edx, eax                                ; 07E1 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 07E3 _ 8B. 45, 10
        add     eax, edx                                ; 07E6 _ 01. D0
        lea     edx, [eax+3H]                           ; 07E8 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 07EB _ 8B. 45, 08
        add     edx, eax                                ; 07EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07F4 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 07F6 _ 0F BE. 45, FB
        and     eax, 08H                                ; 07FA _ 83. E0, 08
        test    eax, eax                                ; 07FD _ 85. C0
        jz      ?_014                                   ; 07FF _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0801 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0804 _ 8B. 55, 14
        add     eax, edx                                ; 0807 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0809 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 080D _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 080F _ 8B. 45, 10
        add     eax, edx                                ; 0812 _ 01. D0
        lea     edx, [eax+4H]                           ; 0814 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0817 _ 8B. 45, 08
        add     edx, eax                                ; 081A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 081C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0820 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0822 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0826 _ 83. E0, 04
        test    eax, eax                                ; 0829 _ 85. C0
        jz      ?_015                                   ; 082B _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 082D _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0830 _ 8B. 55, 14
        add     eax, edx                                ; 0833 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0835 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0839 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 083B _ 8B. 45, 10
        add     eax, edx                                ; 083E _ 01. D0
        lea     edx, [eax+5H]                           ; 0840 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0843 _ 8B. 45, 08
        add     edx, eax                                ; 0846 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0848 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 084C _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 084E _ 0F BE. 45, FB
        and     eax, 02H                                ; 0852 _ 83. E0, 02
        test    eax, eax                                ; 0855 _ 85. C0
        jz      ?_016                                   ; 0857 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0859 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 085C _ 8B. 55, 14
        add     eax, edx                                ; 085F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0861 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0865 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0867 _ 8B. 45, 10
        add     eax, edx                                ; 086A _ 01. D0
        lea     edx, [eax+6H]                           ; 086C _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 086F _ 8B. 45, 08
        add     edx, eax                                ; 0872 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0874 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0878 _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 087A _ 0F BE. 45, FB
        and     eax, 01H                                ; 087E _ 83. E0, 01
        test    eax, eax                                ; 0881 _ 85. C0
        jz      ?_017                                   ; 0883 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0885 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0888 _ 8B. 55, 14
        add     eax, edx                                ; 088B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 088D _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0891 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0893 _ 8B. 45, 10
        add     eax, edx                                ; 0896 _ 01. D0
        lea     edx, [eax+7H]                           ; 0898 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 089B _ 8B. 45, 08
        add     edx, eax                                ; 089E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08A0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08A4 _ 88. 02
?_017:  add     dword [ebp-4H], 1                       ; 08A6 _ 83. 45, FC, 01
?_018:  cmp     dword [ebp-4H], 15                      ; 08AA _ 83. 7D, FC, 0F
        jle     ?_009                                   ; 08AE _ 0F 8E, FFFFFE8A
        leave                                           ; 08B4 _ C9
        ret                                             ; 08B5 _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 08B6 _ 55
        mov     ebp, esp                                ; 08B7 _ 89. E5
        sub     esp, 28                                 ; 08B9 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 08BC _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 08BF _ 88. 45, FC
        jmp     ?_020                                   ; 08C2 _ EB, 46

?_019:  mov     eax, dword [ebp+1CH]                    ; 08C4 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08C7 _ 0F B6. 00
        movzx   eax, al                                 ; 08CA _ 0F B6. C0
        shl     eax, 4                                  ; 08CD _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 08D0 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 08D6 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 08DA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 08DE _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08E2 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08E5 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08E9 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08EC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 08F0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08FA _ 89. 04 24
        call    showFont8                               ; 08FD _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 0902 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0906 _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 090A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 090D _ 0F B6. 00
        test    al, al                                  ; 0910 _ 84. C0
        jnz     ?_019                                   ; 0912 _ 75, B0
        leave                                           ; 0914 _ C9
        ret                                             ; 0915 _ C3
; showString End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 0916 _ 55
        mov     ebp, esp                                ; 0917 _ 89. E5
        sub     esp, 40                                 ; 0919 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 091C _ A1, 00000000(d)
        mov     dword [ebp-14H], eax                    ; 0921 _ 89. 45, EC
        movzx   eax, word [?_037]                       ; 0924 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 092B _ 98
        mov     dword [ebp-10H], eax                    ; 092C _ 89. 45, F0
        movzx   eax, word [?_038]                       ; 092F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0936 _ 98
        mov     dword [ebp-0CH], eax                    ; 0937 _ 89. 45, F4
        mov     dword [esp+4H], 33                      ; 093A _ C7. 44 24, 04, 00000021
        mov     dword [esp], 32                         ; 0942 _ C7. 04 24, 00000020
        call    io_out8                                 ; 0949 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 094E _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0952 _ C7. 04 24, 00000060
        call    io_in8                                  ; 0959 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 095E _ 88. 45, EB
        mov     eax, dword [?_041]                      ; 0961 _ A1, 00000148(d)
        cmp     eax, 31                                 ; 0966 _ 83. F8, 1F
        jg      ?_021                                   ; 0969 _ 7F, 3A
        mov     eax, dword [?_040]                      ; 096B _ A1, 00000144(d)
        movzx   edx, byte [ebp-15H]                     ; 0970 _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 0974 _ 88. 90, 00000120(d)
        mov     eax, dword [?_041]                      ; 097A _ A1, 00000148(d)
        add     eax, 1                                  ; 097F _ 83. C0, 01
        mov     dword [?_041], eax                      ; 0982 _ A3, 00000148(d)
        mov     eax, dword [?_040]                      ; 0987 _ A1, 00000144(d)
        lea     edx, [eax+1H]                           ; 098C _ 8D. 50, 01
        mov     eax, edx                                ; 098F _ 89. D0
        sar     eax, 31                                 ; 0991 _ C1. F8, 1F
        shr     eax, 27                                 ; 0994 _ C1. E8, 1B
        add     edx, eax                                ; 0997 _ 01. C2
        and     edx, 1FH                                ; 0999 _ 83. E2, 1F
        sub     edx, eax                                ; 099C _ 29. C2
        mov     eax, edx                                ; 099E _ 89. D0
        mov     dword [?_040], eax                      ; 09A0 _ A3, 00000144(d)
?_021:  leave                                           ; 09A5 _ C9
        ret                                             ; 09A6 _ C3
; intHandlerFromC End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 09A7 _ 55
        mov     ebp, esp                                ; 09A8 _ 89. E5
        sub     esp, 20                                 ; 09AA _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 09AD _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 09B0 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 09B3 _ C7. 45, FC, 00000000
        jmp     ?_028                                   ; 09BA _ E9, 000000B5

?_022:  mov     dword [ebp-8H], 0                       ; 09BF _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 09C6 _ E9, 0000009B

?_023:  mov     eax, dword [ebp-4H]                     ; 09CB _ 8B. 45, FC
        shl     eax, 4                                  ; 09CE _ C1. E0, 04
        mov     edx, eax                                ; 09D1 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09D3 _ 8B. 45, F8
        add     eax, edx                                ; 09D6 _ 01. D0
        add     eax, cursor.1537                        ; 09D8 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 09DD _ 0F B6. 00
        cmp     al, 42                                  ; 09E0 _ 3C, 2A
        jnz     ?_024                                   ; 09E2 _ 75, 19
        mov     eax, dword [ebp-4H]                     ; 09E4 _ 8B. 45, FC
        shl     eax, 4                                  ; 09E7 _ C1. E0, 04
        mov     edx, eax                                ; 09EA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 09EC _ 8B. 45, F8
        add     eax, edx                                ; 09EF _ 01. D0
        mov     edx, eax                                ; 09F1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 09F3 _ 8B. 45, 08
        add     eax, edx                                ; 09F6 _ 01. D0
        mov     byte [eax], 7                           ; 09F8 _ C6. 00, 07
        jmp     ?_026                                   ; 09FB _ EB, 65

?_024:  mov     eax, dword [ebp-4H]                     ; 09FD _ 8B. 45, FC
        shl     eax, 4                                  ; 0A00 _ C1. E0, 04
        mov     edx, eax                                ; 0A03 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A05 _ 8B. 45, F8
        add     eax, edx                                ; 0A08 _ 01. D0
        add     eax, cursor.1537                        ; 0A0A _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A0F _ 0F B6. 00
        cmp     al, 48                                  ; 0A12 _ 3C, 30
        jnz     ?_025                                   ; 0A14 _ 75, 19
        mov     eax, dword [ebp-4H]                     ; 0A16 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A19 _ C1. E0, 04
        mov     edx, eax                                ; 0A1C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A1E _ 8B. 45, F8
        add     eax, edx                                ; 0A21 _ 01. D0
        mov     edx, eax                                ; 0A23 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A25 _ 8B. 45, 08
        add     eax, edx                                ; 0A28 _ 01. D0
        mov     byte [eax], 0                           ; 0A2A _ C6. 00, 00
        jmp     ?_026                                   ; 0A2D _ EB, 33

?_025:  mov     eax, dword [ebp-4H]                     ; 0A2F _ 8B. 45, FC
        shl     eax, 4                                  ; 0A32 _ C1. E0, 04
        mov     edx, eax                                ; 0A35 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A37 _ 8B. 45, F8
        add     eax, edx                                ; 0A3A _ 01. D0
        add     eax, cursor.1537                        ; 0A3C _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A41 _ 0F B6. 00
        cmp     al, 46                                  ; 0A44 _ 3C, 2E
        jnz     ?_026                                   ; 0A46 _ 75, 1A
        mov     eax, dword [ebp-4H]                     ; 0A48 _ 8B. 45, FC
        shl     eax, 4                                  ; 0A4B _ C1. E0, 04
        mov     edx, eax                                ; 0A4E _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0A50 _ 8B. 45, F8
        add     eax, edx                                ; 0A53 _ 01. D0
        mov     edx, eax                                ; 0A55 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A57 _ 8B. 45, 08
        add     edx, eax                                ; 0A5A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A5C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A60 _ 88. 02
?_026:  add     dword [ebp-8H], 1                       ; 0A62 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 0A66 _ 83. 7D, F8, 0F
        jle     ?_023                                   ; 0A6A _ 0F 8E, FFFFFF5B
        add     dword [ebp-4H], 1                       ; 0A70 _ 83. 45, FC, 01
?_028:  cmp     dword [ebp-4H], 15                      ; 0A74 _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0A78 _ 0F 8E, FFFFFF41
        leave                                           ; 0A7E _ C9
        ret                                             ; 0A7F _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0A80 _ 55
        mov     ebp, esp                                ; 0A81 _ 89. E5
        sub     esp, 16                                 ; 0A83 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 0A86 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0A8D _ EB, 50

?_029:  mov     dword [ebp-8H], 0                       ; 0A8F _ C7. 45, F8, 00000000
        jmp     ?_031                                   ; 0A96 _ EB, 3B

?_030:  mov     eax, dword [ebp-4H]                     ; 0A98 _ 8B. 45, FC
        mov     edx, dword [ebp+1CH]                    ; 0A9B _ 8B. 55, 1C
        add     eax, edx                                ; 0A9E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AA0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-8H]                     ; 0AA4 _ 8B. 55, F8
        mov     ecx, dword [ebp+18H]                    ; 0AA7 _ 8B. 4D, 18
        add     edx, ecx                                ; 0AAA _ 01. CA
        add     eax, edx                                ; 0AAC _ 01. D0
        mov     edx, eax                                ; 0AAE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AB0 _ 8B. 45, 08
        add     edx, eax                                ; 0AB3 _ 01. C2
        mov     eax, dword [ebp-4H]                     ; 0AB5 _ 8B. 45, FC
        imul    eax, dword [ebp+24H]                    ; 0AB8 _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0ABC _ 89. C1
        mov     eax, dword [ebp-8H]                     ; 0ABE _ 8B. 45, F8
        add     eax, ecx                                ; 0AC1 _ 01. C8
        mov     ecx, eax                                ; 0AC3 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0AC5 _ 8B. 45, 20
        add     eax, ecx                                ; 0AC8 _ 01. C8
        movzx   eax, byte [eax]                         ; 0ACA _ 0F B6. 00
        mov     byte [edx], al                          ; 0ACD _ 88. 02
        add     dword [ebp-8H], 1                       ; 0ACF _ 83. 45, F8, 01
?_031:  mov     eax, dword [ebp-8H]                     ; 0AD3 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0AD6 _ 3B. 45, 10
        jl      ?_030                                   ; 0AD9 _ 7C, BD
        add     dword [ebp-4H], 1                       ; 0ADB _ 83. 45, FC, 01
?_032:  mov     eax, dword [ebp-4H]                     ; 0ADF _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 0AE2 _ 3B. 45, 14
        jl      ?_029                                   ; 0AE5 _ 7C, A8
        leave                                           ; 0AE7 _ C9
        ret                                             ; 0AE8 _ C3
; putblock End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0AE9 _ 55
        mov     ebp, esp                                ; 0AEA _ 89. E5
        sub     esp, 4                                  ; 0AEC _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0AEF _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0AF2 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0AF5 _ 80. 7D, FC, 09
        jle     ?_033                                   ; 0AF9 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0AFB _ 0F B6. 45, FC
        add     eax, 55                                 ; 0AFF _ 83. C0, 37
        jmp     ?_034                                   ; 0B02 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0B04 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0B08 _ 83. C0, 30
?_034:  leave                                           ; 0B0B _ C9
        ret                                             ; 0B0C _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0B0D _ 55
        mov     ebp, esp                                ; 0B0E _ 89. E5
        sub     esp, 24                                 ; 0B10 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0B13 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0B16 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0B19 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0B20 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0B24 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0B27 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0B2A _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0B2E _ 89. 04 24
        call    charToHexVal                            ; 0B31 _ E8, FFFFFFFC(rel)
        mov     byte [?_036], al                        ; 0B36 _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0B3B _ 0F B6. 45, EC
        shr     al, 4                                   ; 0B3F _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0B42 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0B45 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0B49 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0B4C _ 89. 04 24
        call    charToHexVal                            ; 0B4F _ E8, FFFFFFFC(rel)
        mov     byte [?_035], al                        ; 0B54 _ A2, 00000012(d)
        mov     eax, keyval                             ; 0B59 _ B8, 00000010(d)
        leave                                           ; 0B5E _ C9
        ret                                             ; 0B5F _ C3
; charToHexStr End of function

init_keyboard:; Function begin
        push    ebp                                     ; 0B60 _ 55
        mov     ebp, esp                                ; 0B61 _ 89. E5
        pop     ebp                                     ; 0B63 _ 5D
        ret                                             ; 0B64 _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 0B65 _ 55
        mov     ebp, esp                                ; 0B66 _ 89. E5
        pop     ebp                                     ; 0B68 _ 5D
        ret                                             ; 0B69 _ C3
; enable_mouse End of function



fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0010 _ 0X

?_035:  db 00H                                          ; 0012 _ .

?_036:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1469:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1537:                                            ; byte
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

?_037:  resw    1                                       ; 0004

?_038:  resw    13                                      ; 0006

mcursor:                                                ; byte
        resb    256                                     ; 0020

keybuf:                                                 ; byte
        resb    32                                      ; 0120

?_039:  resd    1                                       ; 0140

?_040:  resd    1                                       ; 0144

?_041:  resd    1                                       ; 0148

showXPos.1459:                                          ; dword
        resd    1                                       ; 014C

showYPos.1460:                                          ; dword
        resd    1                                       ; 0150


