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
            sheet_refreshsub(ctl, sht->vx0, sht->vy0, 
                         sht->vx0+sht->bxsize, sht->vy0+sht->bysize, height+1); 
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
        sheet_refreshsub(ctl, sht->vx0, sht->vy0, 
                     sht->vx0+sht->bxsize, sht->vy0+sht->bysize, 0); 
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
        sheet_refreshsub(ctl, sht->vx0, sht->vy0, 
                         sht->vx0+sht->bxsize, sht->vy0+sht->bysize, height); 
    } // if (old > height)
}

int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sht, int bx0, int by0,
                    int bx1, int by1)
{
    if (sht->height >= 0) {
        sheet_refreshsub(ctl, sht->vx0+bx0, sht->vy0+by0, 
                            sht->vx0+bx1, sht->vy0+by1, sht->height);
    }
    return 0;
}

void sheet_slide(struct SHTCTL *ctl, struct SHEET *sht, int vx0, int vy0)
{
    
    int old_vx0 = sht->vx0, old_vy0 = sht->vy0;
    sht->vx0 = vx0;
    sht->vy0 = vy0;
    if (sht->height >= 0) {
        sheet_refreshsub(ctl, old_vx0, old_vy0, 
                            old_vx0 + sht->bxsize, old_vy0 + sht->bysize, 0);
        sheet_refreshsub(ctl, vx0, vy0, vx0+sht->bxsize, 
                            vy0+sht->bysize, sht->height);
    }

}
void sheet_refreshsub(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, 
                        int h0)
{
    int h, bx, by, vx, vy;
    unsigned char *buf, c, *vram = ctl->vram;
    struct SHEET *sht;

    if (vx0 < 0) { vx0 = 0; }
    if (vy0 < 9) { vy0 = 0; }

    if (vx1 > ctl->xsize) { vx1 = ctl->xsize; }
    if (vy1 > ctl->ysize) { vy1 = ctl->ysize; }

    for (h = h0; h <= ctl->top; ++h) {
        sht = ctl->sheets[h];
    
        buf = sht->buf;
        // 图层的高度
        for (by = 0; by < sht->bysize; by++) {
            // 转化为屏幕的y坐标
            vy = sht->vy0 + by;
            for (bx = 0; bx < sht->bxsize; bx++) {
                // 转化为屏幕的x坐标
                vx = sht->vx0 + bx;
                if (vx0 <= vx && vx < vx1 && vy0 <= vy && vy < vy1) {
                    // 拿出图层的像素点
                    c = buf[by * sht->bxsize + bx];
                    // 如果不是透明的就需要绘制，透明的则不需要绘制
                    if (c != sht->col_inv) {
                        vram[vy * ctl->xsize + vx] = c;
                    }
                }
            }
        }

    }
}


