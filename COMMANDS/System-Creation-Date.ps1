# Using System Info
systeminfo | find /i "install date"

# Using WMI class
(Get-WmiObject win32_operatingsystem).installdate