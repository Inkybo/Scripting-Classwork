Get-EventLog -List
New-EventLog -LogName "A_NEW_LOG" -source "eventlog.ps1" #create new log
Limit-EventLog -LogName "A_NEW_LOG" -MaximumSize 64KB -RetentionDays 1 -OverflowAction OverwriteOlder #set logs size, retetion
For($i=0; $i -le 99; $i++){
    Write-EventLog -LogName "A_NEW_LOG" -Source "eventlog.ps1" -EventId 1234 -Message "New message $i" #create 100 logs
}
Get-EventLog -list
Get-EventLog System | Export-Clixml -Path .\Event_list.xml #export log list
Clear-EventLog "A_NEW_LOG" #clears "A_NEW_LOG"
Remove-EventLog -source "eventlog.ps1" #removes source for New-EventLog
