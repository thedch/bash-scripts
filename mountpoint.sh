#!/bin/bash
# Author: daniel.hunter
# 08-16-2017

function wait_for_mount
{
  # local dir=$1

  while [ ! "$( touch )" ]; do
    # log "waiting for mount: $dir"
    echo "Command FAILED..."
    sleep 1
  done
  echo "Command WORKED!"
}

# wait_for_mount

while "ls a" ; do
  echo "Hello"
  sleep 1
done
