# CC = g++ 
#
#   $ sudo apt install gcc-8-aarch64-linux-gnu
#   $ sudo apt install g++-8-aarch64-linux-gnu
#   $ aarch64-linux-gnu-g++-8 sample.cpp
#
CC = aarch64-linux-gnu-g++-8
OPTS = -O2 -std=c++2a -S
SRC = sample.cpp

sample:	$(SRC)
	 $(CC) $(OPTS) -pthread $(SRC)
