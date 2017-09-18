#ifndef _TYPEDEF_H_
#define _TYPEDEF_H_

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;

#ifndef NULL
#define NULL 		((void*)(0))
#endif //NULL

//GDTȫ����������
typedef struct 
{
	union
	{
		struct
		{
			u64 lgdt;
		};
		
		struct
		{
			u32 gdt, gdt2;
		};
		
		struct
		{
			u16 limit;
			u16 baseaddr;
			u8  baseaddr2;
			u8  p_dpl_type_a;
			u8  uxdg_limit2;
			u8  baseaddr3;
		};
	};
	
} s_gdt;

//GDTȫ��������
typedef struct
{
	u16 gdt_lenth;
	u16 gdt_addr;
	u16 gdt_addr2;
} s_gdtp;

//IDTȫ��������
typedef struct
{
	union
	{
		struct
		{
			u64 lidt;
		};
		
		struct
		{
			u32 idt, idt2;
		};
		
		struct
		{
			u16 offset;
			u16 selector;
			u8	bbb_no_use;
			u8  p_dpl_bbbbb;
			u16 offset2;
		};
	};
	
} s_idt;

//IDTȫ��������
typedef struct
{
	u16 idt_lenth;
	u16 idt_addr;
	u16 idt_addr2;
} s_idtp;

//tss���ݽṹ
typedef struct
{
	u32 back_link;
	u32 esp0, ss0;
	u32 esp1, ss1;
	u32 esp2, ss2;
	u32 cr3;
	u32 eip;
	u32 eflags;
	u32 eax, ecx, edx, ebx;
	u32 esp, ebp;
	u32 esi, edi;
	u32 es, cs, ss, ds, fs, gs;
	u32 ldt;
	u32 trace_bitmap;
} s_tss;

//tss���������ݽṹ
typedef struct s_pcb
{
	s_tss tss;
	s_gdt ldt[2];
} s_pcb;

#endif