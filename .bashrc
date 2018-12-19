# If this is not running interactively, then do nothing.
[[ "$-" != *i* ]] && return

# Run xmodmap configuration.
if [ "$(uname -o)" != "Cygwin" ]; then
  xmodmap .xmodmap &>/dev/null
fi

# Prompt setting.
PS1='\[\e]0;\u@\h \w\a\]\[$(tput setaf 2)\][\u@\h:\W]\[$(tput sgr0)\] $ '

# ls settings.
export LS_COLORS='di=01;37'

# Do not wait for job termination notification.
set -o notify

# Use case-insensitive filename globbing.
shopt -s nocaseglob

# Ignore small typos when changing directories.
shopt -s cdspell

# Completion for sudo.
complete -cf sudo

# Do not add duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Save the previous command in a file before prompting for the next command.
promptFunc()
{
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/.full_history
}
PROMPT_COMMAND=promptFunc

if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

if [ -f "${HOME}/.bash_private" ]; then
  source "${HOME}/.bash_private"
fi

if [ -f "${HOME}/.dockerenv" ]; then
  source "${HOME}/.dockerenv"
fi
