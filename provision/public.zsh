SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function ccl {
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$')
}

function cclh {
  TMPFILE=$(gmktemp --suffix=.html)
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$') -f html > $TMPFILE
  open -a "Google Chrome Canary" $TMPFILE
}

# find /opt/lampp/htdocs -type f -exec chmod +x {} \;
export DEV="$HOME/dev"
export PATH="$PATH:$DEV/public/bin:$HOME/.local/bin:$HOME/.yarn/bin"

function yarn {
    mkdir -p node_modules
    # todo use dropbox ignore instead
    xattr -w com.dropbox.ignored 1 node_modules
    command yarn $@
}

# git archive -o ~/downloads/${$(git rev-parse --abbrev-ref HEAD)/\//}.zip HEAD `git diff --name-only alpha..HEAD`
# git archive -o update.zip HEAD $(git diff --name-only HEAD^)
# git format-patch -o ~/downloads/ $(git merge-base --fork-point alpha)..$(git rev-parse --abbrev-ref HEAD)

# prettier open
# ./node_modules/.bin/prettier --write $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'})

# prettier branch - fix deletes
# ./node_modules/.bin/prettier --write $(git diff --name-only alpha)

alias ahead="git diff @{u}.."
alias scans="cd ~/dropbox/from_brotherdevice"
alias gral='git reset $(git merge-base --fork-point alpha)'
alias grmain='git reset $(git merge-base --fork-point main)'
alias esl='~/dev/public/eslint-strict/node_modules/.bin/eslint -c ~/dev/public/eslint-strict/.eslintrc --resolve-plugins-relative-to ~/dev/public/eslint-strict/ --fix "$@" && prettier --write "$@"'
alias gmc="git merge --continue"