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
export JAVA_HOME="$HOME/Documents/OpenJDK/jdk-19.0.2.jdk/Contents/Home"
export PATH=$PATH:$JAVA_HOME/bin

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/x/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/x/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/x/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/x/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

