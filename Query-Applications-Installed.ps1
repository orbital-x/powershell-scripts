
# Query all applications on system
Get-Package -ProviderName Programs -IncludeWindowsInstaller | Select-Object name,version | Sort-Object Name | Format-Table -Auto

# Query for specific application
Get-Package -ProviderName Programs -IncludeWindowsInstaller | Where-Object {$_.name -like "*nessus*"} | Select-Object name,version | Sort-Object Name | Format-Table -Auto