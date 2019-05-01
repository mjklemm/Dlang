import std.stdio;

class Foo {
    private int x;

    this() {
        x = 42;
        writeln("Foo.this() called, x=", x);
    }

    void method1() {
        writeln("Called Foo.method1(), x=", x);
    }
}

