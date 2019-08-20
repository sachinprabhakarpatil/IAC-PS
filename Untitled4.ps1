
$computers = @("PRODDBVSPARE", "VEEAMENTMGR")
 
foreach ($computer in $computers) {
    #Enter-PSSession $computer
    #cd 'HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon'
    #Set-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -InformationAction "CachedLogonsCount" -Value "0"
    #Set-ItemProperty -Path . -Name "CachedLogonsCount" -Value "0"
    #Exit-PSSession
        Set-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name "CachedLogonsCount" -Value "0"
}
cls
