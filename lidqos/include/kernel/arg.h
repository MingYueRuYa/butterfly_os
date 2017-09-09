#ifndef _INCLUDE_KERNEL_ARG_H_
#define _INCLUDE_KERNEL_ARG_H_

#include <kernel/typedef.h>

//���嶯̬������ַ��
typedef u32 va_list;

/***
 * ��ʼ����̬������ַ
 * v:��̬������ַ��
 * a:ǰһ����������
 */
#define va_init(v, a)			\
		({						\
			v = (va_list)(&a); 	\
		})

/***
 * ȡ����һ��������ֵ
 * v:��̬������ַ��
 * t:��һ������������
 * return: ������һ��������ֵ
 */
#define va_arg(v, t)			\
	({							\
		v += 4;					\
		(t)(*((t*)(v)));		\
	})
 
#endif /* INCLUDE_KERNEL_ARG_H_ */