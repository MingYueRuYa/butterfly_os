#include <kernel/kernel.h>
#include <kernel/printf.h>

//ȫ���ַ���ָ�����
char *str = "Hello World!";

//�ں������������
int start_kernel(int argc, char **args)
{
	//�Դ��ַ
	char *p = (char *)0xb8000;
	//��ʾstr�����ݵ���ʾ����
	for (int i = 0; str[i] != '\0'; i++)
	{
            putchar(str[i]);
	}
	
	//������ֹ��ѭ��
	for (;;)
	{
	}
    return 0;
}
