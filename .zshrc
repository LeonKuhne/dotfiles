#!/bin/zsh

source ~/.config/custom

# aliases
alias ls="ls --color"

function nav() {
  bash -c ". ranger"
}

alias cd="nav"

# exports
LWD_DIR=~/.config/lwd
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8

# backup config 
backup "autosave" > /dev/null 2>&1

# setup
c $(cat $LWD_DIR) # start at last working directory
rand_prompt # with random color
