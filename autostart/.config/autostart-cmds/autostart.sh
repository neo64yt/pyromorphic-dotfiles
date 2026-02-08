#!/bin/sh

#################################
#       Autostart (Global)      #
#################################

dbus-update-activation-environment --all

killall xdg-desktop-portal; sleep 2; /usr/lib/xdg-desktop-portal &

# XDG Autostart
# To prevent autostarting a program using XDG autostart, create an empty desktop file for that program in $XDG_CONFIG_HOME/autostart/
dex -a -s $XDG_CONFIG_HOME/nonDE-autostart:/etc/xdg/autostart &

# Daemons 
#pipewire-runner &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pgrep xsettingsd >/dev/null && pkill xsettingsd # Refresh XSettingd by killing it before starting it again
if [ -z "$WAYLAND_DISPLAY" ]; then
   xsettingsd -c $XDG_CONFIG_HOME/xsettingsd/xsettingsd-x11.conf &
else
    xsettingsd -c $XDG_CONFIG_HOME/xsettingsd/xsettingsd.conf &
fi

dunst &
thunar --daemon &
mpd &
unclutter --start-hidden &
copyq &
/usr/bin/kdeconnect-indicator &

# Set backlight brightness to 50%
brightnessctl set 50%
xrdb -merge $XDG_CONFIG_HOME/Xresources

# vim: ft=sh
