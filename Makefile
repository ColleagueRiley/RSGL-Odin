CC = gcc

ODIN = odin
CUSTOM_CFLAGS =

LIBS := -w -ggdb
LIB_EXT = .lib

all:
	make RSGL$(LIB_EXT)

build-RSGL:
	make RSGL$(LIB_EXT)

debug:
ifeq ($(detected_OS),Windows)
	make clean
	.\build-libs.bat
	make RSGL$(LIB_EXT)
else
	make clean
	make RSGL$(LIB_EXT)
endif

source/RSGL.o:
	$(CC) -I./source $(CUSTOM_CFLAGS) source/RSGL.c -c $(LIBS) -fPIC -o source/RSGL.o

RSGL$(LIB_EXT):
ifeq ($(detected_OS),Windows)
	.\build.bat
else
	make RSGL.o
	$(AR) rcs RSGL.a source/RSGL.o
	mv RSGL.a RSGL.a
endif

clean:
	rm -f source/RSGL.o RSGL$(LIB_EXT)
	rm -f RSGL.lib source/RSGL.obj
