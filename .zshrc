#!/bin/zsh

# globals
LWD_DIR="$HOME/.config/lwd"
C_DIR=".cd"
BG_PATH="~/.config/bg.png"
LC_CTYPE=en_US.utf8
EDITOR=/usr/bin/vim
PROJ="$HOME/Projects"
BROWSER=/Applications/Firefox\ Developer\ Edition.app
export PATH=$PATH:/usr/local/bin

. ~/.config/easy
. ~/.config/custom
. ~/.config/todo
. ~/.config/theme

# personals
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cc="clear && c $@" # clear and change
alias n="nav $@" # ranger navigation
alias p="n $PROJ"
alias h="c ~ && ls -a"
alias ch="cc ~"
alias x="exit"
alias q="exit"
source $PROJ/Spotlight-Shortcuts/config.sh
alias s=". $PROJ/$SPOTLIGHT_SEARCH_DIR/edit.sh"
alias html="cp ~/.config/template.html new.html"
alias edit="ranger src"

# setup
mute rmdir Pictures Movies Music
mute backup "autosave" # backup config 
back # start at last working directory
rand_prompt # with random color
