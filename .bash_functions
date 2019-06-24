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

sudo()
{
  if alias "$1" &> /dev/null ; then
    $(type "$1" | sed -E 's/^.*`(.*).$/\1/') "${@:2}"
  else
    command sudo "$@"
  fi
}
