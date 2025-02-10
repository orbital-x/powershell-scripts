# Using System Info
systeminfo | find /i "install date"

# Using WMI class
([WMI]'').ConvertToDateTime((Get-WmiObject Win32_OperatingSystem).InstallDate)