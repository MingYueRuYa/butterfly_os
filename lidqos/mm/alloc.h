/*
 *  alloc.h
 *  
 *
 *  内存申请头文件
 * */

#ifndef _alloc_h_
#define _alloc_h_

#include <kernel/typedef.h>

//位图状态标识
//未使用
#define MM_FREE         (0)
//已使用
#define MM_USED         (1)
//动态分配
#define MM_DYNAMIC      (2)

//内存页大小4096B
#define MM_PAGE_SIZE    (4*1024)
//内存总页数
#define MAP_SIZE        (1024*1204)
//内核程序大小256页 256*4096 = 1MB
#define KERNEL_SIZE     (0x100)
//MMAP所在的内存地址为0x400000 ~ 0x4fffff
//从0x500000以下为0x500个内存页
#define MMAP_USED_SIZE  (0x500)


/*
 * install_alloc : 安装申请内存位图
 */
void install_alloc();

/*
 * alloc_page : 申请内存页，每页为4KB大小
 *  - int count : 页数
 * return : void *返回申请地址，NULL代表申请失败
 * */
void *alloc_page(int count);

/*
 * free_page : 释放内存页，每页为4KB大小
 *  - void *: 释放地址
 *  - int count : 页数
 * return : void
 * */
void free_page(void *addr, int count);

/*
 * alloc_mm : 申请内存页
 *  - int mm : 申请大小
 * return : void *返回申请地址，NULL代表申请失败
 * */
void *alloc_mm(int size);

/*
 * free_mm : 释放内存
 *  - void *: 释放地址
 *  - int count : 页数
 * return : void
 * */
void free_mm(void *addr, int size);

#endif //_alloc_h_
