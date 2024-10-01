<#
   .NOTES
        Author: Roboute Guilliman
        Created: 09/23

    .SYNOPSIS
        Crowdstrike Falcon removal

    .DESCRIPTION
        -Removes CS Falcon agent from machine by first check if the service is installed. 
        -Verifies "csuninstalltool.exe" is located on the local system drive
#>


#Check for CS Falcon service
$GrafanaService = Get-WmiObject -Class Win32_Service -Filter "Name='csfalconservice'" 

#If Service exists start removal process
if ($GrafanaService) { Write-Host "CS Falcon Service Found..."

                      #test path to CSUninstall tool
                      $CSUninstall = Test-Path "C:\Install\CsUninstallTool.exe"

                      #If CSUninstall tool exists, run it
                      If ($CSUninstall) {"CsUnisntallTool Found, starting agent removal (takes a minute)..."
                      
                                        Start-Process -NoNewWindow -FilePath "C:\Install\CsUninstallTool.exe" -ArgumentList "/quiet" -wait

                                         Start-Sleep 3

                                         #Create new variable for removal verification
                                         $GrafanaServiceUninstall = Get-WmiObject -Class Win32_Service -Filter "Name='csfalconservice'" 

                                                       #If service still exists, exit fail
                                                       If ($GrafanaServiceUninstall) {Write-Host "Failed Uninstall" -ForegroundColor red}

                                                       #If service does not exist, exit successfull
                                                       Else {Write-Host "Uninstall Successfull, removing CSUninstall tool from server..." 
                                                             
                                                             #remove CSUninstall tool from server
                                                             Remove-Item "C:\Install\CsUninstallTool.exe"

                                                             write-host "Uninstall Complete!" -ForegroundColor Green
                                                             }
                      
                                        }

                      #If CSUnstianall tool path test fails, exit
                      Else {write-host "CsUninstallTool Missing"}
                         
                                               
                         }

#If CSFalcon service is missing, exit
else {write-host "Crowdstrike service missing"}
