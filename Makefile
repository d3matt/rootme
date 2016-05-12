all:
	make -C /lib/modules/2.6.32-431.el6.x86_64/build M=$$PWD

clean:
	rm -rf *.o modules.order Module.symvers *.ko *.ko.unsigned rootme.mod.c .*.cmd .tmp_versions

obj-m += rootme.o

rootme-objs := sunxi-debug.o
