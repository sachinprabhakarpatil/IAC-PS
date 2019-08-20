$computers = @("PRODDBVSPARE", "VEEAMENTMGR")
foreach ($computer in $computers) {

$RegKey ="HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon"
Set-ItemProperty -Path $RegKey -Name "CachedLogonsCount"  -Value 1
}

$computers = @("PRODDBVSPARE", "VEEAMENTMGR")
foreach ($computer in $computers) {
$RegKey = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon"
Set-ItemProperty -Path $RegKey -Name "CachedLogonsCount" -Value 0
}