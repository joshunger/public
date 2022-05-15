#!/bin/bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
python3 -m pip install --user ansible

# or install brew

# command not found
npm install --global yarn

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash


# dockutil --remove all

# curl -O https://desktop.docker.com/mac/main/amd64/Docker.dmg
# hdiutil attach Docker.dmg
# cp -a /Volumes/Docker/Docker.app /Applications/

defaults write com.apple.dock tilesize -int 60
killall Dock

# Automatically hide and show the menu bar
# defaults write NSGlobalDomain _HIHideMenuBar -bool false
# defaults write "Apple Global Domain" _HIHideMenuBar -int 1

killall Finder
killall SystemUIServer

# sudo
# rm -rf ~/Downloads
# rm -rf ~/Desktop
# ln -sf ~/dropbox/desktop ~/desktop
# ln -sf ~/dropbox/dev ~/dev
# ln -sf ~/dropbox/downloads ~/downloads

export DEV=$HOME/dev

ln -sf "$DEV"/public/provision/public.zsh "$ZSH_CUSTOM"/public.zsh
ln -sf "$DEV"/private/private.zsh "$ZSH_CUSTOM"/private.zsh

nvm install stable
nvm install 12
nvm install 14
nvm install 17
nvm install 18

mysides add desktop file://"$HOME"/desktop
mysides add downloads file://"$HOME"/downloads
mysides add dropbox file://"$HOME"/dropbox
mysides add drive file://"$HOME"/drive
mysides add dev file://"$HOME"/dropbox/dev

# see https://github.com/chbrown/overdrive
mkdir -p ~/.local/bin
curl https://chbrown.github.io/overdrive/overdrive.sh -o ~/.local/bin/overdrive
chmod +x ~/.local/bin/overdrive

# autohide the menu bar, seems funner than defaults
osascript -e 'tell application "System Events" to tell dock preferences to set autohide menu bar to true'

# lock top right corner
defaults write com.apple.dock wvous-tr-corner -int 13

# kill dock to get corner updates
killall Dock


# ansible-playbook -v --ask-become-pass --become-user "$USER" playbook.yml