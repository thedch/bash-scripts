#!/bin/bash
# Author: Daniel Hunter
# Date: June 26 17

# Script creates a file and sets that file to be executable by its owner

if [ -z "$1" ]; then
  echo "Usage $0 [filename] (no extension needed)"
  exit 1
fi

# Future work: detect and react to .sh at the end of $1

filename=${1}.sh
touch $filename # Create the file
chmod 700 $filename # Give myself permissions

cat >$filename <<EOL
#!/bin/bash
# Author: $USER
# `date +%m-%d-%Y`
EOL

atom $filename
