#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/cask-versions

brew bundle --verbose

brew upgrade \
    1password \
    1password-cli \
    awscli \
    calibre \
    coreutils \
    ffmpeg \
    firefox-nightly \
    opera \
    rtorrent \
    speedtest-cli \
    vlc \
    watchman

ln -s ~/dropbox/dev ~/dev

sudo mv ~/Desktop ~/desktop
sudo mv ~/Downloads/ ~/downloads

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

jabba install openjdk@1.16.0

ln -s ~/dropbox/downloads ~/downloads
ln -s ~/dropbox/desktop ~/desktop

yarn global add \
    eslint \
    webpack-bundle-analyzer

# mkdir ~/.aws && touch ~/.aws/config

# https://stackoverflow.com/questions/35880785/how-can-i-find-out-the-current-osx-terminal-theme-from-within-a-bash-script

# manual steps
# itsycal > Preferences > launch at login
# zshrc
# log into dropbox