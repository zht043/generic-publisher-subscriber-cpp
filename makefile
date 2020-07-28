
default: trivial_example.exe # message_queue_example.exe observer_example.exe

compiler = clang++
#compiler = g++

boostlib = -lboost_system -lboost_thread -lpthread 

std = -std=c++17

cppflags = $(std) $(boostlib)
 
%.o: %.cpp
	$(compiler) -c $< 

%.exe: %.o
	$(compiler) -g -O0 -o  $@ $< $(cppflags) 
	@rm *.o
	@echo compilation completed

clean:
	@rm -f *.exe
	@rm -f *.o