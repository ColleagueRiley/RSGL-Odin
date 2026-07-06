CC = gcc

ODIN = odin
CUSTOM_CFLAGS =

LIBS := -w -ggdb
ifeq ($(detected_OS),Windows)
	LIB_EXT = .lib
else
	LIB_EXT = .a
endif

all:
	make lib/RSGL$(LIB_EXT)

build-RSGL:
	make lib/RSGL$(LIB_EXT)

debug:
ifeq ($(detected_OS),Windows)
	make clean
	.\build-libs.bat
	make lib/RSGL$(LIB_EXT)
else
	make clean
	make lib/RSGL$(LIB_EXT)
endif

source/RSGL.o:
	$(CC) -I./source $(CUSTOM_CFLAGS) source/RSGL.c -c $(LIBS) -fPIC -o source/RSGL.o

lib/RSGL$(LIB_EXT):
ifeq ($(detected_OS),Windows)
	.\build.bat
else
	mkdir -p lib
	make source/RSGL.o
	$(AR) rcs RSGL.a source/RSGL.o
	mv RSGL.a lib/
endif

clean:
	rm -f RSGL.o source/RSGL.o
	rm -r -f lib 
	rm -f RSGL.obj RSGL.lib source/RSGL.obj
