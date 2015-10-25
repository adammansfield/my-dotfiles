function cd() {
  if [ "$1" == "" ]; then
    builtin cd && ls -hF --color=tty --group-directories-first
  else
    builtin cd "$1" && ls -hF --color=tty --group-directories-first
  fi
}

function mdview() {
  markdown.pl $1 > mdtemp.html && chrome.exe mdtemp.html && sleep 1s && rm mdtemp.html
}

function sudo() {
  if [ "$(uname -o)" == "Cygwin" ]; then
    cygstart --action=runas $@
  else
    /usr/bin/sudo "$@"
  fi
}
