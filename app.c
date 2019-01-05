void api_putchar(int c);
void api_putstr(char *s);
int api_openwin(char *buf, int xsiz, int ysiz, int col_inv, char *title);
void api_putstrwin(int win, int x, int y, int col, int len, char *str);
void api_boxfilwin(int win, int x0, int y0, int x1, int y1, int col);
void api_point(int win, int x, int y, int col);

#define _A 214013LL
#define _B 2531011LL

int ran = 23;

int rand() {
    return ((ran = ran * _A + _B)>>16) & 0x7fff;
}


void main()
{
	char buf[150 * 50];
	int win;
	win = api_openwin(buf, 150, 50, -1, "hello");
	api_boxfilwin(win, 8, 36, 141, 43, 3);
	api_putstrwin(win, 28, 28, 0, 12, "hello, world");
    
//    char buf[160 * 100];
//    int win;
//    win = api_openwin(buf, 160, 100, -1, "star");
//    api_boxfilwin(win, 6, 26, 143, 93, 0);
//    api_point(win, 75, 59, 3);

    return;
}
