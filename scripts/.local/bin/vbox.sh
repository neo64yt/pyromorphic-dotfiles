#!/bin/sh 
if [ -z "$DISPLAY" ]; then 
    export DISPLAY=:0
fi

if [ -n "$WAYLAND_DISPLAY" ]; then
    if pgrep -f "xwayland-satellite"; then
        export QT_SCALE_FACTOR=0.875
    else
        export XCURSOR_SIZE=44
    fi
fi

VirtualBox $@
