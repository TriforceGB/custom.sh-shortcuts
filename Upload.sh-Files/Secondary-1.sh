echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git pull
echo running .ino
cd Secondary-1
arduino-cli compile --fqbn arduino:avr:nano Secondary-1.ino
arduino-cli upload -p/dev/ttyUSB1 --fqbn arduino:avr:nano Secondary-1.ino
