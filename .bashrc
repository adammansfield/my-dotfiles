# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return


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

promptFunc()
{
  # right before prompting for the next command, save the previous
  # command in a file.
  echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/.full_history
}
PROMPT_COMMAND=promptFunc

# Aliases
# -------
# Load aliases from file
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi


# Functions
# ---------
# Load functions from file
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi
