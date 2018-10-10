Add-PSSnapin Microsoft.Sharepoint.Powershell –EA 0

# New Wed App 
$WebAppName = "CSCV Intranet Portal"
$HostHeader = "win-ikp5n1jcalv"
$WebAppURL = "http://"+$HostHeader
$WebAppPort = 8
$ContentDBName = "NewComersDB"
$AppPoolName = "Sharepoint-8"
$AppPoolAccount = "virtual\Administrator"
$AppPooPassword = "P@ssword123"

#Create new Web Application
New-SPWebApplication -name $WebAppName -port $WebAppPort -hostheader $HostHeader -URL $WebAppURL -ApplicationPool $AppPoolName -ApplicationPoolAccount (Get-SPManagedAccount $AppPoolAccount) -DatabaseName $ContentDBName

