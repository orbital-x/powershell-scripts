# Disable IPv6
Get-NetAdapterBinding | ? {$_.componentID -eq 'ms_tcpip6'} | Disable-NetAdapterBinding -ComponentID 'ms_tcpip6' -confirm:$false