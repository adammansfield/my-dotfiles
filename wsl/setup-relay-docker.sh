#!/usr/bin/env bash

# https://devblogs.microsoft.com/commandline/cross-post-wsl-interoperability-with-docker

sudo apt update -qq
sudo apt install -y docker.io socat

cmd='Write-Host (($env:USERPROFILE -replace "C:","/mnt/c") -replace "\\","/")'
win_home=$(powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "$cmd")

export GOOS=windows
go get -d github.com/jstarks/npiperelay
go build -o $win_home/go/bin/npiperelay.exe github.com/jstarks/npiperelay
sudo ln -s $win_home/go/bin/npiperelay.exe /usr/local/bin/npiperelay.exe

sudo adduser $USER docker
