#include "win_sheet.h"

struct SHTCTL *shtctl_init(struct MEMMAN *memman, unsigned char *vram,
                            int xsize, int ysize)
{
    struct SHTCTL *ctl;
    int i = 0;
    ctl = (struct SHTCTL *)memman_alloc_4k(memman, SIZE_OF_SHTCTL);
    if (0 == ctl) {
        return 0;
    }

    ctl->vram   = vram;
    ctl->xsize  = xsize;
    ctl->ysize  = ysize;
    ctl->top    = -1;

    for (i = 0; i < MAX_SHEETS; i++) {
        ctl->sheets0[i].flags = 0;
    }
    return ctl;
}

#define SHEET_USE 1
struct SHEET *sheet_alloc(struct SHTCTL *ctl)
{
    struct SHEET *sht = 0;
    int i = 0;
    for (i = 0; i< MAX_SHEETS; ++i) {
        if (ctl->sheets0[i].flags == 0) {
            sht = &ctl->sheets0[i];
	    ctl->sheets[i] = sht;
            sht->flags  = SHEET_USE;
            sht->height = -1;
            return sht;
        }
    }
    return 0;
}
void sheet_setbuf(struct SHEET *sht, unsigned char *buf, 
                    int xsize, int ysize, int col_inv)
{
    sht->buf = buf;
    sht->bxsize = xsize;
    sht->bysize = ysize;
    sht->col_inv = col_inv;
}

void sheet_updown(struct SHTCTL *ctl, struct SHEET *sht, int height)
{
    int h, old = sht->height;
    if (height > ctl->top+1) {
        height = ctl->top+1;
    }

    if (height < -1) {
        height = -1;
    }

    sht->height = height;

    // down
    if (old > height) {
        if (height >= 0) {
            // 把后面的往前面移动 
            for (h = old; h > height; h--) {
                ctl->sheets[h] = ctl->sheets[h-1];
                ctl->sheets[h]->height = h;
            } // for h
            ctl->sheets[height] = sht;
        } else {
            // height < 0表示缩小化，不需要绘制
            if (ctl->top > old) {
                for (h = old; h < ctl->top; h++) {
                    ctl->sheets[h] = ctl->sheets[h+1];
                    ctl->sheets[h]->height = h;
                } // for h
            } // if (ctl->top > old)
			ctl->top--;
        } // if (height >= 0)
        sheet_refresh(ctl); 
    } else if (old < height) { // up
        if (old >= 0) {
            for (h = old; h < height; h++) {
                ctl->sheets[h] = ctl->sheets[h+1];
                ctl->sheets[h]->height = h;
            } // for h
            ctl->sheets[height] = sht;
        } else {
            for (h = ctl->top; h >= height; h--) {
                ctl->sheets[h+1] = ctl->sheets[h];
                ctl->sheets[h+1]->height = h+1;
            } // for h
            
            ctl->sheets[height] = sht;
            ctl->top++;
        }  // if (old >= 0)
        sheet_refresh(ctl); 
    } // if (old > height)
}

int sheet_refresh(struct SHTCTL *ctl)
{
    int h, bx, by, vx, vy;
    unsigned char *buf, c, *vram = ctl->vram;
    struct SHEET *sht;
    for (h = 0; h <= ctl->top; h++) {
        sht = ctl->sheets[h];
        buf = sht->buf;
        // 图层的高度
        for (by = 0; by < sht->bysize; by++) {
            // 转化为屏幕的y坐标
            vy = sht->vy0 + by;
            // 图层的宽度
            for (bx = 0; bx < sht->bxsize; bx++) {
                // 转化为屏幕的x坐标
                vx = sht->vx0 + bx; 
                // 拿出图层的像素点
                c = buf[by*sht->bxsize+bx];
                // 如果不是透明的就需要绘制，透明的则不需要绘制
                if (c != sht->col_inv) {
                    vram[vy*ctl->xsize+vx] = c;
                }
            } // for bx
        } // for by
    } // for h
	return 0;
}

void sheet_slide(struct SHTCTL *ctl, struct SHEET *sht, int vx0, int vy0)
{
    sht->vx0 = vx0;
    sht->vy0 = vy0;
    if (sht->height >= 0) {
        sheet_refresh(ctl);
    }
}

