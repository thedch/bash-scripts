#!/bin/bash
# Author: Daniel
# February 19 2018

T="$(date +%s)"

sleep 125

T="$(($(date +%s)-T))"
M="$((T/60))"
echo "Time Elaped: ${T} seconds!"
echo "Time Elaped: ${M} minutes!"
