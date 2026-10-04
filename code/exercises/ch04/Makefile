# Solution to exercise 4.3: a Makefile for main.f + funcs.f.
# Usage:  make          (or mingw32-make on Windows with MSYS2/MinGW)
#         make clean
# Note: the command lines must start with a TAB character.

FC = gfortran
FFLAGS = -Wall -g

TARGET = twofiles
OBJS = main.o funcs.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(FC) -o $@ $(OBJS)

%.o: %.f
	$(FC) $(FFLAGS) -c $<

clean:
	rm -f $(OBJS) $(TARGET)
