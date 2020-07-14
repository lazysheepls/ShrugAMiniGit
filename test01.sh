#!/bin/dash

## case 01: handle file addition
# step 1
./shrug-init
# Initialized empty shrug repository in .shrug

# step 2
touch a b c
./shrug-add a b c
./shrug-commit -m "initial commit"
# Committed as commmit 0

# step 3
touch d
./shrug-commit -m "second commit"
# nothing to commit

# step 4
./shrug-add d
./shrug-commit -m "second commit"
# Committed as commit 1