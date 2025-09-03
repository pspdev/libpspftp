TARGET_LIB=libpspftp.a

C_OBJS = \
	src/ftp.o \
	src/ftpd.o \
	src/ftpclient.o \
	src/loadutil.o \
	src/psp_cfg.o \
	src/psp_init.o \
	src/sutils.o \
	

OBJS = $(C_OBJS)

all: $(TARGET_LIB)

PSPSDK=$(shell psp-config --pspsdk-path)

CC=psp-gcc
INCDIR = include
CFLAGS = -std=c99 -Wall -Os -G0 -fno-pic
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)
LIBDIR =

include $(PSPSDK)/lib/build.mak
