SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function ccl {
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$')
}

function cclh {
  TMPFILE=$(gmktemp --suffix=.html)
  codeclimate analyze $(git status --porcelain | awk {'if ($1 == "D") print $4 ; else print $2'} | grep -E '(.js)$') -f html > $TMPFILE
  open -a "Google Chrome Canary" $TMPFILE
}

# export PATH="$PATH:$HOME/$SCRIPT_DIR/bin"