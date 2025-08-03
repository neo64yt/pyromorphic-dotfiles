#!/bin/sh 
if [ -z "$DISPLAY" ]; then 
    export DISPLAY=:0
fi

if [ -n "$WAYLAND_DISPLAY" ]; then
    if pgrep -f "xwayland-satellite"; then
        steamscaleopts="-forcedesktopscaling=1.75"
    else
        export XCURSOR_SIZE=44
    fi
fi

/usr/bin/steam-native -system-composer $steamscaleopts $@
