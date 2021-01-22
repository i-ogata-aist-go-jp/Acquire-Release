# CC = g++ 
CC = aarch64-linux-gnu-g++-8
OPTS = -O2 -std=c++2a -S
SRC = sample.cpp

sample:	$(SRC)
	 $(CC) $(OPTS) -pthread $(SRC)
