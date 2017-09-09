#include <kernel/kernel.h>

//全局字符串指针变量
char *str = "Hello World!";

//????????
int start_kernel(int argc, char **args)
{
    printf("Welcome to LidqOS.\n");
	
   	//安装内存申请模块
	install_alloc();
	
	//安装8259A
	install_pic();
	
	//安装ISR中断服务程序
	install_idt();
	
	//开中断，在进入保护模式前已经关闭了中断这时需要将其打开
	sti();
	
	int a = 1, b = 0, c;
	c = a / b;
	
    //永无休止的循环
    for (;;)
    {
    }
    return 0;
}
