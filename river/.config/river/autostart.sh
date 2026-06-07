#!/bin/sh

##############################
#       Autostart (mango)      #
##############################

wlr-randr --output eDP-1 --scale 1.75
dbus-update-activation-environment --all
xsetroot -xcf /usr/share/icons/Bibata-Original-Ice/cursors/left_ptr 44
echo "Xft.dpi : 196" | xrdb -merge
xrdb -merge $XDG_CONFIG_HOME/Xresources
swayidle -w &
sway-audio-idle-inhibit &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
swaybg --image $HOME/Pictures/oneshot-twm-courtyard.png &
eww daemon
eww open tray-wl
#waybar --config ~/.config/waybar/niri.config &



# vim: ft=sh
