#!/bin/bash
# NOTE: this script is untested and probably needs fixes

cd $HOME

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install programmer dvorak
sudo installer -pkg "~/Downloads/Programmer Dvorak v1.2.pkg" -target /
sudo rm -f /System/Library/Caches/com.apple.IntlDataCache.le*
sudo cp ~/Library/Preferences/com.apple.HIToolbox.plist /Library/Preferences/

# setup git
git config --global user.name "lxk1170"
git config --global user.email "lxk1170@rit.edu"
git config pull.rebase true
git config push.default current
git init
git remote add origin git@github.com:lxk1170/dotfiles.git
git pull origin complex

# generate ssh key
ssh-keygen -t ed25519 -C "lxk1170@rit.edu"

# fix custom scripts
chmod +x ~/.config/custom
touch ~/.config/lwd
brew install kitty
brew install pillow
brew install ranger
brew install wget
brew install jq

# setup directory structure
mkdir Projects

echo "basic setup complete"

# setup display manager
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
sudo yabai --install-sa
sudo yabai --load-sa
echo "copy the line and get ready to add it"
echo "$(whoami) ALL = (root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai))) $(which yabai) --load-sa" && read
sudo visudo -f /private/etc/sudoers.d/yabai
brew services start yabai
brew services start skhd

# setup rust
curl https://sh.rustup.rs -sSf | sh
git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim
brew install michaeleisel/zld/zld
brew install rust-analyzer

# must reboot for programmer dvorak
echo "reboot to finish installation"
# must manually add ssh key to github
echo "don't forget to copy your ssh key to github"
cd -
