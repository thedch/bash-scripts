#!/bin/bash
# Author: Daniel Hunter
# Date: June 23 17

echo "Bash version ${BASH_VERSION}..."

# for value in *.html
#   do
  # echo $value
  # echo cp $value $( basename $value .html ).php
  # cp $value $( basename -s .html $value ).php
# done

# counter=1
# until [ $counter -gt 10 ]
# do
#   echo $counter
#   ((counter++))
# done
#
# echo All done

# names='Stan Kyle Cartman'
#
# for n in $names
# do
#   echo $n
# done
#
# echo All done

# for i in {0..10..2}
# do
#   echo $i
# done
#
# echo All Done

PS3='Select character: '

select name in Kyle Cartman Stan Quit; do
  if [ $name == 'Quit' ]; then
    break
  fi
  echo Hello $name
done

echo Bye
