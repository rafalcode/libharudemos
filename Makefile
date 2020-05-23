CC=gcc
# CFLAGS=-O3
CFLAGS=-g -Wall
DBGCFLAGS=-g -Wall -DDBG
DBG2CFLAGS=-g -Wall -DDBG2
TDBGCFLAGS=-g -Wall -DDBG # True debug flags!

LIBS=-lhpdf
LIBS2=-lhpdf -lpng -lz -lm
EXES=outl sshow arc_demo

outl: outl.c
	${CC} ${CFLAGS} -o $@ $^ $(LIBS2)

arc_demo: arc_demo.c
	${CC} ${CFLAGS} -o $@ $^ $(LIBS2)

# slide show also works. In fact I didn't know you could do this with pdf
sshow: sshow.c
	${CC} ${CFLAGS} -o $@ $^ $(LIBS2)

attach: attach.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

character_map: character_map.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

chfont_demo: chfont_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

encoding_list: encoding_list.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

encryption: encryption.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

ext_gstate_demo: ext_gstate_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

font_demo: font_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

grid_sheet: grid_sheet.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

image_demo: image_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

jpeg_demo: jpeg_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

jpfont_demo: jpfont_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

line_demo: line_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

link_annotation: link_annotation.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

make_rawimage: make_rawimage.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

outline_demo: outline_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

outline_demo_jp: outline_demo_jp.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

permission: permission.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

png_demo: png_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

raw_image_demo: raw_image_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

slide_show_demo: slide_show_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

text_annotation: text_annotation.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

text_demo2: text_demo2.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

text_demo: text_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

ttfont_demo: ttfont_demo.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

ttfont_demo_jp: ttfont_demo_jp.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

.PHONY: clean

clean:
	rm -f ${EXES}
