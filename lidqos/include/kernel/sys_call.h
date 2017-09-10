/*
 * sys_call.h
 * 
 * 系统中断程序头文件
 * */

#ifndef _SYS_CALL_H
#define _SYS_CALL_H

#include <kernel/typedef.h>
#include <kernel/io.h>
#include <kernel/key.h>
#include <kernel/printf.h>

void int_div_error();

void int_timer();

void int_keyboard();
#endif
