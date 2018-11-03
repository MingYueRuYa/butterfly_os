#include "multi_task.h"
#include "timer.h"

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar)
{
	if (limit > 0xfffff) {
		ar |= 0x8000; /* G_bit = 1 */
		limit /= 0x1000;
	}
	sd->limit_low    = limit & 0xffff;
	sd->base_low     = base & 0xffff;
	sd->base_mid     = (base >> 16) & 0xff;
	sd->access_right = ar & 0xff;
	sd->limit_high   = ((limit >> 16) & 0x0f) | ((ar >> 8) & 0xf0);
	sd->base_high    = (base >> 24) & 0xff;
	return;
}

static int mt_tr;
static struct TIMER *mt_timer;

void mt_init(void) {
    mt_timer = timer_alloc();
 
    timer_settime(mt_timer, 100);
    mt_tr = 7*8;
    return;
}

void mt_taskswitch() {
    if (mt_tr == 7*8) {
        mt_tr = 9*8;
    } else {
        mt_tr = 7 * 8;
    }

    timer_settime(mt_timer, 100);
    farjmp(0, mt_tr);
    return;
}

struct TIMER *GetStaticTimer()
{
    return mt_timer;
}

