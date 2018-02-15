#!/bin/sh
rm -rf '/Applications/Google Chrome Canary.app'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

brew cask uninstall google-chrome-canary

echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install homebrew-cask
brew tap caskroom/versions
# brew cask install iterm2-beta

brew cask install google-chrome-canary
brew cask install google-chrome
brew cask install iterm2
brew cask install visual-studio-code-insiders