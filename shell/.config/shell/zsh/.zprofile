#!/bin/zsh

if [[ ! $DISPLAY && $XDG_VTNR == 7 ]]; then
    echo -e "TTY session at /dev/tty${XDG_VTNR} detected! Starting the session manager..." | cowsay -f dragon-and-cow | lolcat
    tbsm && exit
fi 



# vim: ft=zsh
