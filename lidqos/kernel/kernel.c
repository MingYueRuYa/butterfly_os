#include <kernel/kernel.h>

//全局字符串指针变量
char *str = "Hello World!";
int start_kernel(int argc, char **args)
{
	//显存地址
	char *p = (char *)0xb8000;
	//显示str内容到显示器上
	for (int i=0; str[i] != '\0'; i++)
	{
		p[i*2] = str[i];
	}
	
	//死循环
	for (;;)
	{
	}
    return 0;
}
