#ifndef _main_h
#define _main_h

#include <kernel/typedef.h>
#include <kernel/io.h>

int main(int argc, char **args);

void addr_to_gdt(u32 addr, s_gdt *gdt, u8 cs_ds);

/*
 * set_gdt : 设置全局gdt描述符， 其中包括默认地址，内核地址，显存地址
 * return : void
 */
 void set_gdt();
 
 /*
  * enable_a20 : 打开A20，启用CPU的32根内存寻址， 可进行4GB内存寻址
  * return : void
  */
 void enable_a20();
 
/*
 * to_protect_mode : 跳转到保护模式，不再返回，直接启动内核程序
 * return : void
 */
void to_protect_mode();

/*
 * to_protect_mode : 跳转到保护模式，由boot.s中定义
 * return : void
 */
extern void _to_the_protect_mode();
#endif //_main_h
