#!/bin/sh 
export QT_AUTO_SCREEN_SCALE_FACTOR=2
export QT_ENABLE_HIGHDPI_SCALING=1

if [ -z "$DISPLAY" ]; then 
    export DISPLAY=:0
fi

if [ -n "$WAYLAND_DISPLAY" ]; then
    export XCURSOR_SIZE=44
fi

VirtualBox $@
