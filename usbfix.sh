#usbfix.sh 

#Move this out of the repo to use

echo "doing git pull"
cd /home/rems006/Github/custom.sh-shortcuts/

git pull

echo "updating alias"
unalias stp
unalias st1
unalias st2


./bash-alias.sh
