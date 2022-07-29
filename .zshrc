#!/bin/zsh

# globals
LWD_DIR="$HOME/.config/lwd"
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8
EDITOR=/usr/bin/vim
BROWSER=/Applications/Firefox\ Developer\ Edition.app
export PATH=$PATH:/usr/local/bin

. ~/.config/custom

# personals
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cc="clear && c $@" # clear and change
alias cd="nav $@"   # ranger navigation
alias p="cd ~/Projects"
alias h="c ~"
alias ch="cc ~"
alias x="exit"
alias s=". ~/Projects/Spotlight-Shortcuts/edit.sh"


# setup
backup "autosave" > /dev/null 2>&1 # backup config 
back # start at last working directory
rand_prompt # with random color
