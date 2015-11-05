# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.

if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi
