#boardfinder.sh
echo doing git pull
cd /home/rems006/Github/rems006-Arduino/Board-Finder
git reset --hard HEAD
git fetch --all
git reset --hard origin/main

echo running .ino
cd Primary
arduino-cli compile --fqbn arduino:avr:nano Primary.ino
arduino-cli upload -p/dev/ttyUSB0 --fqbn arduino:avr:nano Primary.ino
cd ..
cd Secondary-1
arduino-cli compile --fqbn arduino:avr:nano Secondary-1.ino
arduino-cli upload -p/dev/ttyUSB1 --fqbn arduino:avr:nano Secondary-1.ino
cd ..
cd Secondary-2
arduino-cli compile --fqbn arduino:avr:nano Secondary-2.ino
arduino-cli upload -p/dev/ttyUSB2 --fqbn arduino:avr:nano Secondary-2.ino

