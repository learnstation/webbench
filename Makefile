CFLAGS?=	-Wall -ggdb -W -O
CC?=		clang
LIBS?=
LDFLAGS?=
VERSION=1.5

all:   webbench

webbench: webbench.o Makefile
	$(CC) $(CFLAGS) $(LDFLAGS) -o webbench webbench.o $(LIBS) 

clean:
	-rm -f *.o webbench *~ core *.core

webbench.o:	webbench.c socket.c Makefile

.PHONY: clean install all
