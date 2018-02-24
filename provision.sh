#!/bin/sh
rm -rf '/Applications/Google Chrome Canary.app'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install homebrew-cask
brew tap caskroom/versions

brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install iterm2
brew cask install visual-studio-code-insiders
brew install yarn

# bb
brew install hub

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.nvm/nvm.sh
nvm install stable

brew cask install spectacle
open /Applications/Spectacle.app

brew cask install atom-beta
brew install ffmpeg
brew cask install vlc
brew install docker

code --install-extension ms-vscode.cpptools

rm "$HOME/Library/Application Support/Code - Insiders/User/settings.json"
ln -s ~/dev/joshunger.com/settings.json "$HOME/Library/Application Support/Code - Insiders/User/settings.json"

rm "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"
ln -s ~/dev/joshunger.com/extensions.json "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"

rm "/usr/local/bin/code-insiders"
rm "/usr/local/bin/code"
ln -s "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" "/usr/local/bin/code"

yarn global add eslint
brew cask install gas-mask
brew cask install firefox-nightly
yarn global add prettier
brew cask install sketch
brew install p7zip
