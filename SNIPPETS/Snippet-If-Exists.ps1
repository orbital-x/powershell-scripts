<#
   .NOTES
        Author: Roboute Guilliman
        Created: 2018

    .SYNOPSIS
        Creates WINDOWS SUPPORT folder on user's desktop

    .DESCRIPTION
        -Powershell uses the "!" as a logical "not" operator
        -If used next to a valible, it would mean not $TRUE or existent
#>



# IF EXISTS
$firefox = Get-Process xmofts -ErrorAction SilentlyContinue

if ($firefox) {write-host "Process Exists"}
else {Write-Host "Process doesn't exist"}



# DOES NOT EXIST
$firefox = Get-Process xmofts -ErrorAction SilentlyContinue

if (!$firefox) {Write-Host "Does not exist"}
else {Write-Host "Process Exists"}

