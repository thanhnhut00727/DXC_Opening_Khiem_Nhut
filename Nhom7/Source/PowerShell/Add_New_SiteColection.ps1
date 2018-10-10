Add-PSSnapin Microsoft.Sharepoint.Powershell –EA 0
#Create Top-Level Site collection in SharePoint 2013
$SiteURL="http://win-ikp5n1jcalv:4/"
$SiteName="Home"
$SiteOwner="virtual\Administrator"
$SiteTemplate="STS#0"
 
#Create new Site collection
New-SPSite –url $SiteURL -Name $SiteName -OwnerAlias $SiteOwner -Template $SiteTemplate