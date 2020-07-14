#!/bin/dash

# shrug-status test cases
## pre-conditions
./shrug-init
# Initialized empty shrug repository in .shrug

touch a b c
./shrug-add a b c
./shrug-commit -m "initial commit"
# Committed as commit 0

## case 01: file changed compared to last commit, changes is in current directory
echo a >a
./shrug-status
# a - file changed, changes not staged for commit
# b - same as repo
# c - same as repo

## case 02: file changed compared to last commit, change is in index
./shrug-add a
./shrug-status
# a - file changed, changes staged for commit
# b - same as repo
# c - same as repo

## case 03: file changed compared to last commit, change is different between index and current directory
echo a >>a
./shrug-status
# a - file changed, different changes staged for commit
# b - same as repo
# c - same as repo