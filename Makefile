CC = gcc
CXX = g++
DC = ldc
CFLAGS = -std=c2y
CXXFLAGS = -std=c++26
DFLAGS = 
WFLAGS = -pedantic-errors -fanalyzer -Werror -Wextra
OFLAGS = -flto -O3
LDFLAGS = -flto

all: c link
c++-all: c++ link-c++
d-all: d link-d

c:
	$(CC) -c main.c $(CFLAGS) $(WFLAGS) $(OFLAGS)

c++:
	$(CXX) -c main.cpp $(CXXFLAGS) $(WFLAGS) $(OFLAGS)

d:
	$(CXX) -c main.d $(DFLAGS) $(WFLAGS) $(OFLAGS)

link:
	$(CC) -o main main.o $(LDFLAGS)

link-c++:
	$(CXX) -o main main.o $(LDFLAGS)

link-d:
	$(DC) main.o

clean:
	rm *.obj *.o *.exe *.c~ *.cpp~ *.d~ *.di~ *.html main