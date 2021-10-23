#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# firefox-nightly, etc.
brew tap homebrew/cask-versions

# sudo rm -rf /Applications/Slack.app
# sudo rm -rf "/Applications/Google Chrome.app"
# sudo rm -rf "/Applications/Google Chrome Canary.app"

xcode-select --install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# todo source NVM

nvm install stable
npm install --global yarn

yarn global add zx

./provision.mjs

rm -rf ~/.oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
# ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf "$SCRIPT_DIR"/public.zsh "$ZSH_CUSTOM"/public.zsh

jabba install openjdk@1.16.0

ln -sf "/Volumes/GoogleDrive/My Drive/desktop" ~/desktop
ln -sf ~/dropbox/dev ~/dev
ln -sf "/Volumes/GoogleDrive/My Drive/downloads" ~/downloads

nvm use 16

# yarn global add prettier221@npm:prettier@2.2.1

# ln -s "$HOME"/.config/yarn/global/node_modules/prettier221/bin-prettier.js /usr/local/bin/prettier221

# mkdir ~/.aws && touch ~/.aws/config

# https://stackoverflow.com/questions/35880785/how-can-i-find-out-the-current-osx-terminal-theme-from-within-a-bash-script

# manual steps
# itsycal > Preferences > launch at login
# zshrc
# log into dropbox
# Full Disk Access > Hyper

# https://downloads.getfiddler.com/mac/Fiddler%20Everywhere%202.0.1.dmg

# hint:   git config pull.rebase false  # merge (the default strategy)
# hint:   git config pull.rebase true   # rebase
# hint:   git config pull.ff only       # fast-forward only