CC = gcc

all: commands

commands: main.o commands.o
		$(CC) -o commands main.o commands.o

main.o: main.c
		$(CC) -c main.c

commands.o: commands.c
		$(CC) -c commands.c

clean:
		rm -f commands main.o commands.o
