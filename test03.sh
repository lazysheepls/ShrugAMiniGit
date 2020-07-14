#!/bin/dash

## preconditions
./shrug-init
# Initialized empty shrug repository in .shrug
touch a b c
./shrug-add a b c
./shrug-commit -m "initial commit"
# Committed as commit 0
echo a >a
echo b >b
echo c >c
./shrug-add a b c
./shrug-commit -m "second commit"
# Committed as commit 1

## case 01: shrug-show with invalid input arguements

./shrug-show a.txt
#shrug-show: error: invalid object a.txt

./shrug-show 4:a.txt
#shrug-show: error: unknown commit '4'

./shrug-show a:a.txt
#shrug-show: error: unknown commit 'a'

./shrug-show 1:c.txt
#shrug-show: error: 'c.txt' not found in commit 1

./shrug-show :d
#shrug-show: error: 'a' not found in index

./shrug-show 1:_a.txt
#shrug-show: error: invalid filename '_a.txt'

./shrug-show
#usage: shrug-show <commit>:<filename>

./shrug-show 0 b.txt
#usage: shrug-show <commit>:<filename>

## case 02: sunny test cases for shrug-show
./shrug-show :b
# b

echo b >>b
./shrug-show :b
# b

./shrug-add b
./shrug-show :b
# b
# b
./shrug-show 1:b
# b