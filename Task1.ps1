Get-PSDrive

Get-Command -Noun Location

Get-Help Set-Location -ShowWindow

Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced

Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced 

Get-Command -Noun ItemProperty

Get-Help Set-ItemProperty -ShowWindow

Get-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "DontPrettyPath"

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "DontPrettyPath" -Value "1"

Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name "DontPrettyPath" -Value "0"


Get-Command -Noun  Item
Get-Help New-Item -ShowWindow

New-Item -ItemType Directory -Path C:\Demo

New-Item -ItemType File -Path C:\Demo\test.txt

Get-ItemProperty -Path C:\Demo\test.txt | Fl *


Set-ItemProperty -Path C:\Demo\test.txt -Name "IsReadOnly" -Value "False"

$env:TEMP








