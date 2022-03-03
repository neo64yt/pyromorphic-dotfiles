#!/bin/zsh

#################################
#            .zshrc             #
#################################

# Dump 
mkdir -p ${XDG_CACHE_HOME:-$HOME/.cache}/zsh

# Show fetch tool
pfetch

# Hello message
hello | cowsay -f tux -n | lolcat

# Vi mode
bindkey -v

# Aliases & functions
source ${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc # Aliases
source ${XDG_CONFIG_HOME:-$HOME/.config}/shell/functionrc # Functions

# Plugins 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # Syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # Autosuggestions
source /usr/share/doc/pkgfile/command-not-found.zsh # Suggest packages to install for unavailable commands

# Fix cursor shape after exiting Vim/Neovim
_fix_cursor() {
   echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursor)

# Starship prompt
prompt off  # Disable zsh prompt theme engine
eval "$(starship init zsh)"



# vim: ft=zsh
