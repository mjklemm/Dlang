import std.stdio;

import MyException;

class Foo {
    private int x;

    this() {
        x = 42;
        writeln("Foo.this() called, x=", x);
    }

    void method1() {
        scope(success) {
            writeln("method1 completed successfully");
        }
        scope(failure) {
            writeln("method1 completed with error");
        }
        scope(exit) {
            writeln("method1 completed");
        }
        writeln("Called Foo.method1(), x=", x);
        this.method2();
        writeln("Close to the of method1");
    }

    void method2() {
        throw new MyException("My first exception");
    }
}

