#!/bin/dash

## case 01: test error message when shrug is not initialized
./shrug-add
#shrug-add: error: no .shrug directory containing shrug repository exists

./shrug-commit
# shrug-commit: error: no .shrug directory containing shrug repository exists

./shrug-log
# shrug-log: error: no .shrug directory containing shrug repository exists

./shrug-show
# shrug-show: error: no .shrug directory containing shrug repository exists

./shrug-rm
# shrug-rm: error: no .shrug directory containing shrug repository exists

## case 02: test error message when shrug is initialized but there is no commit yet
./shrug-init
# Initialized empty shrug repository in .shrug

./shrug-log
# shrug-log: error: your repository does not have any commits yet

./shrug-status
# shrug-status: error: your repository does not have any commits yet

## case 03: shrug command with wrong number of arguements
./shrug-add
# usage: shrug-add <filenames>

touch a
./shrug-add a
./shrug-commit
# usage: shrug-commit [-a] -m commit-message

./shrug-commit -m "initial commit"
# Committed as commit 0

./shrug-rm
# usage: shrug-rm [--force] [--cached] <filenames>