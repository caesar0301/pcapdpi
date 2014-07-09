## A simple makefile
# Extra headers and libraries from env vars
INC=-I/usr/local/include/libndpi/ -I. -I$(INCLUDE_PATH) -I$(C_INCLUDE_PATH)
LIB=-L$(LIBRARY_PATH)

all: pcapDPI

pcapDPI: pcapReader.c
	gcc -g pcapReader.c -o pcapDPI $(INC) $(LIB) -lpcap -lndpi

clean:
	\/bin/rm -f pcapDPI
