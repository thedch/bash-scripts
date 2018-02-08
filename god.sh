#!/bin/bash
# Author: Daniel Hunter
# Date: June 26 17

# Script creates a file and sets that file to be executable by its owner

if [ -z "$1" ]; then
  echo "ERROR: Usage $0 [filename] (no extension needed)"
  exit 1
fi

filename=${1}.sh

# future work: detect and react to .sh at the end of $1

if [ -f "$filename" ]; then # quit if file already exists
  echo "File already exists!"
  exit 1
fi

touch "$filename" # create the file
chmod 700 "$filename" # give myself permissions

cat >"$filename" <<EOL
#!/bin/bash
# Author: $USER
# $(date "+%B %d %Y")
EOL

subl "$filename"
