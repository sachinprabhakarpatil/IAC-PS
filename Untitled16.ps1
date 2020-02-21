$From = "\\Fileserver_Name\Drive\Path"
$To = "\\New_File_server_Name\Drive\Path"

Get-ChildItem -Path $From | % {
Copy-Item $_.FullName "$To"  -Recurse -Force
}