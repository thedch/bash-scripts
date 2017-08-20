#!/bin/bash
# Author: daniel.hunter
# 08-12-2017

while true; do
  arp -a | grep "\[bridge]"
  echo "--------------------------"
  sleep 5
done

# TODO Wait for a grep match for bridge, then ssh to that IP automatically
