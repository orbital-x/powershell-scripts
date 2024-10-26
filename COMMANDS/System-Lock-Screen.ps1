<#
   .NOTES
        -Author: Roboute Guilliman
        -Created: 10/2024

    .SYNOPSIS
        -Command to create a batch file that locks the screen

    .DESCRIPTION
        -Open notepad, past command to it and save it as "name.bat"
#>

rundll32.exe user32.dll,LockWorkStation