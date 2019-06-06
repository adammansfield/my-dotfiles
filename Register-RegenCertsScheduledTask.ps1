# .SYNOPSIS
# Create a task to automatically regenerate docker certificates upon login
#
# .DESCRIPTION
# The Docker VM has a different IP everytime that the computer is restarted.
# So the certificates become invalid and need to be regenerated.
#
# This script will create a Task Scheduler task that will regenerate the
# certificates, and rerun `docker-machine env --shell sh $VM > ~/.dockerenv`.
# That will update the WSL environment variables for the new IP
#
# .NOTES
# This script can be run from anywhere, but assumes that ~/my-dotfiles exists
# in the Windows Subsystem for Linux.

$executable = "bash"
$argument = "--norc --noprofile -c '~/my-dotfiles/exportdockerenv.sh -RegenerateCerts'"

$action = New-ScheduledTaskAction -Execute $executable -Argument $argument -WorkingDirectory $PSScriptRoot
$principal = New-ScheduledTaskPrincipal -UserId $env:UserName -RunLevel Highest
$trigger = New-ScheduledTaskTrigger -AtLogOn -User $env:UserName

Register-ScheduledTask `
    -Action $action `
    -Principal $principal `
    -TaskName "RegenerateDockerCerts" `
    -Trigger $trigger
