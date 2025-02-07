#!/bin/sh

##############################
#       Autostart (dwl)      #
##############################

wlr-randr --output eDP-1 --scale 1.75
xprop -root -format _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 2
xsetroot -xcf /usr/share/icons/Bibata-Modern-Classic/cursors/left_ptr 48
xrdb -merge $XDG_CONFIG_HOME/Xresources
swayidle -w &
exec sway-audio-idle-inhibit &
swaybg --image $HOME/Pictures/train_tracks_in_a_forest_with_tux.jpg --mode fit &
waybar &
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
