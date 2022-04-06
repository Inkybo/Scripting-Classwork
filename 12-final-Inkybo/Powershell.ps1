$process = Get-process
ForEach-Object {
	if($process.StartTime -le (Get-Date).AddHours(24)){ #filter running for anything less than or e24 hours
		$process | Select-Object -Property name,description,id,starttime | Export-Csv -Path .\Process.csv #get processes and export to csv
	}
}

$services = Get-WmiObject win32_service #get services
$processes = Import-Csv -Path .\Process.csv #import the previously made csv
$html_file = New-Item -ItemType File -name "Processes&Services.html" -force #create html document
Add-Content $html_file "<html><body><p>" #append starting html tags

foreach($process in $processes){
	Write-Output "Process: " $process.Name | Out-File -Append -FilePath '.\Processes&Services.html' #append current process name
	Add-Content $html_file "<br/>" #append line break for readable list
	foreach($service in $services){
		if($process.id -eq $service.Processid){ #check if the service has the same processid as the current process object
			Write-Output "Service: " $service.Name | Out-File -Append -FilePath '.\Processes&Services.html' #append services for the current process
			Add-Content $html_file "<br/>" #append line break for readable list
		}
	}
	Write-Output "===============" | Out-File -Append -FilePath '.\Processes&Services.html' #append speratior to html output
	Add-Content $html_file "<br/>" #append line break for readable list
}
Add-Content $html_file "</p></body></html>" #append ending html tags
