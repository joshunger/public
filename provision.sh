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
ln -s "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" "/usr/local/bin/c"
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" "/usr/local/bin/codestable"

yarn global add eslint prettier

brew tap dart-lang/dart

read -r -d '' BREW_CASK_INSTALL_STUFF << EOM
adobe-acrobat-reader
adobe-digital-editions
amazon-drive
atom-beta
balsamiq-mockups
beyond-compare
caffeine
calibre
dropbox
filezilla
firefox
firefox-nightly
gas-mask
gimp
google-backup-and-sync
google-chrome
google-chrome-canary
google-cloud-sdk
intellij-idea
iterm2
megasync
nginx
plex-media-server
quartz
safari-technology-preview
sketch
skitch
spectacle
virtualbox
visual-studio-code
visual-studio-code-insiders
EOM

brew cask reinstall $BREW_CASK_INSTALL_STUFF

read -r -d '' BREW_INSTALL_STUFF << EOM
aria2
dart
docker
docker-compose
duti
ffmpeg
fswatch
git-flow
gnu-sed
grep
gs
hub
id3lib
imagemagick
jenv
p7zip
rename
yarn
vlc
wget
wine
rbenv
ruby-build
EOM

brew install $BREW_INSTALL_STUFF

open /Applications/Spectacle.app
open "/Applications/Backup and Sync.app"
# launchctl Spectacle

code --install-extension ms-vscode.cpptools

ln -s ~/dropbox/dev ~/dev
ln -s ~/dropbox/downloads ~/downloads

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
sudo mv ~/Downloads/ ~/downloads

# https://github.com/jekyll/jekyll/issues/6690
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.6.0
rbenv global 2.6.0
gem install jekyll

# manual steps
# https://www.jetbrains.com/idea/download/download-thanks.html?platform=mac
# System Preferences → Security & Privacy → General > Enable Oracle for virtualbox
# curl -L https://aka.ms/windev_VM_virtualbox | bsdtar -xvf-
# /Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --disable-web-security --user-data-dir

# nightly yarn
# curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --nightly

# Keep folders on top when sorting by name

# add favorites
#  plutil -convert xml1 ~/Library/Preferences/com.apple.finder.plist

# nightly updates
# gcloud components update

# ~/Library/Containers/com.apple.mail/Data/Library/Preferences

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# npm install --global pure-prompt