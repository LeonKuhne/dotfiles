#!/bin/bash
cd $HOME

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install programmer dvorak
sudo installer -pkg "~/Downloads/Programmer Dvorak v1.2.pkg" -target /
sudo rm -f /System/Library/Caches/com.apple.IntlDataCache.le*
sudo cp ~/Library/Preferences/com.apple.HIToolbox.plist /Library/Preferences/

# a better terminal
brew install kitty

# install scripts
git init
git remote add origin https://github.com/lxk1170/dotfiles.git
git pull --set-upstream origin complex
chmod +x ~/.config/custom

# generate ssh key
ssh-keygen -t ed25519 -C "lxk1170@rit.edu"

# must reboot for programmer dvorak
echo "reboot to finish installation"
# must manually add ssh key to github
echo "don't forget to copy your ssh key to github"
cd -
