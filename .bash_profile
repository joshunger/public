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
