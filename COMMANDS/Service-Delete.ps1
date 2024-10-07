<#
    .NOTES
        Author: Roboute Guilliman
        Created: 10/2024

    .SYNOPSIS
        Remote-query a machine. 

    .DESCRIPTION
        Use WMI or other tools for Powershell v5 or below
        "Remove-Service" cmdlet added Powershell 6.0 

    .SOURCE
        https://stackoverflow.com/questions/4967496/check-if-a-windows-service-exists-and-delete-in-powershell

#>


# PowerShell (Powershell v6)
Remove-Service -Name ServiceName 

 
# WMI (PowerShell <v5) 
$service = Get-WmiObject -Class Win32_Service -Filter "Name='servicename'" 
$service.delete() 

 
# Command-Linem (CMD)
sc.exe delete ServiceName 
sc.exe \\server delete "MyService" 
