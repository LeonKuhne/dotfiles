#!/bin/bash

#
# ~/.zprofile
#

if [ -z $DISPLAY ] && [[ "$(tty)" == "/dev/tty"* ]]; then
  ./.start
fi

# mount windows drive
sudo mount /dev/sdc2 /mnt/win
sudo mount /dev/sda2 /mnt/big
