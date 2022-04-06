#Group check#############################################
$Groups = Get-ADGroup -filter *
foreach ($group in $Groups){
$Members = Get-ADGroupMember -Identity $group.name
    Write-Host Group: $group.name #print the ad groups
    Write-Host =================
foreach ($Member in $Members){
    Write-Host $Member.name #print the members of the groups
}
Write-Host
}
