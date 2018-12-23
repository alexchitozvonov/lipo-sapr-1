
CC=g++

CFLAGS=-c

OFLAG=-o

CPPUNIT_FLAGS=-I$CPPUNIT_HOME/include -L$CPPUNIT_HOME/lib -lcppunit

OFILE=print_program

all: $(OFILE)

$(OFILE): Printer.o main.o
	$(CC) Printer.o main.o $(CPPUNIT_FLAGS) $(OFLAG) $(OFILE)
	
Printer.o: Printer.cpp
	$(CC) $(CFLAGS) Printer.cpp
	
main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp
	
clean:
	rm -rf *.o $(OFILE)
	
install:
	cp $(OFILE) /usr/local/bin/$(OFILE)
	
uninstall:
	rm -f /usr/local/bin/$(OFILE)