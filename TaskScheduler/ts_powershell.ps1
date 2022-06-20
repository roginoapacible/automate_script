$user = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
$action = New-ScheduledTaskAction -Execute 'pwsh.exe' -argument "C:\Users\rogin\Downloads\@github-repo\automate_script\openSlate.ps1"
$trigger = New-ScheduledTaskTrigger -AtLogOn -User $user
Register-ScheduledTask -Action $action -Trigger $trigger -User $user -TaskName "OpenSlate" -Description "Open sheridanSlate on default browser"