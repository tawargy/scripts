 
#!/bin/bash

choice=$(printf "%s\n%s\n%s" "Shutdown" "Reboot" "Exit" | dmenu -i -p "Choose action: ")
[ $choice = "Shutdown" ] && doas poweroff
[ $choice = "Reboot"   ] && doas reboot
[ $choice = "Exit"     ] && pkill dwm
