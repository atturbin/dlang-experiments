import std.stdio;
import helpers.xhelpers;

unittest
{
    assert(my_test() == "lorem ipsum");
}

string my_test()
{
    string test = "lorem ipsum";
    return test;
}

unittest
{
    assert(another_test() == "another test");
}

string another_test()
{
    string test = "another test";
    return test;
}

void main()
{
    writeln("hello from unittests");
    writeln(my_test);
}
