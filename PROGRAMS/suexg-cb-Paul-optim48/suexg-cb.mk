CFLAGS = -g -O3 -MD -enable-auto-import
#CFLAGS += -march=k8-sse3 -mtune=k8-sse3
DFLAGS = -DWIN32
IFLAGS = -I.

.SUFFIXES: .o .cpp

CSRC = \
  suexg-cb.cpp bb_sudoku_solver.cpp
        
COBJ = $(CSRC:.cpp=.o)

CPP = g++
AR = ar

all : clean suexg-cb.exe

clean ::
	@rm -fr $(COBJ) suexg-cb.exe libbbsolver.a

libbbsolver.a : bb_sudoku_solver.o
	$(AR) -r $@ $^

suexg-cb.exe : suexg-cb.o libbbsolver.a
	$(CPP) $(CFLAGS) $(DFLAGS) $(IFLAGS) -o$@ $^ 

.cpp.o ::
	$(CPP) -c $(CFLAGS) $(DFLAGS) $(IFLAGS) $<

