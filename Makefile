CC = gcc
CXX = g++
DC = ldc
PFLAGS = 
CFLAGS = -std=c2y
CXXFLAGS = -std=c++26
DFLAGS = 
WFLAGS = -pedantic-errors -fanalyzer -Werror -Wall -Wextra
OFLAGS = -flto -O3
LDFLAGS = -flto

all: c link
c++-all: c++ link-c++
d-all: d link-d

check:
	$(CC) -S main.c $(PFLAGS) $(CFLAGS) $(WFLAGS) $(OFLAGS) && rm main.S

check++:
	$(CXX) -S main.cpp $(PFLAGS)  $(CXXFLAGS) $(WFLAGS) $(OFLAGS) && rm main.S

checkd:
	$(DC) -S main.d  $(PFLAGS) $(DFLAGS) $(WFLAGS) $(OFLAGS) && rm main.S

c:
	$(CC) -c main.c $(PFLAGS)  $(CFLAGS) $(WFLAGS) $(OFLAGS)

c++:
	$(CXX) -c main.cpp $(PFLAGS) $(CXXFLAGS) $(WFLAGS) $(OFLAGS)

d:
	$(DC) -c main.d $(PFLAGS)  $(DFLAGS) $(WFLAGS) $(OFLAGS)

link:
	$(CC) -o main main.o $(LDFLAGS)

link++:
	$(CXX) -o main main.o $(LDFLAGS)

linkd:
	$(DC) main.o

clean:
	rm *.obj *.o *.exe *.c~ *.cpp~ *.d~ *.di~ *.html main
