#!/bin/zsh

# exports
LWD_DIR="$HOME/.config/lwd"
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8

source ~/.config/custom

# aliases
alias ls="ls --color"
alias cd="nav"


# backup config 
backup "autosave" > /dev/null 2>&1

# setup
back # start at last working directory
rand_prompt # with random color
