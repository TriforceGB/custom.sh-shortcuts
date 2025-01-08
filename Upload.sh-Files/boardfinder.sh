#!/bin/bash
#boardfinder.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh
cd /home/rems006/Github/rems006-Arduino/Code-Collection/Board-Finder

# Go into the directory from the repo and upload it to the right arduinos
echo running .ino
echo --------------
echo Type Something into the Serial Terminal to Get Board to Changed LED States
echo --------------
arduino-cli compile --fqbn arduino:avr:nano Board-Finder.ino
arduino-cli upload -p/dev/${Primary} --fqbn arduino:avr:nano Board-Finder.ino
arduino-cli upload -p/dev/${Secondary1} --fqbn arduino:avr:nano Board-Finder.ino
arduino-cli upload -p/dev/${Secondary2} --fqbn arduino:avr:nano Board-Finder.ino
arduino-cli upload -p/dev/${Secondary3} --fqbn arduino:avr:nano Board-Finder.ino
arduino-cli upload -p/dev/${Secondary4} --fqbn arduino:avr:nano Board-Finder.ino