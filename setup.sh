# Script to grab my dot files and place them in the approriate places
# Useful for quickly setting up AWS / GCE / general VMs
#
# In order to run the script itself:
# curl https://danielhunter.io/static/setup.sh > ./setup.sh
#

base_url="https://raw.githubusercontent.com/thedch/dot-files/master/"

for file in .bashrc .bash_aliases .vimrc .gitconfig .gitignore_global
do
    curl ${base_url}${file} > ${file}
done
