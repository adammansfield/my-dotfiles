# Source the users bashrc if it exists.
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists.
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

# Set MANPATH so it includes users' private man if it exists.
if [ -d "${HOME}/man" ]; then
  MANPATH="${HOME}/man:${MANPATH}"
fi

# Set INFOPATH so it includes users' private info if it exists.
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
