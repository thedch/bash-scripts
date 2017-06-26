#!/bin/bash
# Author: Daniel Hunter
# Date: June 26 17

# Script creates a file and sets that file to be executable by its owner

if [ -z "$1" ]; then
  echo "Usage ./chmod.sh [filename] (no extension needed)"
  exit 1
fi

filename=${1}.sh
touch $filename # Create the file
chmod 700 $filename # Give myself permissions

BANG="#!/bin/bash"
NAME="Author: Daniel Hunter"
DATE=`date +%m-%d-%Y`

cat >$filename <<EOL
$BANG
$NAME
$DATE
EOL

atom $filename
