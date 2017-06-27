#!/bin/bash
# Author: daniel.hunter
# 06-26-2017

planets=( Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto )

i=0
until [ $i -gt 8 ]; do # alternatively: while [ $i -lt 9 ]; do
  echo ${planets[i]}
  (( i++ ))
done

exit 0
