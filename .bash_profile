emojis=(🐶 🐺 🐱 🐭 🐹 🐰 🐸 🐯 🐨 🐻 🐷 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
PS1="\w\n$emoji $ "

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PATH="$PATH:$HOME/.yarn/bin"

alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push"
alias gs="git status"
alias foxit="open -a \"Foxit Reader\""

alias us="git push"
alias ul="git pull"
alias y="yarn"
alias yb="yarn build"
alias ys="yarn start"

# source ~/.oh-my-zsh/plugins/git/git.plugin.zsh

# alias lcd="for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done"

function lcd() {
  for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done
}
