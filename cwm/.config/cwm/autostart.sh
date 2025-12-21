#!/bin/sh

#################################
#        Autostart (dwm)        #
#################################

eww daemon
eww open tray
hsetroot -fill $HOME/Pictures/oneshot-twm-courtyard.png
#xcompmgr -c -f -F -o 0 -I 0.13 -O 0.13 -D 25 &
#xss-lock --ignore-sleep -- xscreensaver-command -lock &
picom &
xidlehook --detect-sleep --not-when-audio --timer 1200 'loginctl suspend' '' &
xscreensaver -nosplash &
polybar &



# vim: ft=sh
