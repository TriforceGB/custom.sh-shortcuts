#!/bin/bash
#usbfix.sh 

#Bascially Just a Git pull to the custom.sh repo

# Move this out of the repo to use 
# Don't know if this is necessary but just to be safe

echo "doing git pull"
cd /home/rems006/Github/custom.sh-shortcuts/

git pull

echo "make new terminal for changes?"
# echo "updating alias"

source ~/.bashrc  # so I can unalias?

cat /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh


# /home/rems006/Github/custom.sh-shortcuts/bash-alias.sh 

