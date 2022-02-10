#!/bin/sh

# This script loads common autostart programs for all WM

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

# Systray
indicator-kdeconnect &
pnmixer &



# vim: ft=sh
## EOF ##
