#!/bin/sh

#################################
#       Autostart (Global)      #
#################################

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a &

# Daemons 
pipewire-runner &
picom --experimental-backend &
/usr/bin/dunst &
thunar --daemon &
$LOCK &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
mpd &
syncthing --no-browser &
steam -silent &

# Systray
volumeicon &



# vim: ft=sh
