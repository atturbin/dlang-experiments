import std.stdio;
import helpers.xhelpers;

void if_condition()
{
    if (1 == 1)
    {
        debug_write("test", "1 == 1");
    }
}

void if_condition_no_parens()
{
    if (2 == 2)
        debug_write("test-2", "2 == 2");
}

void if_basic_else()
{
    if (3 == 3)
    {
        debug_write("test-3", "3 == 3");
    }
    else
    {
        debug_write("test-3", "3 != 3");
    }
}

void if_elseif_else()
{
    char a = 'a';
    if (a == 'a')
    {
        debug_write("test-4", "a is a");
    }
    else if (a == 'b')
    {
        debug_write("test-4", "a is b");
    }
    else
    {
        debug_write("test-4", "a is something else");
    }
}

void if_defensive()
{
    int number = 3;

    // make sure we don't assign anything here.
    // would lead to another error as the variable
    // is already assigned, but you never know.
    if (3 == number)
    {
        debug_write("test-5", "3 is number");
    }
}

void switch_statements()
{

    // break instruction are required or
    // the compiler will complain. If you wanna
    // continue after a case match to the next case, then
    // add goto case;
    int number = 2;
    switch (number)
    {
    case 1:
        debug_write("switch", "1");
        break;
    case 2:
        debug_write("switch", "2");
        goto case;
    case 3:
        debug_write("switch", "3");
        break;
    default:
        debug_write("switch", "default");
        break;
    }

    // switch cases can also be applied on ranges:
    // syntax is weird.
    switch (number)
    {
    case 1: .. case 10:
        debug_write("switch-range", "matched!");
        break;
    default:
        debug_write("switch-range", "default");
        break;
    }
}

void multi_conditions()
{
    int number = 7;

    if (number > 3 && number < 10)
    {
        debug_write("multi-conditions", "between 3 and 10");
    }

    if (number > 1 || number < -10)
    {
        debug_write("multi-conditions", "in our range");
    }
}

void ternary()
{
    bool truth = true;

    int amount = truth ? 9999 : -1;
    debug_write("ternary", amount);
}

void while_condition() {
    import std.string :format;
    uint counter = 0;

    while (counter < 10) {
        writeln(format("while: %d", counter));

        if (counter % 3 == 2) {
            writeln("pair!");
        }

        if (counter > 9) {
            break;
        }
        counter++;
    }
}

void while_infinite() {
    import std.stdio : readln;
    string input;
    while(input != "Q\n") {
        debug_write("infinite", "write a letter: ");
        input = readln();
        debug_write("infinite", "still in the loop");
    }
}

void do_while() {
    int counter = 5;
    do {
        writeln(counter);
        counter--;
    } while(counter > -1);
}

void main()
{
    writeln("hello from controlflows");

    // if function take no argument, then
    // we can omit parenthesis. Feels like
    // Ruby <3

    // basic condition shown here
    if_condition;
    // but you can also do like this by
    // omitting parenthesis. Not recommended
    if_condition_no_parens;

    // basic else structure
    if_basic_else;
    // else if structure is as follows
    if_elseif_else;

    // defensive if isn't required but cool.
    if_defensive;

    // switch statements are like in any other
    // classical language.
    switch_statements;

    // multi conditionals
    multi_conditions;

    ternary;
    while_condition;
    while_infinite;
    do_while;
}
