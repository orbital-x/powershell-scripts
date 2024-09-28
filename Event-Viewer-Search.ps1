
# Event Viewer: String in System log 
Get-WinEvent -FilterHashtable @{logname='system'} | ?  { $_.message -like '*grafana*' } |  select -first 25 | ft -Wrap 

# Event Viewer: Reboots\Restarts
Get-WinEvent -FilterHashtable @{logname='system'} | ?  {$_.id -match '1074|6006|6005|1076|6008' -or $_.id -eq '41' } | select timecreated,id,message | Out-GridView 
 
# Event Viewer: Reboot\Restarts in Past day (ISE) 
$Yesterday = (Get-Date) - (New-TimeSpan -Day 1) 
Get-WinEvent -FilterHashtable @{logname='system'} | ?  {$_.id -match '1074|6006|6005|1076|6008' -or $_.id -eq '41' -and $_.TimeCreated -ge $Yesterday  } | select timecreated,id,message | Out-GridView 
 
 # Event Viewer: Search for SPECIFIC word in Service Control Manager Provider 
Get-WinEvent -FilterHashtable @{logname='system'; ProviderName='Service Control Manager'} | ?  { $_.message -like '*vpos*' } | | select -first 15 | ft -Wrap 
