$GrafanaService = Get-WmiObject -Class Win32_Service -Filter "Name='grafana-agent'" 

if (!($GrafanaService)) {$RadiaGrafanaDir = Test-Path C:\install\PkgSrc\WIN_GRAFANA_AGENT

                         If(!($RadiaGrafanaDir)) {Write-Host "Grafana Agent Missing \ PkgSrc Missing"}
                         Else {Write-Host "Grafana Agent Missing \ PkgSrc Exists"}

                         }

else {(Get-Service -Name grafana-agent).status}