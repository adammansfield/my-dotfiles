#!/usr/bin/env bash
# Script to easily run Export-DockerEnv.ps1 inside Windows for Linux Subsystem (WSL).
declare -r script_directory=$(dirname "$(readlink -f "$0")")
declare -r powershell_filename="Export-DockerEnv.ps1"

# Run Powershell script from a path visible in Windows.
declare -r timestamp=$(date +%Y%m%dT%H%M%S)
declare -r directory_windows_path="C:\\temp-exportdockerenv-$timestamp"
declare -r directory_linux_path="/mnt/c/temp-exportdockerenv-$timestamp"
mkdir $directory_linux_path
cp "$script_directory/$powershell_filename" $directory_linux_path
powershell.exe -NoProfile -File "$directory_windows_path\\$powershell_filename" $@

dockerEnvFile=$directory_linux_path/.dockerenv
if [ -f $dockerEnvFile ]; then
  mv -f $dockerEnvFile "$script_directory/."
else
  echo "ERROR: Failed to generate .dockerenv"
fi

rm $directory_linux_path/$powershell_filename
rm -d $directory_linux_path
