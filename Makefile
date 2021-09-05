CXX=g++
CXXFLAGS=-g -std=c++11 -Wall -pedantic
BIN=hello

SRC=$(wildcard *.cpp)
OBJ=$(SRC:%.cpp=%.o)

all: $(OBJ)
	$(CXX) -o $(BIN) $^

%.o: %.c
	$(CXX) $@ -c $<

clean:
	@echo "Cleaning up..."
	rm -rvf *.o hello