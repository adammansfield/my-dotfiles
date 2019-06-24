#!/bin/sh

# https://devblogs.microsoft.com/commandline/cross-post-wsl-interoperability-with-docker

if [ -S /var/run/docker.sock ]; then
  echo "ERROR: $(basename "$0") is already running"
  exit 1
fi

exec socat UNIX-LISTEN:/var/run/docker.sock,fork,group=docker,umask=007 EXEC:"npiperelay.exe -ep -s //./pipe/docker_engine",nofork
