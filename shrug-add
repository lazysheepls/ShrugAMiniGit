#!/bin/dash

# print usage info when there is no arguements
if [ $# -eq 0 ]
then
    echo "usage: shrug-add <filenames>"
    exit 1
fi

# loop through <filenames>
for file in $@
do
    # report error: invalid file name
    echo $file | grep -P -q "^[a-zA-Z0-9]+[.|-|_]"
    if [ $? -ne 0 ]
    then
        echo "shrug-add: error: invalid filename '$file'"
        exit 1
    fi

    # report error: file does not exit
    if [ ! -e $file ]
    then
        echo "shrug-add: error: can not open '$file'"
        exit 1
    fi

    cp $file ".shrug/index"
done
