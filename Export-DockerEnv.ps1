#.SYNOPSIS
#  Save the result of 'docker-machine env --shell sh VM_NAME' to easily connect
#  Windows Subsystem for Linux (WSL) docker to the VM used by Docker for Windows.
param([string]$VirtualMachine="", [string]$OutFile="$PSScriptRoot\.dockerenv", [Switch]$RegenerateCerts=$False)

function Export-DockerEnv()
{
  if (!(IsAdmin))
  {
    RelaunchAsAdmin
    exit
  }

  if (!$VirtualMachine)
  {
    Write-Warning "Virtual machine argument is empty; Exporting env of the first virtual machine in the list"
    $VirtualMachine = GetDefaultVirtualMachine
  }

  if ($RegenerateCerts)
  {
    Write-Host "Regenerating certificates for $VirtualMachine"
    docker-machine regenerate-certs "$VirtualMachine"
  }

  $commands = docker-machine env --shell sh $VirtualMachine
  $commands = $commands -replace "$", "`n"  # Add newlines (without carriage returns).
	$commands = $commands -replace "C:\\", "/mnt/c/"  # Convert Windows paths to Linux/WSL paths.
  $commands = $commands -replace "\\", "/"
  $commands | Out-File -NoNewline -Encoding ASCII $OutFile

  Write-Host "Remember to run symlink-dotfiles.sh in Windows Subsystem For Linux to auto-load .dockerenv"
}

function GetDefaultVirtualMachine()
{
  return (docker-machine ls)[1].Split(" ")[0]
}

function IsAdmin()
{
  $windowsIdentitiy = [System.Security.Principal.WindowsIdentity]::GetCurrent();
  $windowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($windowsIdentitiy);
  $adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator;
  return $windowsPrincipal.IsInRole($adminRole)
}

# Launch a new elevated process to re-run this script.
function RelaunchAsAdmin()
{
  $arguments = "-OutFile $OutFile"
  if ($VirtualMachine)
  {
    $arguments += " -VirtualMachine $VirtualMachine"
  }
  if ($RegenerateCerts)
  {
    $arguments += " -RegenerateCerts"
  }

  $startInfo = New-Object System.Diagnostics.ProcessStartInfo
  $startInfo.Arguments = "-Command ""& " + $script:MyInvocation.MyCommand.Path + " $arguments"""
  $startInfo.FileName = 'PowerShell'
  $startInfo.Verb = 'runas'
  $process = [System.Diagnostics.Process]::Start($startInfo)
  $process.WaitForExit()
}

if ($MyInvocation.InvocationName -ne '.')
{
  $script:ErrorActionPreference = 'Stop'
  $script:WarningPreference = 'Continue'
  exit Export-DockerEnv @PSBoundParameters
}
