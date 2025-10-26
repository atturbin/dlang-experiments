# dlang-experiments

Personal repository containing code snippets I found useful to learn and keep traces of during my journey while learning DLang.

## Prerequisites

- `ldc2` (compiler working with Mac Silicon)
- `tusk` (useful to bootstrap, purge and run local projects)

## Projects index

Running the following command will configure a `x-NAME` subdirectory where `x` is a unique ID.

```
tusk bootstrap NAME
```

A `.store` file will contain aligments between `NAME` and system `x-NAME` so you are able to execute projects as explained below.

## How to run projects

When projects are created, the `tusk run` command let you inspect, compile, run and explore results.
The `NAME` argument is the `NAME` you choose and doesn't contain the internal selected index `x`.

```bash
git clone git@github.com:atturbin/dlang-experiments.git
tusk run x-NAME

run $ nl x-NAME/*
     1	import std.stdio;

     2	void main() {
     3	  writeln("hello from NAME");
     4	}
run $ ldc2 main.d -of=.build/main
run $ exec x-NAME/.build/main
hello from NAME
0
```
