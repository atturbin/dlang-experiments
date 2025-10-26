module helpers.xhelpers;
import std.stdio;

void debug_write(string part, char what)
{
    writeln(part, ": ", what);
}

void debug_write(string part, string what)
{
    writeln(part, ": ", what);
}

void debug_write(string part, int what)
{
    writeln(part, ": ", what);
}

void debug_write(string part, char[] what)
{
    writeln(part, ": ", what);
}
