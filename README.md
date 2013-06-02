pcapDPI
=======

A program modified based on the nDPI example in the source package 
to use nDPI (openDPI) interfaces to detect flow protocols.

Modifications
-----------

Add a `-w` option to the example program in nDPI.

Add a simple tree walker of the internal search tree implemented
by nDPI to index flows efficiently.

Output file has a .csv format which is accepted directly by plenty
of data processing softwares. A piece of text for ex.

	source_ip source_port dest_ip dest_port l4_proto detect_proto packets bytes
	202.233.233.233 27753 114.112.67.195 80 TCP 7/HTTP 7 751
	192.88.99.1 0 202.233.233.233 0 41 0/Unknown 485 64975
	210.46.79.1 51752 202.233.233.233 27955 TCP 0/Unknown 3 194
	192.88.99.1 0 202.233.233.233 0 41 0/Unknown 485 64975

How To Install
------------

Users can make pcapDPI work following two steps:


First, you must have nDPI installed. nDPI can be obtained from its website: http://www.ntop.org/products/ndpi/ and
a standard linux package installation operation can be made to install it on your system.


* COPY HEADER FILES MANUALLY: some header files like `linux_compact.h` are not installed by default when installing
nDPI with command `make install`. You should copy them into your local include path manually. E.g., on my computer
running Ubuntu 12.04 32bit, run following commands to get there:


        $cd nDPI 
        $cp src/include/*.h /usr/local/include/libndpi-1.4/libndpi/


Second, download pcapDPI from https://github.com/caesar0301/pcapDPI and simply run `make` to compile it.


* NOTE: if the `make` command raises errors about finding header files and/or libraries in your system 
envirement variables, you can edit the Makefile with `INC` and/or `LIB` variables to search
your local folders.


Happy coding.


by chenxm
2013-03-16
