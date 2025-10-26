import std.stdio;

void main()
{
    writeln("hello from strings");

    string name = "atturbin";

    for (int i = 0; i < name.length; i++)
    {
        write("char: ", i, " = '", name[i], "' | ");
    }

    // strings aren't mutable
    // we can iterate over the elements to populate a mutable char[].
    char[] mutable_name = [];
    foreach (letter; name)
    {
        mutable_name ~= letter;
    }

    mutable_name[0] = 'b';

    writeln("\n", mutable_name);

    // another way is to duplicate the immutable string
    // into a mutable char[].
    char[] another_mutable_name = [];
    another_mutable_name ~= name.dup;
    another_mutable_name[0] = 'c';
    writeln(another_mutable_name);
}
