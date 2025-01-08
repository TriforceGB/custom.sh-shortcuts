# Custom.sh Shorcuts
These are a bunch of .sh files which are I made to help speed up my workflow when working with Arduino
most of these are made for me only but you can try to reuse them if you want Using the Arduino CLI

## Upload.sh
There are64 Files:
> Primary.sh

> Seondary-*.sh

> All.sh

> Secondary.sh 

> Boardfinder.sh

> usbfix.sh

all of These run a git pull for https://github.com/TriforceGB/rems006-Arduino and then depending on the File, **uploads** the newest .ino onto the Arduino

### Setuping the Script
while these scripts are working you may need to change some thing for them to work with your setup

1. you need to make sure that in the USB-ID.sh all the board match the right USB ID your pc detected, this can be found in the Arduino Ide or by checking /dev 

2. you need to make sure the Script are working for the right board. These scripts are setup to use the ARduino CLI to upload code to Nanos but if you are working with something else such as a mega you will have to change the script for it to function. 


### Shortcuts
here are some shortcut made using alises and gnone shortcuts

These are my setting and only work if you configure your Computer to have these shortcut

#### Terminal Aliases
| File  | Command |
| ------------- | ------------- |
| Upload Primary | up  |
| Upload Seondary-1  | u1  |
| Upload Seondary-2  | u2  |
| Upload Seondary-3  | u3  |
| Upload Seondary-4  | u4  |
| Upload All  | ua  |
| Upload All Seondarys | us  |

## Pull.sh
These are just Fast ways to Commit a whole dir and uploaded it to github
each upload-rems00* just uploaded that folder to github
(note idk if you don't own the repo I'm not sure what happens)



## Serial Terminal
Are in-build Command with the Arduino-cli
each one of these Aliases run
> "arduino-cli monitor -p /dev/ttyUSB* -b arduino:avr:nano"

#### Terminal Aliases
| Funtion  | Command |
| ------------- | ------------- |
| Serial Terminal Primary | stp  |
| Serial Terminal Seondary-1  | st1  |
| Serial Terminal Seondary-2  | st2  |
| Serial Terminal Seondary-3  | st3  |
| Serial Terminal Seondary-4  | st4  |


## Extra Scripts files
there are few extra files that are different from the rest.
- usbfix.sh is a simple script that pull the lastest version of this repo and is manily used for updating usb ID (alias is usbfix)
- boardfinder.sh uploads a single arduino ino to all the board to help identify which board is what usb (alias is boardfinder)