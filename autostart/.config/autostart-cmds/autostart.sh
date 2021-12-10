#!/bin/sh

# This script loads common autostart programs for all WM

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a &

# Background daemons first
pipewire-runner &
picom --experimental-backend &
/usr/bin/dunst &
spacefm -d &
devmon &
$LOCK &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
xclickroot -r $STARTMENU &

# Systray
# Bluetooth is disabled due to vulnerabilities
mictray &
pnmixer &
kdeconnect-indicator &



# vim: ft=sh
## EOF ##
