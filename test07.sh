#!/bin/dash

##(the operated files in the current dir is different from the one in index, then only shrug-rm would report error, shrug-rm --force would not)

## pre-conditions
./shrug-init
# Initialized empty shrug repository in .shrug

touch a b c
./shrug-add a b c
./shrug-commit -m "first commit"
# Committed as commit 0

echo a >a
echo b >b
echo c >c

## case 01: file in current directory is different from the one in the index, shrug-rm would report error
./shrug-rm a
# shrug-rm: error: 'a' in repository is different to working file

./shrug-rm --cached a
# a is removed from .shrug/index folder (no message in terminal)

./shrug-rm --force a
# shrug-rm: error: 'a' is not in the shrug repository

./shrug-rm b
# shrug-rm: error: 'b' in repository is different to working file

./shrug-rm --force b
# b is removed from current directory and .shrug/index (no message in terminal)