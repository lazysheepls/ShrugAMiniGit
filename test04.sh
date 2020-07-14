#!/bin/dash

## case 01: shrug-commit with message "nothing to commit"
touch a
touch b
echo a >a
echo b >b
./shrug-init
# Initialized empty shrug repository in .shrug

./shrug-commit -a -m "initial commit"
# nothing to commit

echo c >c
./shrug-add c
./shrug-commit -a -m "second commit"
# Committed as commit 1