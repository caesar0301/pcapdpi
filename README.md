pcapDPI
=======

A program to use nDPI (openDPI) to detect flow protocols which 
is modified based on the nDPI example in the source package.

* Modifications

Add a -w option.

Add a simple tree walker of the internal search tree implemented
by nDPI to index flows efficiently.

Output file has a .csv format which is accepted directly by plenty
of data processing softwares. A piece of text for ex.

	source_ip source_port dest_ip dest_port l4_proto detect_proto packets bytes
	202.120.32.7 27753 114.112.67.195 80 TCP 7/HTTP 7 751
	192.88.99.1 0 202.120.32.7 0 41 0/Unknown 485 64975
	210.46.79.1 51752 202.120.32.7 27955 TCP 0/Unknown 3 194
	192.88.99.1 0 202.120.32.7 0 41 0/Unknown 485 64975

* How To Use

First, you must have nDPI installed. A standard linux package installation
operation can make it available in your system. Note: After `make install`,
you should copy all the header files in src/include folder to your local include
path. Some of these headers are required but not installed with this command.

Finally, you will have libndpi-header-file folder in your local include path and libndpi** 
in your local library path. For example, on my system, "/usr/local/include/libndpi-1.4/libndpi/"
contains all the headers "/usr/local/lib" stores all the libndpi.**.

If the make command can't find these .h and/or libraries from your system 
envirement variables, you can edit the Makefile with INC and/or LIB variables to search
your local folders.

Happy working.

by chenxm
2013-03-16

