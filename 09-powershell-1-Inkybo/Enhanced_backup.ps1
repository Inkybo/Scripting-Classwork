if(!(Test-Path -Path ".\Backup")){
    New-Item -Path ".\" -Name "Backup" -ItemType "directory"
}
Write-Host""
Write-Host "Backed up following files @ .\Backup:"
Write-Host "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
Get-ChildItem ".\" -Filter "*.$($args[0])"| Copy-Item -Destination ".\Backup" -PassThru | Select-Object -expandProperty Name #filters out files not ending in the appropriate ext then copies to .\backup
Write-Host "≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈≈"
