$GrafanaService = Get-WmiObject -Class Win32_Service -Filter "Name='grafana-agent'" 

if (!($GrafanaService)) {write-host "Grafana Agent Missing"} 

else {$GrafanaState = ($GrafanaService).State

        If($GrafanaState -ne 'Running') {$error.Clear()
                                          Get-Service -Name grafana-agent | Start-Service -ErrorAction SilentlyContinue
                                          sleep 5
                                                  $GrafanaServiceNew = (Get-Service -Name grafana-agent).status
                                                  If($error.Count -gt 0) {Write-Host "Failed to start Service"}
                                                  Else {Write-Host "Service is now $GrafanaServiceNew"}
                                          sleep 2
                                          $error.Clear()
                                          }
        Else {Write-Host "Service is already $GrafanaState"}

      }


