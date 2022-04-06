#Get users by group######################################
Write-Host Group: $args[0]
Write-Host =+=+=+=+=+=+=+=+=+=

Get-ADGroupMember -Identity $args[0] | Select -expandProperty SamAccountName #list users in group
