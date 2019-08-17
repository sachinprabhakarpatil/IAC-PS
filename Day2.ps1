Get-Command -Noun Service

Get-Help Get-Service -examples

Get-Service | gm

service.stop("BITS") # Not workign

#STring

Start-Transcript

"sachin" | gm

"sachin".Length

"sachin".Contains("i")

"sachin".Replace("a","u")
"sachin".ToBoolean("i")
"sachin".Remove(1,2)
"sachin".Remove(3,5)
"sachin".ToUpper()

$name = "sachin"

Write-Host "$name"
Write-Host '$name' # no ouput same output as in single quote

"this is my name '$name'" #if take single quote in double quote it resovlve

'this is my name "$name"' #if take double quote in single quote it not resovlving

$myarray=@("sachin", 1; "khush")


$myarray | gm

Get-Member -InputObject $myarray



$myarray[0].Length
$myarray[2].CompareTo("h")
$myarray.Length

Get-PSProvider # interface to connect 

Get-Command -Noun PSProvider

Get-ChildItem HKLM:\SOFTWARE -Recurse

Get-Item HKLM:\SOFTWARE

Get-Item Env:\Path

Get-ChildItem cert:\ -Recurse

Get-ItemProperty HKLM:\SOFTWARE

New-Item -ItemType Directory -Path C:\Users\DELL\Desktop\

New-Item -ItemType Directory -Path C:\Users\DELL\Desktop\NTMSTEST\test.txt -Value "sachin patil" -upd
 
Get-ChildItem C:\Windows | Out-File C:\Users\DELL\Desktop\NTMSTEST\log.txt

Get-ChildItem C:\Windows | Out-File C:\Users\DELL\Desktop\NTMSTEST\log.csv


Get-ItemProperty -Path C:\Users\DELL\Desktop\NTMSTEST\log.txt | fl *
Get-ItemProperty -Path C:\Users\DELL\Desktop\NTMSTEST\log.csv | fl *

$path = Read-Host -Prompt "give your path"
Get-ChildItem -Path $path 

Write-Host "Give your Path"
$path = Read-Host
Get-ChildItem -Path $path


[int]$var1 = Read-Host
[int]$var2 = Read-Host 
$addvalue = ($var1 + $var2)
$addvalue

Write-Host Number1
$num1 = Read-Host
Write-Host Number2
$num2 = Read-Host
Write-Host "Additon is $num1 + $num2"

Write-Host Number1
$num1 = Read-Host
Write-Host Number2
$num2 = Read-Host
Write-Host "Additon is" $num1 + $num2

Write-Host Number1
$num10=$num6.ToInt32($null) = Read-Host
Write-Host Number2
$num11=$num5.ToUInt32($null) = Read-Host
Write-Host "Additon is" ($num6 + $num5)

Write-Host Number8
$num1=$num2.ToInt32($null) = Read-Host
Write-Host Number2
$num3=$num4.ToUInt32($null) = Read-Host
Write-Host "Additon is" ($num1 + $num3)

Write-Host Number1
$number=$number1.ToInt16($null)=Read-Host
Write-Host Number2
$number1=$number2.ToInt16($null)=Read-Host
Write-Host "Multiplication is" ($number1 + $number2)

[int]$var1 = Read-Host
[int]$var2 = Read-Host 
$addvalue = ($var1 + $var2) #Convert the value

[int]$var3 = Read-Host
[bool]$var4 = Read-Host
$addvalue1 = ($var3 + $var4)  # it is not working as not converting the value

#condition Flow

3 -lt 1 # Example

[int]$var21 = Read-Host
[int]$var22 = Read-Host

if (10 -gt 8)
{Write-Host "$var21  greater than $var22"
}
else
{Write-Host "$var21  less than $var22"
}

#
$Service = Get-Service -Name "BITS"
if ($Service.Status -eq 'Running')
{Write-Host "$Service is stopped"}
elseif
{Write-Host "$Service is Suspend"
}
else
{Write-Host "$Service is failed"
}
Write-Host "$Service is stopped"
#


$Service = Get-Service -Name BITS

if($Service.Status -eq "stopped")
{Write-Host "service is stopped"}
elseif ($Service.Status -eq "running")
{Write-Host "service is running"}
else
{Write-Host "service is suspend"}


#Switch

$Service1 = Get-Service -Name "BITS"
Switch ($Service1.Status)
{Stopped {Write-Host "$Service1 is Stopped"}

Runnig {Write-Host "$Service1 is Running"}

Suspend {Write-Host "$Service1 is Suspend"}

Default {Write-Host "$Service1.is failed"}
}

"11" -eq 11
11 -eq "11"

"sachin" -match "in"
"sachin" -match "in"
"sachin" -match "^sa"
"sachin" -match "n$"
"sachin" -match "^sn$"
"sachin" -match "^s....n$"
"sachin" -match "^s.....$"

Get-Help about_reguler_expression -ShowWindow

# 
[] character group

"sachin" -match "s[ah]chin"
"sachin" -match "s[bd]chin"

#
{} Number of occurance

"Prathamesh" -match "^P[10]$"
"PPPPPPPPPP" -match "^P{10}$"
"PPPPPPP" -match "^P{10}$"
"PPPPPPPPPP" -match "^P{10,}$"
"PPPPPPPPPP" -match "^P{5,7}$"
"PPPPPPPPPP" -match "^P{10}"


mum-srv01 -match ^\w{3}[-]srv\d{2}$
blr-srv02
del-srv03
chn-srv04





# For Loop

For($i=1; $i -lt 10; $i=$i+1)
{Write-host $i
}

For($srv=SRV1; $srv -le 10; $srv=$srv+1)
{$S = "server"
Write-Host $srv}

For($i=1; $i -lt 10; $i=$i+2)
{Write-host *
}

For($i=1; $i -lt 10; $i=$i+2)
{Write-host * -NoNewline
}

For($i=1; $i -le 10; $i=$i+2)
{Write-host * -NoNewline
}

}


Get-Help about_switch -ShowWindow
Stop-Service -Name BITS
Start-Service -Name BITS

Get-Service -Name BITS

Get-Help about_operators




$num3 | Get-Member

$num1 | Get-Member

Get-Help Read-Host -ShowWindow


