function apt-get()
{
  if [ "$(uname -o)" == "Cygwin" ]; then
    apt-cyg $@
  else
    /usr/bin/apt-get $@
  fi
}

function cd()
{
  if [ "$1" == "" ]; then
    builtin cd && ls -hF --color=tty --group-directories-first
  else
    builtin cd "$@" && ls -hF --color=tty --group-directories-first
  fi
}

function mdview()
{
  markdown.pl $1 > mdtemp.html && chrome.exe mdtemp.html && sleep 1s && rm mdtemp.html
}

function rmcr()
{
  sed --in-place 's/\r$//' $1
}

function sudo()
{
  if [ "$(uname -o)" == "Cygwin" ]; then
    cygstart --action=runas $@
  else
    /usr/bin/sudo "$@"
  fi
}
