#boardfinder.sh
source /home/rems006/Github/custom.sh-shortcuts/USB-ID.sh

echo doing git pull
cd /home/rems006/Github/rems006-Arduino/Code-Collection/Board-Finder
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

echo running .ino
echo --------------
echo Primary OFF
echo Secondary-1 ON
echo Secondary-2 Blinking
echo --------------
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
