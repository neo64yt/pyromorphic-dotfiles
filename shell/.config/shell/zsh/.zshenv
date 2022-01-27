#!/bin/zsh

[ -f ${XDG_CONFIG_HOME:-$HOME/.config}/shell/envrc ] && . ${XDG_CONFIG_HOME:-$HOME/.config}/shell/envrc
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/shell/zsh"



# vim: ft=zsh
