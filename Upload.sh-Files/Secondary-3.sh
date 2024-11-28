# Secondary-3.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh


echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

echo running .ino
cd Secondary-3
arduino-cli compile --fqbn arduino:avr:nano Secondary-3.ino
arduino-cli upload -p/dev/${Secondary1} --fqbn arduino:avr:nano Secondary-3.ino