CC = g++ 
OPTS = -O2 -std=c++2a 

ars:	ars.cpp
	 $(CC) $(OPTS) -pthread -o ars ars.cpp

new:	new.cpp
	 $(CC) $(OPTS) -pthread -o new new.cpp

.PHONY: clean
clean:
	rm ars
