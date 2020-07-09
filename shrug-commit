#!/bin/dash

is_format_valid="false"

# Check command format
if [ $# -eq 3 ] && [ $2 = "-m" ]
then
    is_format_valid="true"
elif [ $# -eq 4 ] && [ $2 = "-a" ] && [ $3 = "-m" ]
then
    is_format_valid="true"
fi

if [ $is_format_valid = "false" ]
then
    echo "usage: shrug-commit [-a] -m commit-message"
    exit 1
fi

echo "no error"

# error usage: when -a or -m does not macth
# error usage: when no commit message

# message when index is up to date: nothing to commit