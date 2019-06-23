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

if (Test-Path $profile)
{
  Write-Warning "$profile already exists"
  exit
}

$profileSource = Join-Path $PSScriptRoot "Microsoft.PowerShell_profile.ps1"
New-Item -Path $profile -ItemType SymbolicLink -Value $profileSource
