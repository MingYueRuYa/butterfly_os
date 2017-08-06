#ifndef _PRINTF_H_
#define _PRINTF_H_

#include <kernel/typedef.h>
#include <kernel/io.h>

void set_cursor(u16 x, u16 y);

u16 get_cursor();

void putascii(u16 x, u16 y, char ch);

void putchar(char ch);

int printf(char *fmt, ...);

#endif //_PRINTF_H_
