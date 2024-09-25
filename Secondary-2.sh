echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git pull
echo running .ino
cd Secondary-2
arduino-cli compile --fqbn arduino:avr:nano Secondary-2.ino
arduino-cli upload -p/dev/ttyUSB2 --fqbn arduino:avr:nano Secondary-2.ino

