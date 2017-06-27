#!/bin/bash
# Author: daniel.hunter
# 06-26-2017

if [ -z "$1" ]; then # Ensure arg1 was given
  echo "ERROR: Usage $0 [filename]"
  exit 1
fi

if ! [ -f $1 ]; then # Ensure file exists
  echo "ERROR: File does not exist!"
  exit 1
fi

while read line; do # Read in each line from the given file
  echo $line
done < $1

# grep -v '^$' $1 # Find everything EXCEPT blank lines
