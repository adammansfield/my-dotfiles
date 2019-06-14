# If this is not running interactively, then do nothing.
[[ "$-" != *i* ]] && return

# Run xmodmap configuration.
if [ "$(uname -o)" != "Cygwin" ]; then
  xmodmap .xmodmap &>/dev/null
fi

complete -cf sudo

export GOPATH="$HOME/go"
# Undocumented feature which sets the size to "unlimited".
export HISTFILESIZE=
export HISTSIZE=
# Change the file location because certain bash sessions truncate .bash_history file upon close.
export HISTTIMEFORMAT="%F %T:"
export HISTFILE=~/.bash_eternal_history
export LS_COLORS='di=01;37'
export PATH="$PATH:/usr/lib/go-1.9/bin"

# Do not wait for job termination notification.
set -o notify

# Use case-insensitive filename globbing.
shopt -s nocaseglob

# Ignore small typos when changing directories.
shopt -s cdspell

# Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
# Prompt setting.
PS1='\[\e]0;\u@\h \w\a\]\[$(tput setaf 2)\][\u@\h:\W]\[$(tput sgr0)\] $ '

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

if [ -f "${HOME}/.bash_private" ]; then
  source "${HOME}/.bash_private"
fi

if [ -f "${HOME}/.bash_sshagent" ]; then
  source "${HOME}/.bash_sshagent"
fi

if [ -f "${HOME}/.dockerenv" ]; then
  source "${HOME}/.dockerenv"
fi

command cd ~
