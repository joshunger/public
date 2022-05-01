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
defaults write NSGlobalDomain _HIHideMenuBar -bool false

killall Finder
killall SystemUIServer

# sudo
rm -rf ~/Downloads
rm -rf ~/Desktop

ln -sf ~/dropbox/desktop ~/desktop
ln -sf ~/dropbox/dev ~/dev
ln -sf ~/dropbox/downloads ~/downloads

export DEV=$HOME/dev

ln -sf "$DEV"/public/provision/public.zsh "$ZSH_CUSTOM"/public.zsh
ln -sf "$DEV"/private/private.zsh "$ZSH_CUSTOM"/private.zsh

nvm install stable # 17
nvm install 12
nvm install 14
nvm install 17
nvm install 18

# https://github.com/chbrown/overdrive

# ansible-playbook -v --ask-become-pass --become-user "$USER" playbook.yml