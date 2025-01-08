#!/bin/bash
# All.sh

source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

# Resets to last commit in the rems006-Arduino repo then pulls new commits
# is made like this to avoid issue with changing being made locally stoping the shortcut
echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

# Go into each directory from the repo and upload them to the right arduino
echo running .ino
cd Primary
arduino-cli compile --fqbn arduino:avr:nano Primary.ino
arduino-cli upload -p/dev/${Primary} --fqbn arduino:avr:nano Primary.ino
cd ..
cd Secondary-1
arduino-cli compile --fqbn arduino:avr:nano Secondary-1.ino
arduino-cli upload -p/dev/${Secondary1} --fqbn arduino:avr:nano Secondary-1.ino
cd ..
cd Secondary-2
arduino-cli compile --fqbn arduino:avr:nano Secondary-2.ino
arduino-cli upload -p/dev/${Secondary2} --fqbn arduino:avr:nano Secondary-2.ino
cd ..
cd Secondary-3
arduino-cli compile --fqbn arduino:avr:nano Secondary-3.ino
arduino-cli upload -p/dev/${Secondary3} --fqbn arduino:avr:nano Secondary-3.ino
cd ..
cd Secondary-4
arduino-cli compile --fqbn arduino:avr:nano Secondary-4.ino
arduino-cli upload -p/dev/${Secondary4} --fqbn arduino:avr:nano Secondary-4.ino
cd ..

