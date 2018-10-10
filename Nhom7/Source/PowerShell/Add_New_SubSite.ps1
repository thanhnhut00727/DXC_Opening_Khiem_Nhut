Add-PSSnapin "Microsoft.SharePoint.Powershell" -EA SilentlyContinue
 
#Define value for Variables
$SiteTitle = "Deloy"
#URL for you new subsite
$SiteUrl = "http://win-ikp5n1jcalv:3/Deloy/"
#Templte to be assigned to the subsiteS
$WebTemplate = "STS#0" #Team Site template
 
#create subsite using powershell sharepoint 2010/SharePoint 2013
New-SPWeb -Name $SiteTitle -Url $SiteUrl -Template $WebTemplate

#Read more: http://www.sharepointdiary.com/2014/09/create-subsite-in-sharepoint-using-powershell.html#ixzz5Svid79aP