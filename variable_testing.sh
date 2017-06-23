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
# cat /usr/share/dict/words | sed -n "${RANDOM}p"

# Print a random word that is the length passed in as the first argument from the user
# cat /usr/share/dict/words | grep -x ".\{${1},${1}\}" | sed -n "${RANDOM}p"

# Prepend the date to the filename given in the first argument
# DATE=`date +%Y-%m-%d`
# mv $1 "${DATE}_${1}"
