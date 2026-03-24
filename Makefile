CC = gcc
CXX = g++
WFLAGS = -pedantic-errors -fanalyzer -Werror -Wextra -flto -O3
CFLAGS = -std=c2y
CXXFLAGS = -std=c++26
SRC =
LDFLAGS = -flto


c:
	$(CC) -c main.c $(CFLAGS) $(WFLAGS)

c++:
	$(CXX) -c main.cpp $(CXXFLAGS) $(WFLAGS) 

link:
	$(CC) -o main main.o $(LDFLAGS)

link++:
	$(CXX) -o main main.o $(LDFLAGS)

clean:
	rm *.obj *.o *.exe *.c~ *.cpp~ *.d~ *.di~ *.html main