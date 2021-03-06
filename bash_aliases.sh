#!/usr/bin/env bash

export __LS_OPTIONS='--color=auto -a -h -p --time-style=+%d-%m-%Y_%H:%M:%S'

alias ls='ls $__LS_OPTIONS'
alias ll='ls $__LS_OPTIONS -l --author -c'
alias la='ls $__LS_OPTIONS -la'
alias l='ls $__LS_OPTIONS -CF'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'

alias bc='bc -l'

tailc () {
 tail "$@" | ccze -A
}

alias mkdir='mkdir -p -v'
alias mv='mv -v'
alias rm='rm -v'

# function checks if the application is installed
function __add_command_replace_alias() {
    if [ -x "`which $2 2>&1`" ]; then
        alias $1=$2
    fi
}

if [ -x "`which most 2>&1`" ]; then
    alias less=most
    export PAGER=most
fi

if [ -x "`which nano 2>&1`" ]; then
        export EDITOR=nano
fi

__add_command_replace_alias tail 'multitail'
__add_command_replace_alias df 'pydf'
__add_command_replace_alias traceroute 'mtr'
__add_command_replace_alias tracepath 'mtr'
__add_command_replace_alias top 'htop'

function allcolors() {
    # credit to http://askubuntu.com/a/279014
    for x in 0 1 4 5 7 8; do
        for i in `seq 30 37`; do
            for a in `seq 40 47`; do
                echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
            done
            echo
        done
    done
    echo ""
}
