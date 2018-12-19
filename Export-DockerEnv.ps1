#.SYNOPSIS
#  Save the result of 'docker-machine env --shell sh VM_NAME' to easily connect
#  Windows Subsystem for Linux (WSL) docker to the VM used by Docker for Windows.
#Requires -RunAsAdministrator
param([string]$VirtualMachine)

if (!$VirtualMachine)
{
  Write-Warning "Virtual machine argument is empty. Exporting env of the first virtual machine in the list."
  $VirtualMachine = (docker-machine ls)[1].Split(" ")[0]
}

$commands = docker-machine env --shell sh $VirtualMachine

# Add newlines (without carriage returns).
$commands = $commands -replace "$", "`n"

# Convert Windows paths to Linux/WSL paths.
$commands = $commands -replace "C:\\", "/mnt/c/"
$commands = $commands -replace "\\", "/"

$commands | Out-File -NoNewline -Encoding ASCII .dockerenv

Write-Host "Remember to run symlink-dotfiles.sh in Windows Subsystem For Linux to update .dockerenv."
