# Primary.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

echo running .ino
cd gateway
arduino-cli compile --fqbn arduino:avr:nano gateway.ino
arduino-cli upload -p/dev/${Primary} --fqbn arduino:avr:nano gateway.ino

