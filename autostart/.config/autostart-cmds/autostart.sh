#!/bin/sh

#################################
#       Autostart (Global)      #
#################################

dbus-update-activation-environment --all

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a -s $XDG_CONFIG_HOME/nonDE-autostart:/etc/xdg/autostart &

# Daemons 
#pipewire-runner &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xsettingsd --config=$XDG_CONFIG_HOME/xsettingsd/xsettingsd.conf &
dunst &
thunar --daemon &
mpd &
unclutter --start-hidden &

# Systray
sleep 1; kdeconnect-indicator &

# XInput settings
xinput set-prop "PixArt USB Optical Mouse" "libinput Middle Emulation Enabled" 1 # Enable middle click

# Set backlight brightness to 50%
brightnessctl set 50%



# vim: ft=sh
