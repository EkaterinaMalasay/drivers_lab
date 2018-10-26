ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
KDIR := /lib/modules/3.13.0-160-generic/build/

all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif