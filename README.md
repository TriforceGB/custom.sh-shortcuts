# Custom.sh Shorcuts
These are a bunch of .sh files which are I made to help speed up my workflow when working with Arduino
most of these are made for me only but you can try to reuse them if you want

## Upload.sh
There are 4 Files:
> Primary.sh

> Seondary-1.sh

> Seondary-2.sh

> All.sh

all of These run a git pull for https://github.com/TriforceGB/rems006-Arduino and then depending on the File, **uploads** the newest .ino onto the Arduino

Here is a quick table to show what each .sh upload to which board
| File  | Board | Port | File |
| ------------- | ------------- | ------------- | ------------- |
| Primary.sh | Nano  | ttyUSB0 | Primary.ino |
| Seondary-1.sh  | Nano  | ttyUSB1 | Seondary-1.ino |
| Seondary-2.sh  | Nano  | ttyUSB2 | Seondary-2.ino |
| All.sh  | Nano  | ttyUSB0, ttyUSB1, ttyUSB2 | Primary.ino, Seondary-1.ino, Seondary-2.ino |

### Shortcuts
here are some shortcut made using alises and gnone shortcuts

These are my setting and only work if you configure your Computer to have these shortcut

#### Terminal Aliases
| File  | Command |
| ------------- | ------------- |
| Upload Primary | up  |
| Upload Seondary-1  | u1  |
| Upload Seondary-2  | u2  |
| Upload All  | ua  |

#### Gnone Hotkey 
Use Gnone Hotkeys to create these shortcuts
| File  | Hotkey |
| ------------- | ------------- |
| Primary.sh | alt+p  |
| Seondary-1.sh  | alt+1  |
| Seondary-2.sh  | apt+2  |
| All.sh | alt+a  |

## Pull.sh
These are just Fast ways to Commit a whole dir and uploaded it to github
each upload-rems00* just uploaded that folder to github
(note idk if you don't own the repo i'm not sure what happens)



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
