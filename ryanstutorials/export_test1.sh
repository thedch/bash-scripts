#!/bin/bash
# Author: Daniel Hunter
# Date: June 23 17

var1=blah
var2=foo

echo $0, var1 is $var1, var2 is $var2

export var1
./export_test2.sh

echo $0, var1 is $var1, var2 is $var2
