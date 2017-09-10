#include <kernel/kernel.h>


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
	
	//��װʱ���ж�
	install_timer();
	
	//��װ�����ж�
	install_kb();
	//���жϣ��ڽ��뱣��ģʽǰ�Ѿ��ر����ж���ʱ��Ҫ�����
	sti();
	
	
    //������ֹ��ѭ��
    for (;;)
    {
    }
    return 0;
}