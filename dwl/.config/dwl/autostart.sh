#!/bin/sh

##############################
#       Autostart (dwl)      #
##############################

wbg $HOME/Pictures/pixel-forest-waterfall.jpg &
#waybar &
dwlb -ipc -font "JetBrainsMono Nerd Font:11px" &
slstatus -s | dwlb -status-stdin all &


# vim: ft=sh
