#include <kernel/kernel.h>

//ȫ���ַ���ָ�����
char *str = "Hello World!";
int start_kernel(int argc, char **args)
{
	//�Դ��ַ
	char *p = (char *)0xb8000;
	//��ʾstr���ݵ���ʾ����
	for (int i=0; str[i] != '\0'; i++)
	{
		p[i*2] = str[i];
	}
	
	//��ѭ��
	for (;;)
	{
	}
    return 0;
}
