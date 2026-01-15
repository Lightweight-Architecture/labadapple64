# Makefile

all: compile execute clean

compile:
	la64asm -o labadapple64.o src/*.l64
	cat labadapple64.o vid.bitmask > labadapple64
	rm labadapple64.o

execute:
	la64 ./labadapple64

clean:
	rm labadapple64
