#!/bin/dash

##case 01: shrug-rm: when --cached --force are both present, need to perfrom safety check in the index folder
./shrug-init
# Initialized empty shrug repository in .shrug

touch a b c
./shrug-add a b c
./shrug-commit -m "first commit"
# Committed as commit 0

./shrug-rm --cached a
# a is removed from the .shrug/index folder (no message in the terminal)

./shrug-rm --force --cached b
# b is removed from the .shrug/index folder (no message in the terminal)

## case 02: handle duplicated input file names
./shrug-rm c c c c c
# c is removed from the current directory and .shrug/index folder (no message in the terminal)