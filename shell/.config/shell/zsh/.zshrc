#!/bin/zsh

#        ███████ ███████ ██   ██ ██████   ██████ 
#           ███  ██      ██   ██ ██   ██ ██      
#          ███   ███████ ███████ ██████  ██      
#         ███         ██ ██   ██ ██   ██ ██      
#     ██ ███████ ███████ ██   ██ ██   ██  ██████ 
#
#               pyromorphic-desktop

# Dump 
mkdir -p ${XDG_CACHE_HOME:-$HOME/.cache}/zsh

#pfetch

# Run crunchbang-mini colorscript
crunchbang-mini

# Display fortune message 
fortune -s | cowsay -f tux -n | lolcat

# Vi mode
bindkey -v

# Aliases & functions
source ${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc # Aliases
source ${XDG_CONFIG_HOME:-$HOME/.config}/shell/functionrc # Functions

#################
#    Plugins    #
#################

# System-wide
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh # Syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh # Autosuggestions
#source /usr/share/doc/find-the-command/ftc.zsh noprompt quiet # Enable pacman command-not-found (for Arch-based distros only)

# Plugin loader
source ${ZPLUGINDIR:-$ZDOTDIR/plugins}/zsh_unplugged.zsh

# Single user plugins 
plugins=(
#    'popstas/zsh-command-time'
    'TomfromBerlin/zsh-cmd-time'
)

plugin-load $plugins


# Prevent spaces and duplicates in history
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Fix cursor shape after exiting Vim/Neovim
_fix_cursor() {
   echo -ne '\e[5 q'
}

#precmd_functions+=(_fix_cursor)

autoload -Uz vcs_info
autoload -Uz add-zsh-hook 

prompt off  # Disable zsh prompt theme engine
#eval "$(starship init zsh)"

precmd() { 
    vcs_info
    print ""
}

cwd_depth_prefix() {
    unset CWD_PREFIX

    local rel_path=${(%):-%~}
    local depth=${#rel_path//[^\/]}
       
    if ! grep -q "~" <<< $rel_path; then
        (( depth -= 1 ))
    fi 

    if [ $depth -ge 3 ]; then
        CWD_PREFIX=".../"
    fi
}

rps1_override() {
    RPS1=$'%(?..%B%F{red}%?%f%b) ${cmd_time_elapsed} [%B%F{blue}%*%f%b]'
}

add-zsh-hook precmd _fix_cursor
add-zsh-hook precmd cwd_depth_prefix
add-zsh-hook precmd rps1_override

zstyle ':vcs_info:git:*' formats '%B%F{yellow} %b%f%%b %m%u%c'
zstyle ':vcs_info:git:*' actionformats '%B%F{yellow} %b%f%%b %a %m%u%c'
zstyle ':vcs_info:git:*' stagedstr '(%B%F{green}+%f%b)'
zstyle ':vcs_info:git:*' unstagedstr '(%B%F{red}!%f%b)'
zstyle ':vcs_info:*' check-for-changes true

setopt PROMPT_SUBST
setopt TRANSIENT_RPROMPT
ZLE_RPROMPT_INDENT=0
PROMPT=$'┌──[%B%F{cyan}%n%f%b]─[%B%F{magenta}%M%f%b]─[%F{blue}${CWD_PREFIX}%3~%f] ${vcs_info_msg_0_}\n└─[%F{%(?.green.red)}%{\e[5m%}$%{\e[0m%}%f] '



# vim: ft=zsh
