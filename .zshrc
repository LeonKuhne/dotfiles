#!/bin/zsh

# exports
LWD_DIR="$HOME/.config/lwd"
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8
EDITOR=/usr/bin/vim
export PATH=$PATH:/usr/local/bin

. ~/.config/custom

# aliases
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cd="nav $@"   # ranger navigation
alias cc="clear && c $@" # clear and change
alias p="c ~/Projects"


# setup
backup "autosave" > /dev/null 2>&1 # backup config 
back # start at last working directory
rand_prompt # with random color
