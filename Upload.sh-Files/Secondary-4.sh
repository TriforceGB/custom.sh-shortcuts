#!/bin/bash
# Secondary-4.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

# Resets to last commit in the rems006-Arduino repo then pulls new commits
# is made like this to avoid issue with changing being made locally stoping the shortcut
echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

# Go into the directory from the repo and upload it to the right arduino
echo running .ino
cd Secondary-4
arduino-cli compile --fqbn arduino:avr:nano Secondary-4.ino
arduino-cli upload -p/dev/${Secondary4} --fqbn arduino:avr:nano Secondary-4.ino
