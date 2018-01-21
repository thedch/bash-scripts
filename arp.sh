#!/bin/bash
# Author: daniel.hunter
# 08-12-2017

if [ -z $1 ]; then
  echo "Please supply a user to log in as!"
  exit 
fi

echo "Scanning for devices..."

while true; do
  arp -a | grep "bridge" | grep -v "ff:ff"
  if [ $? -eq 0 ]; then
      break
  fi
  sleep 1
done

echo "Found the device, connecting..."
ssh -X "$1"@"$(arp -a | grep "\[bridge]" | grep -v "ff:ff" | awk FNR==1'{print $2}' | tr -d '()')"
