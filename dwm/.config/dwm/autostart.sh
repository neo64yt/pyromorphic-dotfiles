#!/bin/sh

#################################
#        Autostart (dwm)        #
#################################

wmbar="slstatus"

hsetroot -fill $HOME/Pictures/winxp_bliss.jpg
#xcompmgr -c -f -F -o 0 -I 0.13 -O 0.13 -D 25 &
#xss-lock --ignore-sleep -- xscreensaver-command -lock &
picom &
xidlehook --detect-sleep --not-when-audio --timer 1200 'loginctl suspend' '' &
xscreensaver -nosplash &
$wmbar 2> /dev/null &



# vim: ft=sh
