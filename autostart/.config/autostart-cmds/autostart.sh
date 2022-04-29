#!/bin/sh

#################################
#       Autostart (Global)      #
#################################

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a &

# Daemons 
pipewire-runner &
#xsettingsd --config=$XDG_CONFIG_HOME/xsettingsd/xsettingsd.conf &
picom --experimental-backends &
dunst &
pcmanfm --daemon-mode &
xss-lock --ignore-sleep -- $LOCKER &
xscreensaver -nosplash &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
mpd &
unclutter --start-hidden &

# Systray
volumeicon &
kdeconnect-indicator &



# vim: ft=sh
