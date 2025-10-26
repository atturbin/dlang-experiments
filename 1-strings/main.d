import std.stdio;
import std.string;
import helpers.xhelpers;

void immutable_string()
{
    string example = "immutable string";
    debug_write("immutable_string", example);
}

void immutable_string_forloop()
{
    char[] example = "immutable string".dup;
    for (int i = 0; i < example.length; i++)
    {
        debug_write(format("immutable_string_forloop - %d", i), example[i]);
    }
}

void mutable_char_from_immutable()
{
    string example = "immutable string";
    char[] mutable;

    foreach (character; example)
    {
        mutable ~= character;
    }

    mutable[0] = 'b';
    assert(mutable == "bmmutable string");
    debug_write("mutable_char_from_immutable", mutable);
}

void mutable_char_from_dup()
{
    string example = "immutable string";
    char[] copy = example.dup();

    copy[0] = 'c';

    assert(copy == "cmmutable string");
    debug_write("mutable_char_from_dup", copy);
}

void main()
{
    // strings are immutable
    immutable_string();
    // you can iterate over strings as they are an alias for char[].
    immutable_string_forloop();

    // as they are immutable, you need to iterate over them
    // to populate a new mutable char[].
    mutable_char_from_immutable();

    // you can also use the strings.dup property to transform
    // a string to a char[].
    mutable_char_from_dup();
}
