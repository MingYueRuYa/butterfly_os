#ifndef _BOOT_S_
#define _BOOT_S_

//16位操作数和16位寻址模式
.code16
//开始过程
.global _start
//数据段
.section .data
//代码段
.section .text

//开始
_start:
	//将es设为0xb800
	movw $0xb800, %ax	
	movw %ax, %es

	//将ds设为0x07c0
	movw $0x07c0, %ax
	movw %ax, %ds

	//将si指向Hello world!字符串首地址
	movw $_str, %si

	//清空di	
	xorw %di, %di

_copy:
	//判断字符串结束符\0
	cmp $0, %ds:(%si)
	je _loop

	//拷贝字符串到al
	movb %ds:(%si), %al
	movb $0x07, %ah
	movw %ax, %es:(%di)	

	//si加1
	addw $1, %si

	//di加2
	addw $2, %di
	jmp _copy	

_loop:
	jmp _loop

_str:
	.string "Hello world!\0"
	//占位，从此行开始到0x1fe止匀为0x90也就是nop
	.org	0x1fe,	0x90
	//在0x1ff终止符0xaa55
	.word	0xaa55
	//一共0x200个字节

#endif
