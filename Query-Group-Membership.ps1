<#
    .NOTES
        Author: Roboute Guilliman
        Created: 09/2024

    .SYNOPSIS
        Queries Active Directory for a user or computer's group membership

    .DESCRIPTION
        -The Get-ADPrincipalGroupMembership cmdlet gets the Active Directory groups that have a specified user, computer, group, or service account as a member. 
        -This cmdlet requires a global catalog to perform the group search. 
#>


# AD-USER-memebership
Get-ADPrincipalGroupMembership UserID | sort-object | Select-Object name 

#AD-COMPUTER-Memebership
Get-ADPrincipalGroupMembership (Get-ADComputer computername).DistinguishedName | select-object samaccountname 


#-------------------------------------------------------------------------------------------------------------
# Network-FOLDER-Membership
$TargetFolder = "\\folder\directory"
(Get-Acl -Path $TargetFolder).Access | Select-Object identityreference


#-------------------------------------------------------------------------------------------------------------
#LOCAL-Group-Membership
Get-LocalGroupMember -Group "Administrators"