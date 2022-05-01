#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

xcode-select --install

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# todo source NVM
source ~

nvm install stable
npm install --global yarn

yarn global add zx

# command not found
# python -m pip install --user ansible

./provision.mjs

rm -rf ~/.oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

jabba install openjdk@1.16.0

export DEV=$HOME/dev

# SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ln -sf "$DEV"/public/provision/public.zsh "$ZSH_CUSTOM"/public.zsh
ln -sf "$DEV"/private/private.zsh "$ZSH_CUSTOM"/private.zsh

# ln -s "$HOME"/.config/yarn/global/node_modules/prettier221/bin-prettier.js /usr/local/bin/prettier221
# https://stackoverflow.com/questions/35880785/how-can-i-find-out-the-current-osx-terminal-theme-from-within-a-bash-script

# https://downloads.getfiddler.com/mac/Fiddler%20Everywhere%202.0.1.dmg

# hint:   git config pull.rebase false  # merge (the default strategy)
# hint:   git config pull.rebase true   # rebase
# hint:   git config pull.ff only       # fast-forward only