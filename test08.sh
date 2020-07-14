#!/bin/dash
# shrug-status test cases

## pre-conditions
./shrug-init
# Initialized empty shrug repository in .shrug

touch a b c
./shrug-add a b c
./shrug-commit -m "initial commit"
# Committed as commit 0

## case 01: untracked file
touch d
./shrug-status
# a - same as repo
# b - same as repo
# c - same as repo
# d - untracked

## case 02: file added to index
./shrug-add d
./shrug-status
# a - same as repo
# b - same as repo
# c - same as repo
# d - added to index

## case 03: file removed from current directory
rm a
./shrug-status
# a - file deleted
# b - same as repo
# c - same as repo
# d - added to index
