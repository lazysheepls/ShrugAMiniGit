#!/bin/dash

## case 01: shrug-add: handle duplicated input arguments
# step 1
./shrug-init
touch a b c
./shrug-add a b a c b
# a b c added to index with no error (no message)

## case 02: shrug-add: handle file removal
# step 1
./shrug-commit -m "initial commit"
# Committed as commmit 0

# step 2
rm a
./shrug-commit -m "second commit"
# nothing to commit

# step 3
./shrug-add a
./shrug-commit -m "second commit"
# Committed as commit 1

# step 4
./shrug-status
# a - deleted
# b - same as repo
# c - same as repo