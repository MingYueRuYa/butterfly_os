[map symbols kernel.map]
%include "pm.inc"

org   8000h

VRAM_ADDRESS  equ  0x000a0000

jmp  near LABEL_BEGIN

LABEL_SYSTEM_FONT:
%include "fontData.inc"
SystemFontLength equ $ - LABEL_SYSTEM_FONT

[SECTION .gdt]
 ;                                  段基址          段界限                属性
LABEL_GDT:          Descriptor        0,            0,                   0  
LABEL_DESC_CODE32:  Descriptor        0,      0fffffh,       DA_C | DA_32 | DA_LIMIT_4K
LABEL_DESC_VIDEO:   Descriptor        0B8000h,         0fffffh,            DA_DRW
LABEL_DESC_VRAM:    Descriptor        0,         0fffffh,            DA_DRW | DA_LIMIT_4K

LABEL_DESC_STACK:   Descriptor        0,             0fffffh,        DA_DRW | DA_32| DA_LIMIT_4K

LABEL_DESC_FONT:    Descriptor        0,         0fffffh,   DA_DRW | DA_LIMIT_4K  

LABEL_DESC_6:       Descriptor        0,      0fffffh,       0409Ah

LABEL_DESC_7:       Descriptor        0,      0,       0

LABEL_DESC_8:       Descriptor        0,      0,       0

LABEL_DESC_9:       Descriptor        0,      0,       0

LABEL_DESC_10:      Descriptor        0,      0,       0

%rep  10
Descriptor 0, 0, 0
%endrep

GdtLen     equ    $ - LABEL_GDT
GdtPtr     dw     GdtLen - 1
           dd     0

SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo     equ   LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT
SelectorFont      equ   LABEL_DESC_FONT - LABEL_GDT

LABEL_IDT:
%rep  12
    Gate  SelectorCode32, SpuriousHandler,0, DA_386IGate
%endrep

.0Ch:
    Gate SelectorCode32, stackOverFlowHandler,0, DA_386IGate
    
.0Dh:
    Gate SelectorCode32, exceptionHandler, 0, DA_386IGate

%rep  18
    Gate  SelectorCode32, SpuriousHandler,0, DA_386IGate
%endrep


.020h:
    Gate SelectorCode32, timerHandler,0, DA_386IGate

.021h:
    Gate SelectorCode32, KeyBoardHandler,0, DA_386IGate

%rep  10
    Gate  SelectorCode32, SpuriousHandler,0, DA_386IGate
%endrep

.2CH:
    Gate SelectorCode32, mouseHandler,0, DA_386IGate

.2DH:
    Gate SelectorCode32, AsmConsPutCharHandler, 0, DA_386IGate+0x60


IdtLen  equ $ - LABEL_IDT
IdtPtr  dw  IdtLen - 1
        dd  0



