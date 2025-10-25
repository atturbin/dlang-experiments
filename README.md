# dlang-experiments

Personal repository containing code snippets I found useful to learn and keep traces of during my journey while learning DLang.

## Prerequisites

- `ldc2` (compiler working with Mac Silicon)
- `tusk` (useful to bootstrap, purge and run local projects)


## How to run projects

A tusk command has been created in this repository.

```bash
git clone git@github.com:atturbin/dlang-experiments.git
tusk run NAME

run $ nl NAME/*
     1	import std.stdio;

     2	void main() {
     3	  writeln("hello from NAME");
     4	}
run $ ldc2 main.d -of=.build/main
run $ exec NAME/.build/main
hello from NAME
0
```
