#ifndef multi_task_h
#define multi_task_h

#include "mem_util.h"

struct TSS32 {
	int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
	int eip, eflags, eax, ecx, edx, ebx, esp, ebp, esi, edi;
	int es, cs, ss, ds, fs, gs;
	int ldtr, iomap;
};

struct SEGMENT_DESCRIPTOR {
	short limit_low, base_low;
	char base_mid, access_right;
	char limit_high, base_high;
};

struct TASK {
    // sel 表示对应的段描述符小标
    // flags表示当前进程的运行状态空闲还是占用
    int sel, flags; 
    // 优先级
    int priority;
    int level;
    struct FIFO8 *fifo;
    struct TSS32 tss;
};

#define MAX_TASKS       5
#define MAX_TASKS_LV    3
#define MAX_TASKSLEVELS 3

#define TASK_GDT0       7
#define SIZE_OF_TASK    120
#define AR_TSS32		0x0089
#define SIZE_OF_TASKLEVEL  (8+ 4*MAX_TASKS_LV)
#define SIZE_OF_TASKCTL  (4 + 4 + SIZE_OF_TASKLEVEL * MAX_TASKSLEVELS + SIZE_OF_TASK*MAX_TASKS)

struct TASKLEVEL {
    int running;
    int now;
    struct TASK *tasks[MAX_TASKS_LV];
};

struct TASKCTL {
    int now_lv;
    int lv_change;
    // struct TASK *tasks[MAX_TASKS];
    struct TASKLEVEL level[MAX_TASKSLEVELS];
    struct TASK task0[MAX_TASKS];
};

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, 
                    unsigned int limit, int base, int ar);
struct TASK *task_init(struct MEMMAN *memman);
void mt_taskswitch();
struct TIMER *GetStaticTimer();
struct TASK *task_alloc(void);
int task_sleep(struct TASK *task);
struct TASK *task_now(void);



void task_remove(struct TASK *task);

#define PROC_RESUME	0x57
#define PROC_PAUSE	0x58

void send_message(struct TASK *sender, struct TASK *receiver, int msg);

#endif // multi_task_h
