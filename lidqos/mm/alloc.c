/*
 * alloc.c
 *
 *
 * 内存申请：
 *  - 内存申请
 *  - 内存释放
 * */

#ifndef _ALLOC_C_
#define _ALLOC_C_

#include <kernel/alloc.h>

//内存使用位图
u8 *mmap = NULL;

/*
 *  install_alloc: 安装申请内存
 *  return: void
 * */
void install_alloc()
{
    //位图所在的固定内存区域为0x400000 ~ 0x4fffff
    mmap = (u8 *)0x400000;

    for (int i=0; i<MAP_SIZE; i++)
    {
        //mmap所占用的0x500000以下均为已使用
        if (i<MMAP_USED_SIZE)
        {
            //设定内核所占用的1MB内存为己所用
            mmap[i] = MM_USED;
        }
        else
        {
            mmap[i] = MM_FREE;
        }
    }
}

/*
 * alloc_page: 申请内存页，每页为4KB大小
 *  - int count: 页数
 * return: void *返回申请地址，NULL代表申请失败
 * */
void *alloc_page(int count)
{
    //查找内存申请地址
    void *ret = NULL;
    //找到空闲内存页计数
    int num = 0;
    //开始编号
    int start_with = 0;
    //从未分配的内存页地方开始查找
    for (int i=MMAP_USED_SIZE; i<MAP_SIZE; i++)
    {
        //如果找打空闲页
        if (mmap[i] == MM_FREE)
        {
            if (start_with == 0)    //设置课分配内存起始编号
            {
                ret = (void *)(i*MM_PAGE_SIZE);
                start_with = i;
            }
			 num++;
		}
		//如果没有找到空闲页
        else    
        {
            //清空变量
            ret = NULL;
            num = 0;
            start_with = 0;
        }
        //找到了可分配内存页，并且找到了预期想要分配的数量
        if (start_with != 0 && num >= count)
        {
            break;
        } // if start_with
    } //for

    //设置map的各个内存页的状态为己所用
    for (int i=0; i<count; i++)
    {
        mmap[start_with+i] = MM_USED;
    }
	//返回查找内存地址
	return ret;
}

/*
 * alloc_page: 释放内存页，每页为4KB大小
 * - void *addr: 释放地址
 * - int count: 释放页数
 * return: void
 * */
void free_page(void *addr, int count)
{
    //释放内存页
    for (int t=0; t<count; t++)
    {
        //更新mmap中这些页的状态
        mmap[(u32)(addr+(t*MM_PAGE_SIZE))/MM_PAGE_SIZE] = MM_FREE;
    }
}

/*
 * alloc_mm: 申请内存
 *  - int size : 申请大小
 *  return: void *返回申请地址，NULL代表申请失败
 * */
