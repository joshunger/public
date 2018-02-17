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