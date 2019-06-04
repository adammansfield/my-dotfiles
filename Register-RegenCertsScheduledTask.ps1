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
