
# Event Viewer: String in System log 
Get-WinEvent -FilterHashtable @{logname='system'} | Where-Object  { $_.message -like '*grafana*' } |  Select-Object -first 25 | Format-Table -Wrap 

# Event Viewer: Reboots\Restarts
Get-WinEvent -FilterHashtable @{logname='system'} | Where-Object  {$_.id -match '1074|6006|6005|1076|6008' -or $_.id -eq '41' } | Select-Object timecreated,id,message | Out-GridView 
 
# Event Viewer: Reboot\Restarts in Past day (ISE) 
$Yesterday = (Get-Date) - (New-TimeSpan -Day 1) 
Get-WinEvent -FilterHashtable @{logname='system'} | Where-Object  {$_.id -match '1074|6006|6005|1076|6008' -or $_.id -eq '41' -and $_.TimeCreated -ge $Yesterday  } | Select-Object timecreated,id,message | Out-GridView 
 
 # Event Viewer: Search for SPECIFIC word in Service Control Manager Provider 
Get-WinEvent -FilterHashtable @{logname='system'; ProviderName='Service Control Manager'} | Where-Object  { $_.message -like '*vpos*' }  | Select-Object -first 15 | Format-Table -Wrap 
