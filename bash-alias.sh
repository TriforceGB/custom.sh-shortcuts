#bash-alias.sh
#these are alias I add to my .bashrc file
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

alias stp="arduino-cli monitor -p /dev/${Primary} -b arduino:avr:nano"
alias st1="arduino-cli monitor -p /dev/${Secondary1} -b arduino:avr:nano"
alias st2="arduino-cli monitor -p /dev/${Secondary2} -b arduino:avr:nano"

alias up="/home/rems006/Github/custom.sh-shortcuts/Upload.sh-Files/Primary.sh"
alias u1="/home/rems006/Github/custom.sh-shortcuts/Upload.sh-Files/Secondary-1.sh"
alias u2="/home/rems006/Github/custom.sh-shortcuts/Upload.sh-Files/Secondary-2.sh"
alias ua="/home/rems006/Github/custom.sh-shortcuts/Upload.sh-Files/All.sh"


alias boardfinder="/home/rems006/Github/custom.sh-shortcuts/Upload.sh-Files/boardfinder.sh"

echo ${Primary}
echo ${Secondary1}
echo ${Secondary2}