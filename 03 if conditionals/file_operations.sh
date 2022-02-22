#!/bin/bash

: '
Purpose: Showing usage of the file operations
'

DIR_NAME='some_random_dir'

if [[ -d  $DIR_NAME ]]; then
    echo "$DIR_NAME does exist"
else 
    echo "$DIR_NAME does not exist"
fi

FILENAME="someFile.txt"
if [[ -e "$DIR_NAME/$FILENAME" ]]; then
    echo "Found $FILENAME inside $DIR_NAME"
else 
    echo "$FILENAME does not exist in $DIR_NAME"
fi