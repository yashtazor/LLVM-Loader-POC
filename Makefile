main.o: main.cpp
	g++ -g main.cpp `llvm-config --cxxflags --ldflags --libs core` -o main

input.ll: input.c
	clang -S -emit-llvm input.c

clean:
	rm main.o
	rm input.ll

.PHONY: clean