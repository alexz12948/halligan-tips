#!/bin/bash

: '
Purpose: Testing basic if conditionals with operators
'

if [[ 100 -gt 5 ]]; then
    echo "What a surprise"
else
    echo "This should be you: https://media.istockphoto.com/photos/mature-adult-businessman-smashing-laptop-on-fire-with-hammer-picture-id486507440?s=170667a"
fi

MYNUM=0

if [[ $MYNUM -gt 0 ]]; then
    echo "$MYNUM is positive"
elif [[ $MYNUM -lt 0 ]]; then
    echo "$MYNUM is negative"
else 
    echo "$MYNUM is zero"
fi