void *alloc_mm(int size)
{
    //如果申请内存大小大于一个页的大小，则按整页分配
    if (size > (MM_PAGE_SIZE-128))
    {
        //计算有多少个内存页
        u32 count = (size/MM_PAGE_SIZE);
        //如果有余数，说明要多分配一个页面
        if (size%MM_PAGE_SIZE != 0)
        {
            count++;
        } //if size%MM_PAGE_SIZE 
        return alloc_page(count);
    } //if size

    //4字节对齐分配内存
    u32 alloc_size = size / 4;
    //如果有余数，说明要多分配一个4字节
    if (size % 4 > 0)
    {
        alloc_size++;
    }

    //i为map下标，j为页内map下标，k为页内字节位偏移，c为查找count
    int i, j, k, c = 0, break_status = 0, run_time = 0;
    //is为起始map下标，js为页内起始mmap下标，ks为页内起始字节偏移
    int is = -1, js = -1, ks = -1;
    //从未被分配内存页的地方开始查找
    for (i = MMAP_USED_SIZE; i < MAP_SIZE && ! break_status; i++)
    {
        //如果是未使用或动态内存 
        if (mmap[i] == MM_FREE || mmap[i] == MM_DYNAMIC) 
        {
            is = -1;
            js = -1;
            ks = -1;
            c  = 0;

            //取得页内map位图
            u8 *mpmap = (u8 *)(i * MM_PAGE_SIZE);
            //跳过前4个字节，并小于128个字节中查找业内位图map
            //一个页面为4097字节，前128字节为业内位图，0x80 * 0x8 * 0x4 = 0x01000 = 4096
            //这个128字节占用业内位图为 0x80 / 0x8 / 0x4 = 0x4字节，所以要跳过前4个字节
            for (j=4; j<128 && !break_status; j++)
            {
                //字节偏移从0到7字节来查找可用内存
                for (k=0; k<8 && ! break_status; k++)
                {
                    //如果可以使用
                    if (((mpmap[j] >> k) & 0x1) == 0)
                    {
                        //设置各项起始号
                        if (is == -1 && js == -1 && ks == -1)
                        {
                            is = i;
                            js = j;
                            ks = k;
                        }
                        //已找到数量自增
                        c++;
                    }
                    else
                    {
                        //各项起始号
                        is = -1;
                        js = -1;
                        ks = -1;
                        c  = 0;
                    }
                    //如果找到可分配内存数量到达预先要申请的数量
                    if (c >= alloc_size)
                    {
                        //跳出
                        break_status = 1;
                    }
                }
            } //for j
        } // if mmap[i]
		//如果内存页为己所用
        else    
        {
            //各项起始号清除
            is = -1;
			js = -1;
            ks = -1;
            c  = 0;
        }
    } // for i

    //清空分配数
    c = 0;
    //正式分配内存
    if (break_status == 1 && is != -1 && js != -1 && ks != -1)
    {
        //从内存位图开始
        for (i=is; i<MAP_SIZE; i++)
        {
            //如果是可分配内存
            if (mmap[i] == MM_FREE || mmap[i] == MM_DYNAMIC)
            {
                //取得页内位图
                u8 *mpmap = (u8*) (i * MM_PAGE_SIZE);
                //从页内位图的第4个字节开始
                for (j = 4; j < 128; j++)
                {
                    //如果是第一次，找到起始地址
                    if (run_time == 0)
                    {
                        j = js;
                    }
                    //页内偏移
                    for (k=0; k<8; k++)
                    {
                        //如果是第一次，找到起始地址
                        if (run_time == 0)
                        {
                            k = ks;
                        }
                        //更新页内位图
                        mpmap[j] |= (1 << k);
                        //找到数量自增
                        c++;
                        //次数+1
                        run_time++;
                        //找到预期的申请数量
                        if (c >= alloc_size)
                        {
                            //将此内存页设定为动态分配
                            mmap[i] = MM_DYNAMIC;
                            //返回申请内存地址
                            return (void *)(is*MM_PAGE_SIZE+(js*8*4)+(ks*4));
                        } //if c>=alloc_size
                    } // for k
                } // for j
            } // if mmap[i] == MM_FREE || ...
        } // for i
    } // if break_status
    return NULL;    //返回空指针
}

/*
 * free_mm : 释放内存
 *  - void* addr : 释放地址
 *  - int size : 释放大小
 * return : void
 */
void free_mm(void *addr, int size)
{
    //如果大小大于一个内存页大小，则按整内存页释放
    if (size > (MM_PAGE_SIZE - 128))
    {
            //计算有多少个内存页
            int count = (size / MM_PAGE_SIZE);
            //如果有余数说明要多释放一个页
            if (size % MM_PAGE_SIZE != 0)
            {
                    count++;
            }
            //释放内存页
            free_page(addr, count);
            return;
    }

    //按4字节对齐释放
    int alloc_size = size / 4;
    //如果有余数则说明要多释放一个4字节空间
    if (size % 4 > 0)
    {
            alloc_size++;
    }
    //释放内存起始号
    int is, js, ks, run_time = 0, count = 0;
    //计算位图起始号
    is = (u32) addr / MM_PAGE_SIZE;
    //计算页内位图起始号
    js = ((u32) addr % MM_PAGE_SIZE) / (8 * 4);
    //计算页内位图位偏移起始号
    ks = ((u32) addr % MM_PAGE_SIZE) % (8 * 4) / 4;
    //从内存页开始
    for (int i = is; i < MAP_SIZE; i++)
    {
            //取得页内偏移
            u8 *mpmap = (u8*) (i * MM_PAGE_SIZE);
            //从页内位图中第4个开始
            for (int j = 4; j < 128; j++)
            {
                    //如果是第1次释放
                    if (run_time == 0)
                    {
                            j = js;
                    }
                    //从页内偏移位开始
                    for (int k = 0; k < 8; k++)
                    {
                            //如果是第1次释放
                            if (run_time == 0)
                            {
                                    k = ks;
                            }
                            //设定页内位图为动态可用内存
                            mpmap[j] &= (~(1 << k));
                            //数量自增
                            count++;
                            //次数自增
                            run_time++;
                            //如果已释放了预期大小的内存
                            if (count >= alloc_size)
                            {
                                    //完成，返回
                                    return;
                            }
                    }
            }
    }
}

#endif //_ALLOC_C_
