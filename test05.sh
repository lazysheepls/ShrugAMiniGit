#!/bin/dash

# case 01: shrug-rm error: changes staged in index that not yet committed
./shrug-init
# Initialized empty shrug repository in .shrug

touch a b c
./shrug-add a b c
./shrug-commit -m "first commit"
# Committed as commit 0

echo a >>a
./shrug-add a
./shrug-rm a
# shrug-rm: error: 'a' has changes staged in the index