$users = Get-Content -Path $args[0] #gets contents of specified file
$passwd = Read-Host -AsSecureString "Please Enter Password for all users to be added: " #sets passwd var used for all users
foreach ($user_ in $users){
   New-LocalUser -Name $user_ -Password $passwd -AccountNeverExpires #creates user w/ $users and $passwd vars
}