[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:
     mov   ax, cs
     mov   ds, ax
     mov   es, ax
     mov   ss, ax
     mov   sp, 0100h

keystatus:
     ;mov   ah, 0x02
     ;int   0x16
     ;mov   [LEDS], al
     ;calculate memory 
ComputeMemory:
     mov   ebx, 0
     mov   di, MemChkBuf
.loop:
     mov   eax, 0E820h
     mov   ecx, 20
     mov   edx, 0534D4150h
     int   15h
     jc    LABEL_MEM_CHK_FAIL
     add   di, 20   
     inc   dword [dwMCRNumber]
     cmp   ebx, 0
     jne   .loop
     jmp   LABEL_MEM_CHK_OK
LABEL_MEM_CHK_FAIL:
    mov    dword [dwMCRNumber], 0

LABEL_MEM_CHK_OK:
     mov   bx, 0x4101
     mov   ax, 0x4f02
     int   0x10

     xor   eax, eax
     mov   ax,  cs
     shl   eax, 4
     add   eax, LABEL_SEG_CODE32
     mov   word [LABEL_DESC_CODE32 + 2], ax
     shr   eax, 16
     mov   byte [LABEL_DESC_CODE32 + 4], al
     mov   byte [LABEL_DESC_CODE32 + 7], ah



     xor   eax, eax
     mov   ax,  cs
     shl   eax, 4
     add   eax, LABEL_SYSTEM_FONT
     mov   word [LABEL_DESC_FONT + 2], ax
     shr   eax, 16
     mov   byte [LABEL_DESC_FONT + 4], al
     mov   byte [LABEL_DESC_FONT + 7], ah

    

     xor   eax, eax
     mov   ax, ds
     shl   eax, 4
     add   eax,  LABEL_GDT
     mov   dword  [GdtPtr + 2], eax

     lgdt  [GdtPtr]

     cli   ;关中断

     call init8259A

     ;prepare for loading IDT
     xor   eax, eax
     mov   ax,  ds
     shl   eax, 4
     add   eax, LABEL_IDT
     mov   dword [IdtPtr + 2], eax
     lidt  [IdtPtr]

     in    al,  92h
     or    al,  00000010b
     out   92h, al

     mov   eax, cr0
     or    eax , 1
     mov   cr0, eax

 
     cli

     jmp   dword  1*8: 0

init8259A:
     mov  al, 011h
     out  020h, al
     call io_delay
  
     out 0A0h, al
     call io_delay

     mov al, 020h
     out 021h, al
     call io_delay

     mov  al, 028h
     out  0A1h, al
     call io_delay

     mov  al, 004h
     out  021h, al
     call io_delay

     mov  al, 002h
     out  0A1h, al
     call io_delay

     mov  al, 001h
     out  021h, al
     call io_delay

     out  0A1h, al
     call io_delay

     mov  al, 11111000b ;允许键盘和时钟中断
     out  021h, al
     call io_delay

     mov  al, 11101111b ;允许鼠标中断
     out  0A1h, al
     call io_delay

     ret

io_delay:
     nop
     nop
     nop
     nop
     ret

    [SECTION .s32]
    [BITS  32]
     LABEL_SEG_CODE32:
     
     ;initialize stack for c code
     mov  ax, SelectorStack
     mov  ss, ax
     mov  esp, 02000h

     mov  ax, SelectorVram
     mov  ds,  ax

     mov  ax, SelectorVideo
     mov  gs, ax

     cli  ;change

    %include "ckernel.asm"
     jmp $


_SpuriousHandler:
SpuriousHandler  equ _SpuriousHandler - $$
     iretd

_KeyBoardHandler:
KeyBoardHandler equ _KeyBoardHandler - $$
     pushad
     push ds
     push es
     push fs
     push gs
    
     mov  ax, SelectorVram
     mov  ds, ax
     mov  es, ax
     mov  gs, ax

     call intHandlerFromC
    

     pop gs
     pop fs
     pop es
     pop ds

     popad

     iretd


_mouseHandler:
mouseHandler equ _mouseHandler - $$
     pushad
     push ds
     push es
     push fs
     push gs

     mov  ax, SelectorVram
     mov  ds, ax
     mov  es, ax
     mov  gs, ax
     
     call intHandlerForMouse

     pop gs
     pop fs
     pop es
     pop ds

     popad

     iretd


_timerHandler:
timerHandler equ _timerHandler - $$
     push es
     push ds
     pushad
    
     mov eax, esp
     push eax

     mov ax, SelectorVram
     mov ds, ax
     mov es, ax
     mov  gs, ax
 
    call intHandlerForTimer
 
    pop eax 
    popad
    pop ds
    pop es

    iretd
    
_stackOverFlowHandler:
stackOverFlowHandler equ _stackOverFlowHandler - $$
    sti
    push es
    push ds
    pushad
    mov eax, esp
    push eax
    ;把内存段切换到内核
    mov  ax, SelectorVram
    mov  ds, ax
    mov  es, ax 

    call intHandlerForStackOverFlow
    
    jmp near end_app

_exceptionHandler:
exceptionHandler equ _exceptionHandler - $$
    sti 
    push es
    push ds
    pushad
    mov eax, esp
    push eax
    ; 把内存段切换到内核
    mov ax, SelectorVram
    mov ds, ax
    mov es, ax

    call intHandlerException

    jmp near end_app


get_font_data:
    mov ax, SelectorFont
    mov es, ax
    xor edi, edi
    mov edi, [esp + 4] ;char
    shl edi, 4
    add edi, [esp + 8]
    xor eax, eax
    mov al, byte [es:edi]
    ret

    io_hlt:  ;void io_hlt(void);
      HLT
      RET

    io_cli:
      CLI
      RET
    
    io_sti:
      STI
      RET
    io_stihlt:
      STI
      HLT
      RET

    io_in8:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   al, dx
      ret

    io_in16:
      mov  edx, [esp + 4]
      mov  eax, 0
      in   ax, dx
      ret

    io_in32:
      mov edx, [esp + 4]
      in  eax, dx
      ret

    io_out8:
       mov edx, [esp + 4]
       mov al, [esp + 8]
       out dx, al
       ret

    io_out16:
       mov edx, [esp + 4]
       mov eax, [esp + 8]
       out dx, ax
       ret

    io_out32:
        mov edx, [esp + 4]
        mov eax, [esp + 8]
        out dx, eax
        ret

    io_load_eflags:
        pushfd
        pop  eax
        ret

    io_store_eflags:
        mov eax, [esp + 4]
        push eax
        popfd
        ret

    get_memory_block_count:
        mov  eax, [dwMCRNumber]
        ret

    get_leds:
        mov eax, [LEDS]
        ret

    get_adr_buffer:
        mov  eax, MemChkBuf
        ret


    get_addr_gdt:
        mov  eax, LABEL_GDT
        ret

    get_code32_addr:
        mov  eax, LABEL_SEG_CODE32
        ret

    load_tr:
        LTR  [esp + 4]
        ret

    

    farjmp:
        mov  eax, [esp]
        push 1*8
        push eax
        jmp FAR [esp+12]
        ret

asm_cons_putchar:
AsmConsPutCharHandler equ asm_cons_putchar - $$
    push ds
    push es
    pushad
    pushad

    ; 把内存段切换到内核
    mov ax, SelectorVram
    mov ds, ax
    mov es, ax
    mov  gs, ax
    
    call kernel_api 
    cmp eax, 0
    jne end_app

    popad
    pop es
    pop ds

    iretd
end_app:
    mov esp, [eax]
    popad
    ret

get_esp:
    mov eax, esp
    ret
    
get_ss:
    xor eax, eax    
    mov eax, ss
    ret

start_app:  ; void start_app(int eip, int cs, int esp, int ds, &(task->tss.esp0))
    pushad
    
    mov eax, [esp+52]
    mov [eax], esp
    mov [eax+4], ss

    mov eax, [esp+36] ;eip
    mov ecx, [esp+40] ;cs
    mov edx, [esp+44] ;esp
    mov ebx, [esp+48] ;ds

    mov ds, bx
    mov es, bx

    or ecx, 3
    or ebx, 3
    push ebx
    push edx
    push ecx
    push eax
    retf

asm_end_app:
    mov eax, [esp + 4]
    mov esp, [eax]
    mov DWORD [eax+4], 0
    popad
    ret
SegCode32Len   equ  $ - LABEL_SEG_CODE32


[SECTION .data]
ALIGN 32
[BITS 32]

MemChkBuf: times 256 db 0
dwMCRNumber:   dd 0
LEDS : db 0
