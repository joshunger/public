#!/bin/sh
brew tap homebrew/cask-versions

brew install \
    1password \
    1password-cli \
    coreutils \
    ffmpeg \
    firefox-nightly \
    opera \
    plex \
    rtorrent \
    speedtest-cli \
    vlc \
    watchman

brew install --cask \
    awscli \
    aws-vault \
    google-chrome \
    google-chrome-canary \
    slack-beta

ln -s ~/dropbox/dev ~/dev

sudo mv ~/Desktop ~/desktop
sudo mv ~/Downloads/ ~/downloads

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

jabba install openjdk@1.16.0

ln -s ~/dropbox/downloads ~/downloads
ln -s ~/dropbox/desktop ~/desktop

yarn global add eslint

mkdir ~/.aws && touch ~/.aws/config

# https://stackoverflow.com/questions/35880785/how-can-i-find-out-the-current-osx-terminal-theme-from-within-a-bash-script