#!/bin/bash
# Script to easily run Export-DockerEnv.ps1 inside Windows for Linux Subsystem (WSL) filesystem.
timestamp=$(date +%Y%m%dT%H%M%S)
directory_linux_path="/mnt/c/temp-exportdockerenv-$timestamp"
directory_windows_path="C:\\temp-exportdockerenv-$timestamp"
script_filename="Export-DockerEnv.ps1"

# Copy Powershell script to a path visible from Windows.
mkdir $directory_linux_path
cp $script_filename $directory_linux_path
powershell.exe -NoProfile -File $directory_windows_path\\$script_filename

dockerenvFile=$directory_linux_path/.dockerenv
if [ -f $dockerenvFile ]; then
  mv $dockerenvFile .
else
  echo "ERROR: Failed to generate .dockerenv"
fi

rm $directory_linux_path/$script_filename
rm -d $directory_linux_path
