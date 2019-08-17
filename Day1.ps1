Get-Service

Get-EventLog

Stop-Service -Name BITS
Start-Service -Name BITS

Get-LocalUser
Get-Service -Name BITS

Get-Command -Noun Service  # to fetch the command details for particual noun i.e. Services

Get-Command -Verb get # to get the command details only for verb i.e. Get

Get-Command -Module -

Get-Help Get-Service # to get the syntax of the details realted to verb

Get-Help Get-Service -Examples # to get the examples IMP

Get-Help Get-Service -Online # to get online help

Get-Help Get-Service -ShowWindow # to get help in anather window

Get-Command -Noun *VM* -Module Azure* # to collect the details for VM hosted on Azure
Get-Command -Noun *log* | Out-File C:\Demo\Commands.txt # example

Get-Help Get-DtcLog -Examples # to get the details of particular command

Get-Help -Get-DtcLog

Get-Help Get-Service -Examples



Get-Service -Name *Win*
Get-Service -Name *Microsoft*

Get-Help Get-EventLog -ShowWindow


Get-EventLog -LogName System -Source "*BTHUSB"   #Working
Get-EventLog -LogName System -Source "*BROWSER" # Working
Get-EventLog -LogName System  -Source "*kernel-General" # No Working
Get-EventLog -LogName System -Source "*Microsoft-Windows-Kernel-Boot*"
Get-EventLog -LogName System  -Source "*kernel-Power"

Get-EventLog -LogName Application  -Source "*Security-SPP" | Out-File C:\Demo\Event1.txt
Get-EventLog -LogName Application  -Source "Security-SPP*"

Get-EventLog -LogName System -Source "BTHUSB" | Out-File C:\Demo\Event2.txt

Get-EventLog -LogName System -Source "BTHUSB" | Export-Csv C:\Demo\event2.csv

Get-EventLog -LogName System -Source "BTHUSB" | Export-Csv -Path C:\Demo\event3.csv


Get-Command -Noun File

Get-PSProvider

Get-Command -Noun *Item*

Get-Item
Get-ItemProperty
Get-ChildItem    # these 3 nouns are very important

Get-Command -Noun ChildItem

get-help Get-ChildItem -ShowWindow


Get-ChildItem C:\Windows\System32 -Recurse

Get-ChildItem HKLM:\SOFTWARE
Get-Item HKLM:\SOFTWARE
Get-ItemProperty HKLM:\SOFTWARE

Get-ChildItem -Path C:\Demo\Event2.txt
Get-Item -Path C:\Demo\Event2.txt
Get-ItemProperty -Path C:\Demo\Event2.txt

Get-ChildItem -Path C:\Demo
Get-Item -Path C:\Demo
Get-ItemProperty -Path C:\Demo

Get-PSProvider

Get-ChildItem -Path env:\  # to check the available enviornment in 

Get-ChildItem -Path Env:\APPDATA  # check the value of particual name i.e.APPDATA

Get-Item -Path Env:\APPDATA


Get-Command -Noun Item

Get-Command -Noun Item

Get-Help New-Item -Examples

New-Item -ItemType Directory -Name  #Create new folder

New-Item -ItemType File -Name 1.txt -Path C:\IAC1 # Create new file in Folder

Get-Help -Name Set-Item

Get-Command -Noun Content -Syntax

Get-Help

Set-Content -Path C:\IAC1\1.txt -Value "Sachin"  # add content in file

Set-Content -Path C:\IAC1\1.txt -Value "Patil" -Include

Get-Command -Noun ItemProperty -Syntax

Get-Command -Noun ItemProperty -Syntax
  
Get-Help Set-ItemProperty -ShowWindow

Get-Command Set-ItemProperty  # Change Item Property 


Get-ItemProperty C:\IAC1\1.txt | fl *


Set-ItemProperty -Path C:\IAC1\1.txt  -Name CreationTime -Value "11/08/2019 8:00:00 AM"

Set-ItemProperty -Path C:\IAC1\1.txt -Name CreationTime -Value "12/08/2019 9:00:00 PM"

# To Check Properties and method of Object

Get-Service | Get-Member

cls
"sachin" | Get-Member
"sachin".Replace("i","e")
"sachin".Length

"This is my First Day" | Get-Member


"This is my First Day".Split(',') #Just give an space in Bracket

"this is my first day".Split( )

"this, is".Split(',')


"dinesh".IndexOf('e') find the index of e in dinesh (length start with 1 index start with 0)

"dinesh".Substring(3) only require esh from name

cls

Get-Service | Get-Member

Get-Member -InputObject Get-Service

Get-Member -InputObject (Get-Service) Collection of object System.object[]

$myarray = @("Sachin", "Khush")
$myarray

$servicename = "BITS"
$servicename

Write-host "This is a $Servicename"

$myarray | Get-Member

Get-Member -InputObject $myarray # use this command to get proper output

$myarray

$myarray[0]
$myarray[1]
$myarray[0] = "Gayatri" to replace with 0
$myarray[0]