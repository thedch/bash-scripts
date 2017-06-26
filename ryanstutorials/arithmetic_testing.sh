#!/bin/bash
# Author: Daniel Hunter
# Date: June 23 17

# let a=5%2
# echo $a
# let a++
# echo $a
# let a=$1+a
# echo $a

# expr 5 + 4
# expr 5+4
# expr "5 + 4"

# expr 5 \* 10 # Can't do '*', must do '\*'

# expr 11 % 2
# var=$(( 10 * 3 ))

# echo 10 \* 3 is $var
# echo 10 \* 3 is $(( 10 * 3 ))

# hlwrd='Hello World'
# echo The length of \'Hello World\' is ${#hlwrd}

# test=13425523452523154
# echo ${#test}

# expr $1 \* $2 # Multiply two command line args

# This has fairly obvious limitations, such as the last day of the month
# day=`date +%d`
# let day++
# echo $day
# echo "Tomorrow will be the ${day}th day of the `date +%m`th month"

# expr ( ( ( $RANDOM % $1) + 10) % $1)

echo "$(( ${RANDOM} % $1 ))"
