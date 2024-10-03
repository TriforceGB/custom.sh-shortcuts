#usbfix.sh 

#Move this out of the repo to use

echo "doing git pull"
cd /home/rems006/Github/custom.sh-shortcuts/

git pull

echo "updating alias"
# Unalias stp, st1, and st2
unalias stp 2>/dev/null
unalias st1 2>/dev/null
unalias st2 2>/dev/null


/home/rems006/Github/custom.sh-shortcuts/bash-alias.sh 

