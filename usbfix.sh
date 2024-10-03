#usbfix.sh 

#Move this out of the repo to use

echo "doing git pull"
cd /home/rems006/Github/custom.sh-shortcuts/

git pull

echo "updating alias"

source ~/.bashrc  # so I can unalias?

# Unalias stp, st1, and st2
unalias stp 
unalias st1 
unalias st2 


/home/rems006/Github/custom.sh-shortcuts/bash-alias.sh 

