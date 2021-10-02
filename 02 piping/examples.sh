#!/bin/bash

: '
Purpose: Shows an example of how each of the different pipes work!

Note: The letter corresponds to the example in the slides
'

echo -e "Appending\n"
echo "Writing this out" >> appended.txt

echo -e "\nRunning a\n"
./program 1> all_output.txt 2>&1

echo -e "\nRunning b\n"
./program 2> output.stderr 1> output.stdout

echo -e "\nRunning c\n"
./program 2>&1 1> only_stdout.txt