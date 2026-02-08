#!/bin/sh

##############################
#       Autostart (dwl)      #
##############################

wlr-randr --output eDP-1 --scale 1.75
dbus-update-activation-environment --all
xprop -root -format _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 2
xsetroot -xcf /usr/share/icons/Bibata-Modern-Classic/cursors/left_ptr 44
echo "Xft.dpi : 196" | xrdb -merge
xrdb -merge $XDG_CONFIG_HOME/Xresources
swayidle -w &
sway-audio-idle-inhibit &
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
swaybg --image $HOME/Pictures/winxp_bliss.jpg &
#dwlb -ipc \
#    -tags 6 " 󰋜 " " 󰺶 " " 󰆍 " " 󰆌 " " 󰐋 " " 󰠔 " \
#    -active-bg-color "#272a34" \
#    -active-fg-color "#12846e" \
#    -inactive-bg-color "#000000" \
#    -inactive-fg-color "#ffffff" \
#    -occupied-bg-color "#000000" \
#    -occupied-fg-color "#ffffff" \
#    -middle-bg-color "#000000" \
#    -middle-bg-color-selected "#272a34" \
#    -vertical-padding 3 \
#    -font "JetBrainsMono Nerd Font:size=11" &
#slstatus -s | dwlb -status-stdin all &


# vim: ft=sh
