#!/bin/sh 
export KRITA_NO_STYLE_OVERRIDE=1  
export QT_STYLE_OVERRIDE=kvantum
unset QT_QPA_PLATFORMTHEME

if [ -z "$DISPLAY" ]; then 
    export DISPLAY=:0
fi

if [ -n "$WAYLAND_DISPLAY" ]; then
    export QT_QPA_PLATFORM=wayland
fi

krita $@
