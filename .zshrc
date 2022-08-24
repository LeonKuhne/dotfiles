#!/bin/bash

#
# ~/.zshrc
#

# manjaro

USE_POWERLINE="true"

# Source manjaro-zsh-configuration
. $HOME/.config/easy
. $HOME/.config/custom
. $HOME/.config/todo
. $HOME/.config/theme

export MOZ_ENABLE_WAYLAND=1
export EDITOR=/usr/bin/nvim
export PROJECTS=/home/x/Projects
export TOOLS=$PROJECTS/tools
export USE_LWD=$(cat ~/.lwdenabled)
export LWD_CONFIG=~/.lwd
export LWD=$(cat $LWD_CONFIG)
export PATH=$PATH:$HOME/.cargo/bin

# raft dev
export RAFT_MANAGED_PATH=/mnt/big/SteamLibrary/steamapps/common/Raft/Raft_Data/Managed
export RAFT_MODLOADER_BIN=/mnt/win/Users/leonk/AppData/Roaming/RaftModLoader/binaries

alias x='exit'
alias v='nvim'
alias vim='nvim'
alias ls='ls --color=auto'
alias t='c $TOOLS'
alias s='vim $PROJECTS/smenu/smenu.py'
alias cc="clear && c $@"
alias n="nav $@"
alias p='n $PROJECTS'
alias html='cp ~/.config/template.html ./index.html'

function lwd {
  export USE_LWD=$(cat ~/.lwdenabled)

  if [ "$1" = "enable" ]; then
    USE_LWD=1
  elif [ "$1" = "disable" ]; then
    USE_LWD=0
  elif [ "$1" = "toggle" ]; then
    # toggles if LWD should be used or not
    if [ "$USE_LWD" = 1 ]; then
      USE_LWD=0
    else
      USE_LWD=1
    fi
  elif [ "$1" = "state" ]; then
    echo "Set to $USE_LWD"
  else
    echo "Usage: lwd [enable, disable, toggle, state]"
  fi

  echo "$USE_LWD" > ~/.lwdenabled
}

# save
backup "autosave"

function islwd {
  echo "Set to $USE_LWD"
}
# navigate to last working directory TODO
if [ "$USE_LWD" = 1 ]; then
  c $LWD
fi
