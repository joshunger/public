#!/bin/sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install homebrew-cask
brew tap caskroom/versions

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.nvm/nvm.sh
nvm install stable

rm "$HOME/Library/Application Support/Code - Insiders/User/settings.json"
ln -s ~/dev/joshunger.com/settings.json "$HOME/Library/Application Support/Code - Insiders/User/settings.json"

rm "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"
ln -s ~/dev/joshunger.com/extensions.json "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"

rm "/usr/local/bin/code-insiders"
rm "/usr/local/bin/code"
ln -s "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" "/usr/local/bin/code"

yarn global add eslint prettier

read -r -d '' BREW_CASK_INSTALL_STUFF << EOM
atom-beta
firefox-nightly
gas-mask
google-backup-and-sync
google-chrome
google-chrome-canary
iterm2
sketch
spectacle
visual-studio-code-insiders
EOM

brew cask install $BREW_CASK_INSTALL_STUFF

read -r -d '' BREW_INSTALL_STUFF << EOM
docker
ffmpeg
hub
p7zip
yarn
vlc
EOM

brew install $BREW_INSTALL_STUFF

open /Applications/Spectacle.app
open "/Applications/Backup and Sync.app"
# launchctl Spectacle

code --install-extension ms-vscode.cpptools
