#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10
do
  echo "$i \c" # The -n option for echo does not work. Appending \c to the string
  # has the same affect (removing the new line)
  sleep 1
done & # This creates a background loop with some interesting consequences

echo # Create a new line

for i in 11 12 13 14 15 16 17 18 19 20
do
  echo "$i \c"
  sleep 1
done

echo

exit 0
