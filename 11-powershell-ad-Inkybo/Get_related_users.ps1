#Get Related users #######################################
$Groups = (Get-ADUser -Identity $args[0] -Properties memberof).memberof | Get-ADGroup | Select-Object name| Sort-Object name #Select groups from user input
foreach ($group in $Groups){
$Members = Get-ADGroupMember -Identity $group.name 
    Write-Host Group: $group.name
    Write-Host =================
foreach ($Member in $Members){
    Write-Host $Member.name
}
Write-Host -----------------
Write-Host 
}
