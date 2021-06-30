#!/bin/sh

# This script loads common autostart applications for all WM

# Autostart applications

# Background daemons first
pipewire-runner &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom --experimental-backend &
/usr/bin/dunst &
pcmanfm --daemon-mode &
$LOCK &
udiskie &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
xclickroot -r $STARTMENU &

# Systray
# Bluetooth disabled due to vunerabilities
(sleep 3s && nm-applet) & 
#(sleep 3s && blueman-applet) &
(sleep 3s && mate-power-manager) &
(sleep 3s && mictray) &
(sleep 3s && pnmixer) &


