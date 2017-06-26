#!/bin/bash
# Author: daniel.hunter
# 06-26-2017

export SUM=0;
for f in $(find src -name "*.java");
do
  # sum = sum + line count of f piped into awk
  # where f is each java file inside the src directory
  # wc -l outputs (and thus awk gets) "[number] [filename]"
  # awk then grabs only the [number], and returns it.
  export SUM=$(($SUM + $(wc -l $f | awk '{ print $1 }')));
done;
echo $SUM

# export SUM=0; for f in $(find src -name "*.java");
# do export SUM=$(($SUM + $(wc -l $f | awk '{ print $1 }'))); done; echo $SUM
