CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11

testbst: testbst.o intbst.o
	$(CXX) $(CXXFLAGS) -o testbst testbst.o intbst.o

testbst.o: testbst.cpp intbst.h
	$(CXX) $(CXXFLAGS) -c testbst.cpp

intbst.o: intbst.cpp intbst.h
	$(CXX) $(CXXFLAGS) -c intbst.cpp

clean:
	rm -f testbst *.o
