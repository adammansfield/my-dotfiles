function mdv() {
  markdown.pl $1 | w3m -T text/html
}

function cd() {
  if [ "$1" == "" ]; then
    builtin cd && ls -hF --color=tty --group-directories-first
  else
    builtin cd "$1" && ls -hF --color=tty --group-directories-first 
  fi
}

# rename multiple files
# ls -d *.php3 | sed 's/\(.*\).php3$/mv "&" "\1.php"/' | sh
