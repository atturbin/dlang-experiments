import std.stdio;
import helpers.xhelpers;
import std.random;
import std.string;
import std.conv;

int main() {

  uint f = uniform!uint() % 100;
  uint input;

  while (input != f) {

    writeln("guess the number ! Your choice: ");
    string userInput = readln().chomp();
    input = parse!uint(userInput);

    if (f > input){
      writefln("%d is too small!", input);
    } else if (f < input) {
      writefln("%d is too big!", input);
    } else {
        break;
    }
  }

  writefln("success, the number was: %d", f);
  return 0;
}
