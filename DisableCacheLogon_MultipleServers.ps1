$Computers = Get-Content "C:\Test\Computerlist.txt"
$Path = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon'
$Property = "CachedLogonsCount"


$results = foreach ($computer in $Computers)
{
    If (test-connection -ComputerName $computer -Count 1 -Quiet)
    {
        Try {
            Set-ItemProperty -Path $Path -Name $Property -Value "0" -ErrorAction 'Stop'
            $status = "Success"
        } Catch {
            $status = "Failed"
        }
    }
    else
    {   
        $status = "Unreachable"
    }
    
    New-Object -TypeName PSObject -Property @{
        'Computer'=$computer
        'Status'=$status
    }
}

$results |
Export-Csv -NoTypeInformation -Path "C:\Test\out.csv"