#!/bin/bash
# Author: Daniel Hunter
# Date: June 25 17

echo "Welcome! The date is currently `date +%m-%d-%Y`."

# echo $(( 2#101011 ))  # Base conversion, not a comment.
# echo ${PATH#*:}       # Parameter substitution, not a comment.


# let "t2 = ((a = 9, 15 / 3))"
# Set "a = 9" and "t2 = 15 / 3"
# echo a = $a
# echo t2 = $t2

for file in /Users/daniel.hunter/Software/bash-scripts/tldp/*
do
  :
  # echo $file
done

# var = 1
# while true; do # Infinite loop
#   echo $var
#   ((var++))
# done

# echo $((3**2))

# var1=99
# (( var0 = var1<98?9:21 ))
# echo $var0

# echo {f..F} # Kind of cool

# { local a=123
#  a=321; }
# echo "a = $a"   # Returns an error

File=/Users/daniel.hunter/Software/bash-scripts/tldp/help

{
read line1
read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"
