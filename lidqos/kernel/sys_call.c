/*
 * 系统中断程序
 *	- 处理异常中断程序
 *	- 处理系统中断 
 * */

#ifndef _SYS_CALL_C
#define _SYS_CALL_C

#include <kernel/sys_call.h>

/*
 * int_dvi_error: 除零错
 * return: void
 * */
void int_div_error()
{
	printf("Div error.\n");
	hlt();
}

#endif //_SYS_CALL_C

