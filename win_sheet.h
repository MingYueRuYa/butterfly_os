#ifndef WIN_SHEET_H
#define WIN_SHEET_H

#include "mem_util.h"

struct SHEET {
    unsigned char *buf;
    int bxsize, bysize, vx0, vy0, col_inv, height, flags;
};

#define MAX_SHEETS 256
struct SHTCTL {
    unsigned char *vram;
    int xsize, ysize, top;
    // 指向的图层指针
    struct SHEET *sheets[MAX_SHEETS];
    // 图层数据
    struct SHEET sheets0[MAX_SHEETS];
};

#define SIZE_OF_SHEET 32
#define SIZE_OF_SHTCTL 9232

struct SHEET *sheet_alloc(struct SHTCTL *ctl);
struct SHTCTL *shtctl_init(struct MEMMAN *memman, unsigned char *vram,
                            int xsize, int ysize);
void sheet_setbuf(struct SHEET *sht, unsigned char *buf, 
                    int xsize, int ysize, int col_inv);
void sheet_updown(struct SHTCTL *ctl, struct SHEET *sht, int height);
int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sht, int bx0, int by0, int bx1, int by1);

void sheet_slide(struct SHTCTL *ctl, struct SHEET *sht, int vx0, int vy0);

void sheet_refreshsub(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, 
                        int h0);
#endif // WIN_SHEET_H
