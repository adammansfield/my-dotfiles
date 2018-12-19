#.SYNOPSIS
#  Save the result of 'docker-machine env --shell sh VM_NAME' to easily connect
#  Windows Subsystem for Linux (WSL) docker to the VM used by Docker for Windows.
param([string]$VirtualMachine, [string]$OutFile="$PSScriptRoot\.dockerenv")

$windowsIdentitiy = [System.Security.Principal.WindowsIdentity]::GetCurrent();
$windowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($windowsIdentitiy);
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator;
if (!$windowsPrincipal.IsInRole($adminRole))
{
    # Launch a new elevated process to re-run this script.
    $startInfo = New-Object System.Diagnostics.ProcessStartInfo
    $startInfo.Arguments = "-Command ""& '" + $script:MyInvocation.MyCommand.Path + "'"""
    $startInfo.FileName = 'PowerShell'
    $startInfo.Verb = 'runas'
    $process = [System.Diagnostics.Process]::Start($startInfo)
    $process.WaitForExit()
    exit
}

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

$commands | Out-File -NoNewline -Encoding ASCII $OutFile

Write-Host "Remember to run symlink-dotfiles.sh in Windows Subsystem For Linux to auto-load .dockerenv."
