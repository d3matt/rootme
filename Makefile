MODFLAGS: -Dsubsys_initcall=module_init

all:
	make -C /lib/modules/$(shell uname -r)/build M=$$PWD

clean:
	rm -rf *.o modules.order Module.symvers *.ko *.ko.unsigned rootme.mod.c .*.cmd .tmp_versions

obj-m += rootme.o

rootme-objs := sunxi-debug.o
