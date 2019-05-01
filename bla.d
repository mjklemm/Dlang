import std.stdio;

import Foo;

void main() {
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

    auto f = new Foo();
    f.method1();
}
