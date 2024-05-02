#!/bin/sh

#################################
#        Autostart (dwm)        #
#################################

wmbar="slstatus"

hsetroot -full $HOME/Pictures/plane-in-ocean.png &
#xcompmgr -c -f -F -o 0 -I 0.13 -O 0.13 -D 25 &
picom &
xscreensaver -nosplash &
$wmbar 2> /dev/null &



# vim: ft=sh
