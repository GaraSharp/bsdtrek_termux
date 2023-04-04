# title : Makefile for termux
# begin : 2023-01-19 05:19:43 

CC		= gcc
CFLAGS		= -g -O0 -std=c99 -D_XOPEN_SOURCE=600 -Wall -Wno-error=unused-result  -Werror -fcommon -fsigned-char
LIBS		= -lm
OBJS		= *.o
SRCS		= *.c
PROGRAM	= trek

all:		$(PROGRAM)

$(PROGRAM):	$(OBJS)
		$(CC) $(OBJS)  $(LIBS) -o $(PROGRAM)

$(OBJS):	$(SRCS)
		$(CC) $(CFLAGS) -c $(SRCS)

clean:		
		rm -f *.o *~ $(PROGRAM)

