all:
	make -C /lib/modules/`uname -r`/build SUBDIRS=`pwd` modules CONFIG_AX88796=m V=1

install:
	make -C /lib/modules/`uname -r`/build SUBDIRS=`pwd` modules_install CONFIG_AX88796=m V=1

.phony: all
#
# Makefile for the 8390 network device drivers.
#

obj-$(CONFIG_AX88796) += ax88796.o
