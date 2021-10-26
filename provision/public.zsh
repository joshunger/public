SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function ccl {
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$')
}

function cclh {
  TMPFILE=$(gmktemp --suffix=.html)
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$') -f html > $TMPFILE
  open -a "Google Chrome Canary" $TMPFILE
}

alias gralpha='git reset $(git merge-base --fork-point alpha)'
alias grmain='git reset $(git merge-base --fork-point main)'

# find /opt/lampp/htdocs -type f -exec chmod +x {} \;
export DEV="$HOME/dev"
export PATH="$PATH:$DEV/public/bin"

function yarn {
    # xattr -w com.dropbox.ignored 1
    mkdir node_modules
    xattr -w com.dropbox.ignored 1 node_modules
    command yarn $@
}

alias ahead="git diff @{u}.."