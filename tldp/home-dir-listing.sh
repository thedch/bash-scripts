#!/bin/bash
# Author: daniel.hunter
# 06-26-2017

ls -R /Users/$USER > dir_listing # create the file
tar -cvzf dir_listing_compressed.tgz $PWD/dir_listing # compress the file and save it in pwd
rm dir_listing # remove the old file
