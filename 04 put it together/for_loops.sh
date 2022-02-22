#!/bin/bash
<<fileheader
Name: Alexander Zsikla
Date: 02/21/2022

Assumptions
This program assumes that a executable called sudoku exists in the
current working directory and that there is a list of valid sudoku puzzles
in a folder called test_images

Description
Takes all of the .pgm files in the test_images directory and runs it
through sudoku. It checks the exit code of sudoku to see if it equals 0,
indicating that the test passed.

Notes
* This file is mainly for educational purposes and for students to
repurpose and use in their own assignments (whatever that may be).
* There are many inline comments which are bad style, but
hopefully informational :)
* This script went along with the workshop, which is why it is very much
lacking everything
fileheader

# An array that holds all the .pgm files in the test_images directory
FILES=$(ls test_images/*.pgm)

# Run the make command
make

# If it fails, then stop the script
if [[ $? -ne 0 ]]; then
    echo "Make Failed"
    exit 1
fi

# Loop through the files and check if test passed
for FILE in $FILES; do
  ./sudoku $FILE

  if [[ $? -eq 0 ]]; then
    echo "Test Passed"
  else
    echo "Test Failed"
  fi
done

echo "Finishing"

exit 0
