#include <kernel/kernel.h>

//ȫ���ַ���ָ�����
char *str = "Hello World!";

//????????
int start_kernel(int argc, char **args)
{
    printf("Welcome to LidqOS.\n");
	
   	//��װ�ڴ�����ģ��
	install_alloc();
	
	//��װ8259A
	install_pic();
	
	//��װISR�жϷ������
	install_idt();
	
	//���жϣ��ڽ��뱣��ģʽǰ�Ѿ��ر����ж���ʱ��Ҫ�����
	sti();
	
	int a = 1, b = 0, c;
	c = a / b;
	
    //������ֹ��ѭ��
    for (;;)
    {
    }
    return 0;
}
