#!/bin/sh

##############################
#       Autostart (dwl)      #
##############################

wlr-randr --output eDP-1 --scale 1.75
swaybg --image $HOME/Pictures/pixel-forest-waterfall.jpg --mode fit &
#waybar &
dwlb -ipc \
    -tags 6 " 󰋜 " " 󰺶 " " 󰆍 " " 󰆌 " " 󰐋 " " 󰠔 " \
    -active-bg-color "#272a34" \
    -active-fg-color "#12846e" \
    -inactive-bg-color "#000000" \
    -inactive-fg-color "#ffffff" \
    -occupied-bg-color "#000000" \
    -occupied-fg-color "#ffffff" \
    -middle-bg-color "#000000" \
    -middle-bg-color-selected "#272a34" \
    -vertical-padding 3 \
    -font "JetBrainsMono Nerd Font:size=11" &
slstatus -s | dwlb -status-stdin all &


# vim: ft=sh
