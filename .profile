#!/bin/bash
# This file runs once at login.

# Add all local binary paths to the system path.
export PATH="$PATH:$HOME/.local/bin"

# Default programs to run.
export EDITOR="vim"

# add working paths
if [ -d "$HOME/work" ] ; then
    export CDPATH="$HOME/work"
fi
if [ -d "$HOME/work/bitbucket.org/roller-aspen" ] ; then
    export CDPATH="$HOME/work/bitbucket.org/roller-aspen"
fi
if [ -d "$HOME/work/github.com/aspen-roller" ] ; then
    export CDPATH="$HOME/work/github.com/aspen-roller"
fi

# Add colors to the less and man commands.
export LESS=-R
export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'           # end mode
export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'           # end underline
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline

# If bash is the login shell, then source ~/.bashrc if it exists.
echo "$0" | grep "bash$" >/dev/null && [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"