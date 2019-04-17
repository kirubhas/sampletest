CC=gcc
CXX=g++
RM=rm -f
CPPFLAGS=-g $(shell root-config --cflags)
LDFLAGS=-g $(shell root-config --ldflags)
LDLIBS=$(shell root-config --libs)

SRCS=shared_pointer.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: shared_pointer

shared_pointer: $(OBJS)
    $(CXX) $(LDFLAGS) -o shared_pointer $(OBJS) $(LDLIBS) 

shared_pointer.o: shared_pointer.cpp

clean:
    $(RM) $(OBJS)

distclean: clean
    $(RM) tool