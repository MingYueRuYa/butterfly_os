#ifndef _TYPEDEF_H
#define _TYPEDEF_H

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;

#ifndef NULL
#define NULL 		((void*)(0))
#endif //NULL

//GDTȫ����������
typedef struct gdt_s
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
typedef struct gdt_ptr
{
	u16 gdt_lenth;
	u16 gdt_addr;
	u16 gdt_addr2;
} s_gdtp;

#endif