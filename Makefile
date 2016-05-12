all:
	make -C /lib/modules/$(shell uname -r)/build M=$$PWD

clean:
	rm -rf *.o modules.order Module.symvers *.ko *.ko.unsigned rootme.mod.c .*.cmd .tmp_versions

obj-m += rootme.o

rootme-objs := rootme_main.o
