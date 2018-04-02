#!/bin/sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install homebrew-cask
brew tap caskroom/versions

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.nvm/nvm.sh
nvm install stable

rm "$HOME/Library/Application Support/Code - Insiders/User/settings.json"
ln -s ~/dev/public/settings.json "$HOME/Library/Application Support/Code - Insiders/User/settings.json"

rm "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"
ln -s ~/dev/public/extensions.json "$HOME/Library/Application Support/Code - Insiders/User/extensions.json"

rm "/usr/local/bin/code-insiders"
rm "/usr/local/bin/code"
ln -s "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" "/usr/local/bin/code"

yarn global add eslint prettier

read -r -d '' BREW_CASK_INSTALL_STUFF << EOM
atom-beta
caffeine
dropbox
firefox-nightly
gas-mask
gimp
google-backup-and-sync
google-chrome
google-chrome-canary
google-cloud-sdk
iterm2
nginx
plex-media-server
safari-technology-preview
sketch
spectacle
visual-studio-code-insiders
EOM

brew cask install $BREW_CASK_INSTALL_STUFF

read -r -d '' BREW_INSTALL_STUFF << EOM
docker
ffmpeg
hub
jenv
p7zip
yarn
vlc
EOM

brew install $BREW_INSTALL_STUFF

open /Applications/Spectacle.app
open "/Applications/Backup and Sync.app"
# launchctl Spectacle

code --install-extension ms-vscode.cpptools

ln -s ~/dev/ ~/Dropbox/

# ~/Library/Application\ Support/Google/Chrome\ Canary/Default/Preferences
# See devtools.preferences.uiTheme

cp ~/Library/Application\ Support/Google/Chrome\ Canary/Default/Preferences /tmp/canary-prefs-pre.json

node > /tmp/canary-prefs <<EOF
const data = require('/tmp/canary-prefs-pre');
console.log(data.devtools.preferences.uiTheme);
EOF

curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
jabba install 1.8

brew install https://raw.githubusercontent.com/turforlag/homebrew-cervezas/master/pdftk.rb

# foxit reader

gcloud components install beta
runtimeconfig.googleapis.com

mv /usr/local/bin/atom-beta /usr/local/bin/atom

sudo mv ~/Desktop ~/desktop
