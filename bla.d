import std.stdio;

import Foo;
import MyException;

void main() {
    scope(exit) {
        writeln("This is the scope exit code");
        writeln("Continued, second statement");
    }
    int[] arr = [0, 1, 2, 3, 4, 5];

    foreach(ref a; arr) {
        a++;
    }

    foreach(size_t i, ref int a; arr) {
        a += i;
    }

    foreach(a; arr) {
        writeln("Hello: ", a);
    }

    writeln();

    try {
        auto f = new Foo();
        f.method1();
    }
    catch(MyException e) {
        writeln("Caught exception: ", e.toString());
    }

    writeln("Almost done with main()");
}
