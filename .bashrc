# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return


# Shell Options
# -------------
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

# Colors
# ------
# Load colors from file
if [ -f "${HOME}/.bash_colors" ]; then
  source "${HOME}/.bash_colors"
fi

