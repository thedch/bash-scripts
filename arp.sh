#!/bin/bash
# Author: daniel.hunter
# 08-12-2017

echo "Scanning for devices..."
while true; do
  arp -a | grep "\[bridge]"
  if [ $? -eq 0 ]; then
      break
  fi
  sleep 1
done

echo "Found the device, connecting..."
ssh pi@"$(arp -a | grep "\[bridge]" | awk FNR==1'{print $2}' | tr -d '()')"

