INC=-I/usr/local/include/libndpi-1.4/libndpi/
LIB=-lpcap -lndpi

pcapReader: pcapReader.c Makefile
	gcc -g pcapReader.c -o pcapReader $(INC) $(LIB)

clean:
	\/bin/rm -f pcapReader
