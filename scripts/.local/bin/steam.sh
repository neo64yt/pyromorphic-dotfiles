#!/bin/sh 
if [ -z "$DISPLAY" ]; then 
    export DISPLAY=:0
fi

if [ -n "$WAYLAND_DISPLAY" ]; then
    if ! pgrep -f "xwayland-satellite"; then 
        export XCURSOR_SIZE=48
    fi
    steamscaleopts="-forcedesktopscaling 2.0"
fi

export STEAM_FORCE_DESKTOPUI_SCALING=1.75
/usr/bin/steam -system-composer $steamscaleopts $@
