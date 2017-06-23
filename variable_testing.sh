#!/bin/bash
# Author: Daniel Hunter
# Date: June 22 17

# Echo the number of command line arguments.
# echo You passed in $# command line arguments.

# If there are 2+, print the 2nd one
# if [ $# -gt 1 ]
# then
#   echo The second command line argument is $2
# fi

# Print a random word
cat /usr/share/dict/words | sed -n "${RANDOM}p"

# rand=$RANDOM # grab a random number
# cat /usr/share/dict/words > test # save the dictionary into a file
# numLines=$( wc -l < test ) # count the number of lines in the file
# rand=$((rand%numLines)) # ensure the random number is less than the length of dictionary
# sed -n "${rand}p" test # print a random word from the file
# rm test # delete the file
