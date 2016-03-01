if [[ "$(tput 2>&1)" == *"unknown terminal"* ]]; then
  echo "Terminal is unknown. Setting TERM=xterm-256color"
  export TERM=xterm-256color
fi

if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

if [ -d "${HOME}/man" ]; then
  MANPATH="${HOME}/man:${MANPATH}"
fi

if [ -d "${HOME}/info" ]; then
  INFOPATH="${HOME}/info:${INFOPATH}"
fi

# Only ask for my SSH key passphrase once. Use existing ssh-agent if possible.
if [ -f ${HOME}/.ssh-agent ]; then
  . ${HOME}/.ssh-agent > /dev/null
fi
if [ -z "$SSH_AGENT_PID" -o -z "`/usr/bin/ps -a|/usr/bin/egrep \"^[ ]+$SSH_AGENT_PID\"`" ]; then
   /usr/bin/ssh-agent > ${HOME}/.ssh-agent
   . ${HOME}/.ssh-agent > /dev/null
fi
ssh-add ~/.ssh/id_rsa
