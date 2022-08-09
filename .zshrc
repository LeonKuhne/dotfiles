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
PROJ_DIR="$HOME/Projects"
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cc="clear && c $@" # clear and change
alias n="nav $@" # ranger navigation
alias p="n $PROJ_DIR"
alias h="c ~ && ls -a"
alias ch="cc ~"
alias x="exit"
alias q="exit"
source $PROJ_DIR/Spotlight-Shortcuts/config.sh
alias s=". $SPOTLIGHT_SEARCH_DIR/edit.sh"
alias html='cp ~/.config/template.html "$@.html"'

# setup
mute rmdir Pictures Movies Music
mute backup "autosave" # backup config 
back # start at last working directory
rand_prompt # with random color
