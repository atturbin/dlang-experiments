import std.stdio;
import std.file;
import dyaml;

struct Task
{
    char[] title;
    bool finished;
}

int main()
{
    if (!exists("input.yaml"))
    {
        writeln("file `input.yaml` does not exist, exiting.");
        return 32;
    }

    Node root = Loader.fromFile("input.yaml").load();

    Task[] all = [];
    foreach (Node t; root["tasks"])
    {
        char[] title = [];
        foreach (char letter; t["title"].as!string)
            title ~= letter;

        Task x = Task(
            title,
            t["finished"].as!bool
        );

        all ~= x;
    }

    for (int i = 0; i < all.length; i++)
    {
        char[] status;
        if (all[i].finished)
        {
            status = "[X]".dup;
        }
        else
        {
            status = "[ ]".dup;
        }

        writefln("%s | %s", status, all[i].title);
    }
    return 0;
}
