#!/bin/zsh

# exports
LWD_DIR="$HOME/.config/lwd"
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8
EDITOR=/usr/bin/vim

. ~/.config/custom

# aliases
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cd="nav $@"   # ranger navigation
alias cc="clear && c $@" # clear and change

# backup config 
backup "autosave" > /dev/null 2>&1

# setup
back # start at last working directory
rand_prompt # with random color
