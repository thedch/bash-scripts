#!/bin/bash
# Author: daniel.hunter
# 06-26-2017

DIRNAME=/usr/bin
FILETYPE="shell script"
LOGFILE=logfile

file "$DIRNAME"/* | grep -F "$FILETYPE" | tee $LOGFILE | wc -l

# Scans all files in /usr/bin
# Sends the output of that to fgrep, which searches for everything containing the
#   string "shell script"
# Sends the output of that to tee, which saves the output in a file called 'logfile'
# The output is also passed along, and then the line count is printed to stdout

exit 0
