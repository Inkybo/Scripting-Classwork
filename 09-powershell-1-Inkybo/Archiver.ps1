$days = $args[0]
Get-ChildItem -Path ".\" -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-$days))} | Compress-Archive -CompressionLevel Fastest -DestinationPath ".\Archive.zip" #gets files that are older than argument then zips them
