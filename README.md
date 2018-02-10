# joshunger.com
stuff

# vs code stuff
- https://github.com/kasecato/vscode-intellij-idea-keybindings
- https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
  - `autoFixOnSave`
- https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
  - `"editor.formatOnSave": true`
- https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils
  - adds file:name to command palette

# chrome
- https://chrome.google.com/webstore/detail/custom-javascript-for-web/ddbjnfjiigjmcpcpkmhogomapikjbjdk?hl=en

# other stuff
```
npm info "eslint-config-airbnb@latest" peerDependencies
```

# dev
```
ln -s ~/dev/joshunger.com/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

rm ~/Library/Application Support/Code - Insiders/User/settings.json
ln -s ~/dev/joshunger.com/settings.json "/Users/junger/Library/Application Support/Code - Insiders/User/settings.json"

// annoying since I can't share a json file
rm -rf ~/.vscode-insiders/extensions/
ln -s ~/.vscode/extensions/ ~/.vscode-insiders/extensions

yarn global add prettier
yarn global add yo generator-code
npm install babel-eslint -g
npm install eslint -g
(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"
)

git remote add fork https://github.com/joshunger/debugger.html.git
git fetch fork

// install bash 4
```

- 7zip
- docker
- cmder

# .gitignore
```
yarn-error.log
```

# windows
- http://scoop.sh/
