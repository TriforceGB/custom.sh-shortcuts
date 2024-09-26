echo doing git pull
cd /home/rems006/Github/rems006-Arduino
git pull
echo running .ino
cd Primary
arduino-cli compile --fqbn arduino:avr:nano Primary.ino
arduino-cli upload -p/dev/ttyUSB0 --fqbn arduino:avr:nano Primary.ino

