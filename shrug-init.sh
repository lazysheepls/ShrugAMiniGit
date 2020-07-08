#!/bin/dash

# print usage info when there is some arguements
if [ $# -ne 0 ]
then
    echo "usage: shrug-init"
    exit 1
fi

# Check if .shrug folder exist
if [ -e ".shrug" ]
then
    echo "shrug-init: error: .shrug already exists"
    exit 1
fi

# Create .shrug folder
echo "Initialized empty shrug repository in .shrug"
mkdir ".shrug"

# Create the sub index folder
mkdir ".shrug/index"

# Create the sub repo folder
mkdir ".shrug/repo"

# Create log file in the sub repo folder
touch ".shrug/repo/shrug.log"
