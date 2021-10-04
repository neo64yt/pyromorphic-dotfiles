#!/bin/sh

# This script loads common autostart programs for all WM

# Autostart programs

# Background daemons first
pipewire-runner &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
picom --experimental-backend &
/usr/bin/dunst &
pcmanfm --daemon-mode &
$LOCK &
sxhkd -c $KEYBIND &
xrdb -merge $XDG_CONFIG_HOME/Xresources &
xclickroot -r $STARTMENU &
xfsettingsd &

# Systray
# Bluetooth is disabled due to vulnerabilities
nm-applet & 
#blueman-applet &
mate-power-manager &
mictray &
pnmixer &
pamac-tray &
gxkb &
claws-mail &



# vim: ft=sh
## EOF ##
