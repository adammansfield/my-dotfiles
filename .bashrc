# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Etc
# ---
# Run xmodmap configuration.
if [ "$(uname -o)" != "Cygwin" ]; then
  xmodmap .xmodmap &>/dev/null
fi

# Shell Options
# -------------
# Prompt Setting
PS1='\[\e]0;\u@\h \w\a\]\[$(tput setaf 2)\][\u@\h:\W]\[$(tput sgr0)\] $ '

# ls settings
export LS_COLORS='di=01;37'

# Don't wait for job termination notification
set -o notify

# Use case-insensitive filename globbing
shopt -s nocaseglob

# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# Completion for sudo
complete -cf sudo

# History Options
# ---------------
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Save the previous command in a file before prompting for the next command.
promptFunc()
{
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/.full_history
}
PROMPT_COMMAND=promptFunc

# Aliases
# -------
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Functions
# ---------
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

# Private (Not In Git Repo)
# -------------------------
if [ -f "${HOME}/.bash_private" ]; then
  source "${HOME}/.bash_private"
fi
