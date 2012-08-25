all : libmarkdown-converter.dylib

markdown-converter.o : markdown-converter.c
	gcc -o markdown-converter.o -c markdown-converter.c -I /usr/local/Cellar/discount/2.1/include/ 

libmarkdown-converter.dylib : markdown-converter.o
	gcc -dynamiclib -o libmarkdown-converter.dylib -all_load markdown-converter.o -lSystem -L /usr/local/Cellar/discount/2.1/lib -lmarkdown
