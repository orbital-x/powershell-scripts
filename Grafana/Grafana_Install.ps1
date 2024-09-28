$GrafanaService = Get-WmiObject -Class Win32_Service -Filter "Name='grafana-agent'" 

if (!($GrafanaService)) {$grafanapath = Test-Path  "C:\install\pkgsrc\WIN_GRAFANA_AGENT"

                         if ($grafanapath) {& 'C:\Install\PkgSrc\WIN_GRAFANA_AGENT\Setup\grafana-agent-install.ps1'}
                         Else {Write-Host "Grafana PkgSrc Missing"}

                         }

else {Write-Host "Grafana Agent already installed"}







