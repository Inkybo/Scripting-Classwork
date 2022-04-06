#Create users and groups#################################
Import-Csv $args | ForEach-Object { New-ADUser `
    -Name $_.username `
    -GivenName $_.firstname `
    -Surname $_.lastname `
    -UserPrincipalName $_.username `
    -State $_.province `
    -AccountPassword (ConvertTo-SecureString $_.password -AsPlainText -force)}

Import-Csv $args | ForEach-Object {New-ADGroup -Name $_.department -GroupScope Global -EA SilentlyContinue} -EA SilentlyContinue #import deparment value from csv
Import-Csv $args | ForEach-Object {Add-ADGroupMember -Identity $_.department -Members $_.username} #add users to groups
