# USER-memebership
# The Get-ADPrincipalGroupMembership cmdlet gets the Active Directory groups that have a specified user, computer, group, or service account as a member. 
# This cmdlet requires a global catalog to perform the group search.  
Get-ADPrincipalGroupMembership <UserID> | sort-object | Select-Object name 

 
#COMPUTER-Memebership
Get-ADPrincipalGroupMembership (Get-ADComputer hostname).DistinguishedName | select-object samaccountname 


