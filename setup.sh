# Script to grab my dot files and place them in the approriate places
# Useful for quickly setting up AWS / GCE / general VMs
#
# In order to download the script:
# wget setup.thedaniel.me -O ./setup.sh && chmod 700 ./setup.sh && ./setup.sh
#

base_url="https://raw.githubusercontent.com/thedch/dot-files/master/"

echo "What files would you like? Please enter the filename. Example: '.vimrc'"

read filename

# Check if file already exists locally
if [ -f ~/${filename} ]; then
    echo "File already exists -- enter y to create a backup or n to exit." && read input
    echo
    if [[ ! $input =~ ^[Yy]$ ]]
    then
        echo "Exiting without overwriting..."
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
    fi
fi

# Check if the file exists on the server
echo "Checking file on server..."
respCode=$(curl --head "${base_url}""${filename}" | grep HTTP | awk '{print $2}')
# echo Your response code was $respCode

if [ "$respCode" -ne "200" ]; then
    echo "Response code was not 200, did you make a typo?"
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
fi

# Only create a backup after you've checked the server
if [ -f ~/${filename} ]; then
    echo "Moving $filename to $filename.bak before downloading new version"
    cp ~/"$filename" ~/"$filename".bak
fi   

# If everything has worked, download the file and save it
echo "Downloading file..."
curl --silent "${base_url}""${filename}" > ~/"${filename}"
