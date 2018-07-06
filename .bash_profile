# emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
# emoji='`echo ${emojis[$RANDOM % 22]}`'
# PS1="\w\n$emoji $ "

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PATH="$PATH:$HOME/.yarn/bin:$HOME/dev/public/bin"

# alias gs="git status"
alias c='"/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" .'
alias foxit="open -a \"Foxit Reader\""
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"
alias i="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea &"
alias kc="rename 's/ /-/g' *"
alias lc="rename -f 'y/A-Z/a-z/' *"
alias ul="git pull"
alias us="git push"
alias y="yarn"
alias yb="yarn build"
alias ys="yarn start"

# source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# alias lcd="for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done"

function lcd() {
  for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}