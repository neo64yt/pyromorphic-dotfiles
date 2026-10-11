#!/bin/sh

##############################
#       Autostart (dwl)      #
##############################

wlr-randr --output eDP-1 --scale 1.75
dbus-update-activation-environment --all
xprop -root -format _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 2
echo "Xft.dpi: 192" | xrdb -merge
swayidle -w &
wayland-pipewire-idle-inhibit &
swaybg --image $HOME/Pictures/neurofumo-swarm-attack.jpg --mode fit --color 02231c &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
#waybar --config $XDG_CONFIG_HOME/waybar/river.config &



# vim: ft=sh
