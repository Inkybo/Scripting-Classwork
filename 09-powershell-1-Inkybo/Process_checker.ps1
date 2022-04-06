if($($args[1]) -eq $null){
    $var = 1
}
while($true)
{
    $var = $args[1]
    $process = Get-Process -Id $($args[0]) -ErrorAction SilentlyContinue #checks if process is running
    $process_1 = Get-Process -Id $($args[0]) -ErrorAction SilentlyContinue | Select-Object -expandProperty Name #gets running process name

    Start-Sleep -s $var
    if($process -eq $Null){
        Write-Host "Process is not running"
    }
    else{

        Write-Host $process_1 "is running"
    }
}
