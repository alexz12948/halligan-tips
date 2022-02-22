#!/bin/bash

: '
Purpose: Checks whether the first argument is empty
'

if [[ ! -z $1 ]]; then
    if [[ $1 == "hello" ]]; then
        echo "Hello there!"
    else
        echo "Say hello please :)"
    fi
else
    echo "The first argument is empty"
fi