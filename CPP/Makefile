CC = g++ 
OPTS = -O2 -std=c++2a 
ARS = ars
SRC = ars.cpp

$(ARS):	$(SRC)
	 $(CC) $(OPTS) -pthread -o $(ARS) $(SRC)

.PHONY: clean
clean:
	rm $(ARS) 
