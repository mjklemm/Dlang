DC=gdc
DFLAGS=-g

#DC=dmd
#DFLAGS=

run: myapp
	@echo "======================"
	@./myapp
	@echo "======================"

all: myapp

myapp: MyException.o Foo.o bla.o
	gdc -g -o $@ MyException.o Foo.o bla.o

%.o: %.d
	gdc -g -c -o $@ $<

clean:
	rm -f *.o

realclean: clean
	rm -f myapp
	rm -f *.bak *~

