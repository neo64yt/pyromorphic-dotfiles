#!/bin/zsh

if [[ ! $DISPLAY && $XDG_VTNR == 7 ]]; then
    printf "TTY session at /dev/tty${XDG_VTNR} detected! Starting the session manager...\n" | cowsay -f dragon-and-cow | lolcat
    printf " \n"
    tbsm && exit
fi 



# vim: ft=zsh
