#ifndef _main_h
#define _main_h

#include <kernel/typedef.h>
#include <kernel/io.h>

int main(int argc, char **args);

void addr_to_gdt(u32 addr, s_gdt *gdt, u8 cs_ds);

/*
 * set_gdt : ����ȫ��gdt�������� ���а���Ĭ�ϵ�ַ���ں˵�ַ���Դ��ַ
 * return : void
 */
 void set_gdt();
 
 /*
  * enable_a20 : ��A20������CPU��32���ڴ�Ѱַ�� �ɽ���4GB�ڴ�Ѱַ
  * return : void
  */
 void enable_a20();
 
/*
 * to_protect_mode : ��ת������ģʽ�����ٷ��أ�ֱ�������ں˳���
 * return : void
 */
void to_protect_mode();

/*
 * to_protect_mode : ��ת������ģʽ����boot.s�ж���
 * return : void
 */
extern void _to_the_protect_mode();
#endif //_main_h
