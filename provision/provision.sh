#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.zshrc

nvm install stable

npm install --global yarn

sudo rm -rf /Applications/Slack.app
sudo rm -rf "/Applications/Google Chrome.app"
sudo rm -rf "/Applications/Google Chrome Canary.app"

brew bundle --verbose

sudo mv ~/Desktop ~/desktop
sudo mv ~/Downloads/ ~/downloads

rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

jabba install openjdk@1.16.0

ln -sf ~/dropbox/dev ~/dev
ln -sf ~/dropbox/downloads ~/downloads
ln -sf ~/dropbox/desktop ~/desktop

yarn global add \
    eslint \
    imagemin \
    imagemin-pngquant \
    webpack-bundle-analyzer

mysides add desktop file://$HOME/desktop
mysides add desktop file://$HOME/downloads

# mkdir ~/.aws && touch ~/.aws/config

# https://stackoverflow.com/questions/35880785/how-can-i-find-out-the-current-osx-terminal-theme-from-within-a-bash-script

# manual steps
# itsycal > Preferences > launch at login
# zshrc
# log into dropbox
# Full Disk Access > Hyper

# https://downloads.getfiddler.com/mac/Fiddler%20Everywhere%202.0.1.dmg