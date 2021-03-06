CXX	:=gcc
CXXFLAGS:=-O2 -Wall
LDFLAGS	:=-lncurses -lm

TARGET	:=pong

.phony: run all clean


all: ${TARGET}

clean: 
	rm -rf ${TARGET}

${TARGET}: % : %.c
	${CXX} ${CXXFLAGS} $^ ${LDFLAGS}  -o $@
