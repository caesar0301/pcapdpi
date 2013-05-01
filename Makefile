INC=-I/usr/local/include/libndpi-1.4/libndpi/
LIB=-lpcap -lndpi

pcapDPI: pcapReader.c Makefile
	gcc -g pcapReader.c -o pcapDPI $(INC) $(LIB)

clean:
	\/bin/rm -f pcapDPI
