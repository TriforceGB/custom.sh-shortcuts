# Primary.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

echo running .ino
cd Primary
arduino-cli compile --fqbn arduino:avr:nano Primary.ino
arduino-cli upload -p/dev/${W5500} --fqbn arduino:avr:nano Primary.ino

