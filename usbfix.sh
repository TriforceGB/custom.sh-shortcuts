#!/bin/bash
#usbfix.sh 

#Bascially Just a Git pull to the custom.sh repo

# Move this out of the repo to use 
# Don't know if this is necessary but just to be safe

echo "doing git pull"
cd /home/rems006/Github/custom.sh-shortcuts/

git pull


echo "make new terminal for changes"
# for some reason can't run source .~/bashrc and I don't feel like spending a hour trying to figure out why
