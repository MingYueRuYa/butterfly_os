/*
 * mm.h
 *
 * 内存操作头文件
 * */

#ifndef _MM_H_
#define _MM_H_

#include <kernel/typedef.h>

//全局中断描述符
#define IDT_MAX_SIZE (0xff)

//内核代码选择子
#define DT_INDEX_KERNEL_CS	(0x8)
//内核数据选择字
#define GDT_INDEX_KERNEL_DS	(0x10)

//中断程序
#define ISR_COUNT			(0x30)
//跳过空的中断数
#define ISR_EMPTY			(0x50)
//系统中断数
#define ISR_SYSCALL_COUNT	(0x20)
//系统中断开始于
#define ISR_SYSCALL_START	(ISR_COUNT+ISR_EMPTY)

/*
 * _int_default: 默认中断程序
 * return: void
 * */
extern void _int_default();

/*
 * void (*_isr[ISR_COUNT])(void): 中断程序数组
 * return: void
 * */
extern void (*_isr[ISR_COUNT])(void);

/*
 * addr_to_idt: 将32位物理地址装为IDT描述符
 *  - u16 selector: 选择子
 *  - u32 addr: 中断程序所在的物理地址
 *  - s_idt *idt:中断描述符
 *  return: void
 * */
void addr_to_idt(u16 selector, u32 addr, s_idt *idt);

/*
 * install_idt: 安装IDT全局描述符idt: 安装IDT全局描述符
 * return: void
 * */
void install_idt();

/*
 * install_pic: 安装8259A中断控制器
 * return: void
 * */
void install_pic();

#endif //_MM_H_
