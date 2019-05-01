run: myapp
	@echo "======================"
	@./myapp
	@echo "======================"

all: myapp

myapp: Foo.o bla.o
	dmd -of=$@ Foo.o bla.o

%.o: %.d
	dmd -c -of=$@ $<

clean:
	rm -f *.o

realclean: clean
	rm -f myapp
	rm -f *.bak *~

