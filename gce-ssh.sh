#!/bin/bash
# Author: Daniel Hunter
# February 06 2018

if [ "$#" -ne 1 ]; then
        # Ensure the user provided command line arguments
        echo "[ERROR] Please provide the IP"
        exit 3
fi

# SSH into the instance
ssh -L 8888:localhost:8888 -i ~/.ssh/id_rsa officialdanielhunter@"$1"
