#define TXTLEFT 0
#define TXTRIGHT 1
#define TXTCENTERX 2
#define TXTUSERBASE 0
#define TXTDEFBASE 4
#define TXTINCX 8
#define TXTINCY 16
#define TXTINCXY 24
#define TXTNOTRANS 0
#define TXTTRANS 32
#define TXTBOTTOM 0
#define TXTTOP 64
#define TXTCENTERY 128

extern "C" pascal far void initx(void);
extern "C" pascal far void donex(void);
extern "C" pascal far void putpixel(unsigned int x, unsigned int y,
  unsigned int c);
extern "C" pascal far unsigned char getpixel(unsigned int x, unsigned int y);
extern "C" pascal far void line(unsigned int x1, unsigned int y1,
  unsigned int x2, unsigned int y2, unsigned int c);
extern "C" pascal far void hline(unsigned int x1, unsigned int y,
  unsigned int x2, unsigned int c);
extern "C" pascal far void box(unsigned int x1, unsigned int y1,
  unsigned int x2, unsigned int y2, unsigned int c);
extern "C" pascal far void fillbox(unsigned int x1, unsigned int y1,
  unsigned int x2, unsigned int y2, unsigned int c);
extern "C" pascal far void circle(unsigned int x, unsigned int y,
  unsigned int rx, unsigned int ry, unsigned int c);
extern "C" pascal far void fillcircle(unsigned int x, unsigned int y,
  unsigned int rx, unsigned int ry, unsigned int c);
extern "C" pascal far void getpalette(void far *pal);
extern "C" pascal far void enter400(void);
extern "C" pascal far void leave400(void);
extern "C" pascal far void clearx(void);
extern "C" pascal far void setapage(unsigned int page);
extern "C" pascal far unsigned char getapage(void);
extern "C" pascal far void setvpage(unsigned int page);
extern "C" pascal far unsigned char getvpage(void);
extern "C" pascal far void switchpage(unsigned int page1,
  unsigned int page2);
extern "C" pascal far void waitretrace(void);
extern "C" pascal far unsigned int imagesize(unsigned int x1,
  unsigned int y1, unsigned int x2, unsigned int y2);
extern "C" pascal far void getimage(unsigned int x1, unsigned int y1,
  unsigned int x2, unsigned int y2, void far *buffer);
extern "C" pascal far void putimage(unsigned int x, unsigned int y,
  void far *buffer);
extern "C" pascal far void putsprite(unsigned int x, unsigned int y,
  void far *buffer);
extern "C" pascal far int openfont(char far *fontname, void far *buffer);
extern "C" pascal far int closefont(void far *buffer);
extern "C" pascal far unsigned int textwidth(char far *text);
extern "C" pascal far unsigned int textheight(char far *text);
extern "C" pascal far void printxy(unsigned int x, unsigned int y,
  char far *text);
extern "C" pascal far void settextstyle(unsigned char style,
  unsigned char fgcolor, unsigned char bgcolor);
extern "C" pascal far void usefont(void far *buffer);
extern "C" pascal far int sinus(int x);
extern "C" pascal far int cosinus(int x);
