function markdownviewer() {
  markdown.pl $1 > mdtemp.html && chrome.exe mdtemp.html && sleep 1s && rm mdtemp.html
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
