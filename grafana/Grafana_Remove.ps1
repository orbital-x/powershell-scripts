$grafanapath = Test-Path  "C:\install\pkgsrc\WIN_GRAFANA_AGENT"

if ($grafanapath) {Get-Service -Name grafana-agent | Stop-Service
                   & 'C:\install\pkgsrc\WIN_GRAFANA_AGENT\Setup\uninstall.ps1'
                   Write-Host "Grafana Agent Removed"}

Else {Write-Host "Grafana PkgSrc Missing"}
