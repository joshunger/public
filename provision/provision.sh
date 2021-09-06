#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo rm -rf /Applications/Slack.app
sudo rm -rf "/Applications/Google Chrome.app"
sudo rm -rf "/Applications/Google Chrome Canary.app"

./provision.mjs

rm -rf ~/.oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

nvm install stable
npm install --global yarn

jabba install openjdk@1.16.0

ln -sf ~/dropbox/dev ~/dev
# ln -sf ~/dropbox/downloads ~/downloads
ln -sf ~/dropbox/desktop ~/desktop

ln -sf "/Volumes/GoogleDrive/My Drive/downloads" ~/downloads

nvm use 16

yarn global add \
    eslint \
    eslint-plugin-sort-keys-fix \
    eslint-plugin-import@latest \
    eslint-plugin-jsx-a11y@latest \
    eslint-plugin-prettier@latest \
    eslint-plugin-react-hooks@latest \
    eslint-plugin-react@latest \
    eslint-plugin-sort-exports \
    imagemin \
    imagemin-pngquant \
    imagemin-avif \
    lighthouse \
    webpack-bundle-analyzer \
    @squoosh/cli \
    psi \
    prettier

yarn global add prettier221@npm:prettier@2.2.1

ln -s "$HOME"/.config/yarn/global/node_modules/prettier221/bin-prettier.js /usr/local/bin/prettier221

# Add favorite links to the Finder
mysides add desktop file://"$HOME"/desktop
mysides add downloads file://"$HOME"/downloads
mysides add dropbox file://"$HOME"/dropbox
mysides add drive file://"$HOME"/drive
mysides add dev file://"$HOME"/drive/dev



# Automatically generate prop types
# code --install-extension suming.react-proptypes-generate --force

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