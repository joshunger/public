SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function ccl {
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$')
}

function cclh {
  TMPFILE=$(gmktemp --suffix=.html)
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$') -f html > $TMPFILE
  open -a "Google Chrome Canary" $TMPFILE
}

alias gral='git reset $(git merge-base --fork-point alpha)'
alias grmain='git reset $(git merge-base --fork-point main)'

# find /opt/lampp/htdocs -type f -exec chmod +x {} \;
export DEV="$HOME/dev"
export PATH="$PATH:$DEV/public/bin"

function yarn {
    mkdir -p node_modules
    # todo use dropbox ignore instead
    xattr -w com.dropbox.ignored 1 node_modules
    command yarn $@
}

# git archive -o update.zip HEAD $(git diff --name-only HEAD^)

alias ahead="git diff @{u}.."