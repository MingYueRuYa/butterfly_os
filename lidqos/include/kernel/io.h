/*
 * �˿��������ͷ�ļ�
 */
 
 #ifndef _IO_H_
 #define _IO_H_
 
 #include <kernel/typedef.h>
 
 /*
  * ���ж�
  */
#define cli() \
 	({__asm__ volatile("cli");})
	
/*
 * ���ж�
 */
#define sti() \
	({__asm__ volatile("sti");})

/*
 * hlt
 */
#define hlt() \
	({ __asm__ volatile("hlt"); })
	
/*
 * ����gdt
 */
#define load_gdt(gdtp) \
	({ \
		__asm__ volatile("lgdt %0" :: "m"(gdtp)); \
	})

/*
 * ����idt
 * */
#define load_idt(idtp) \
	({ \
		__asm__ volatile("lidt %0"::"m"(idtp));	\
	})
	
/*
 * ��˿�дһ���ֽ�
 */
static inline void outb_p(u8 val, u16 port)
{
	__asm__ volatile("outb %0, %1" :: "a" (val), "dN" (port));
}
 
/*
 * �Ӷ˿ڶ���һ���ֽ�
 */ 
static inline u8 inb_p(u16 port)
{
	u8 val;
	__asm__ volatile("inb %%dx, %%al" : "=a"(val) : "dx"(port));
	return val;
}

static inline u16 ds()
{
	u16 ds;
	__asm__ volatile("movw	%%ds, %0" : "=a" (ds) : );
	return ds;
//	u16 ds;
//	__asm__ volatile("movw %%ds, %0" : "=a" (ds) : );
//	return ds;
}
 #endif //_IO_H
