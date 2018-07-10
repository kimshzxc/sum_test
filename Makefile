all: sum_test

sum.o: sum.h sum.cpp
	g++ -o sum.o -c sum.cpp

main.o: sum.h main.cpp
	g++ -o main.o -c main.cpp


sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

clean:
	rm -f *.o
	rm -f sum_test
