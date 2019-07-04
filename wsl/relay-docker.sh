#!/bin/sh

# https://devblogs.microsoft.com/commandline/cross-post-wsl-interoperability-with-docker

if [ -S /var/run/docker.sock ]; then
  echo "ERROR: $(basename "$0") is already running"
  read -r -p "Kill [y/N] " response
  case "$response" in
    [nN])
      exit 1
      ;;
    *)
      rm /var/run/docker.sock
      pkill -f "npiperelay.exe"
      echo "Rerun relay-docker.sh"
      # TODO: do not kill self
      pkill -f "relay-docker.sh"
      exit 0
      ;;
  esac
fi

exec socat UNIX-LISTEN:/var/run/docker.sock,fork,group=docker,umask=007 EXEC:"npiperelay.exe -ep -s //./pipe/docker_engine",nofork
