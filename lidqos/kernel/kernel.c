#include <kernel/kernel.h>
#include <kernel/printf.h>

//ȫ���ַ���ָ�����
char *str = "Hello World!";

//�ں������������
int start_kernel(int argc, char **args)
{
    u32 no = 0x12051204; 
    int age = 25;
    char ch = 'B';
    char *msg = "Lidq school number is %x.\nThis year he is %d years old.\nHe got an %c on his test points.\n";
    printf(msg, no, age, ch); 

    //������ֹ��ѭ��
    for (;;)
    {
    }
    return 0;
}
