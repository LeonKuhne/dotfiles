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
export LIBTORCH='/url/local/Cellar/pytorch/1.13.1'
export LD_LIBRARY_PATH=$LIBTORCH:$LD_LIBRARY_PATH

# Handy
. ~/.config/todo
. ~/.config/custom

# personals
alias python="python3"
alias pip="pip3"
alias ls="ls --color" 
alias cc="clear && c $@" # clear and change
alias n="nav $@" # ranger navigation
alias p="c $PROJ"
alias home="c ~"
alias h="home"
alias ch="cc ~"
alias x="exit"
alias q="exit"
alias v="cc ~/Vunderbar"
source $PROJ/Spotlight-Shortcuts/config.sh
alias s=". $SPOTLIGHT_SEARCH_DIR/edit.sh"
alias html="cp ~/.config/template.html new.html"
alias edit="ranger src"
alias pyro="~/.config/pyro/pyro.sh"

# github.com:leonkuhne/scripts
for f in ~/.config/scripts/*.sh; do source $f; done

# setup
mute rmdir Pictures Movies Music
mute backup "autosave" # backup config 
back # start at last working directory
rand_prompt # with random color
