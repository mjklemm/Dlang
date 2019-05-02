DC=gdc
DFLAGS=-g

#DC=dmd
#DFLAGS=

run: myapp
	@echo "======================"
	@./myapp
	@echo "======================"

all: myapp

myapp: Foo.o bla.o
	gdc -o $@ Foo.o bla.o

%.o: %.d
	gdc -c -o $@ $<

clean:
	rm -f *.o

realclean: clean
	rm -f myapp
	rm -f *.bak *~

