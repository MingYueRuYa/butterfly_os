#ifndef multi_task_h
#define multi_task_h

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
    struct TSS32 tss;
};

#define MAX_TASKS       5
#define TASK_GDT0       7
#define SIZE_OF_TASK    112
#define AR_TSS32		0x0089
#define SIZE_OF_TASKCTL (4+4+4*MAX_TASKS+SIZE_OF_TASK*MAX_TASKS)

struct TASKCTL {
    int running;
    int now;
    struct TASK *tasks[MAX_TASKS];
    struct TASK task0[MAX_TASKS];
};

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, 
                    unsigned int limit, int base, int ar);
struct TASK *task_init(struct MEMMAN *memman);
void mt_taskswitch();
struct TIMER *GetStaticTimer();
struct TASK *task_alloc(void);
void task_sleep(struct TASK *task);

#endif // multi_task_h
