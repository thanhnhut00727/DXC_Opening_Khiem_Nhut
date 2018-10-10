Add-PSSnapin "Microsoft.SharePoint.Powershell" -EA SilentlyContinue

#Enable-SPFeature -Identity 9f8d513d-e1e3-4473-89cc-7fadf9f0843a -Url http://win-ikp5n1jcalv:5555/ -PassThru 
#Enable-SPFeature -Identity 3f75c3bc-d0f3-4fa0-b6e5-baebef9de193 -Url http://win-ikp5n1jcalv:5555/ -PassThru 
#Enable-SPFeature -Identity DXC_OpeningFinal_Feature2 -Url http://win-ikp5n1jcalv:5555/ -PassThru 
Enable-SPFeature -Identity DXC_OpeningFinal_Feature2 -Url http://win-ikp5n1jcalv:3/Deloy -PassThru 

#Enable-SPFeature -Identity DXC_OpeningFinal_Feature1 -Url http://win-ikp5n1jcalv:5555
#Get-SPFeature -Identity DXC_OpeningFinal_Feature2 -Web http://win-ikp5n1jcalv:5555
#Get-SPFeature -Identity DXC_OpeningFinal_Feature2 -Web http://win-ikp5n1jcalv:5555/Deloy1
#Enable-SPFeature -Identity Feature2 -Url http://win-ikp5n1jcalv:5555
#Uninstall-SPFeature -path "DXC_OpeningFinal_Feature1" -CompatibilityLevel 14
#Uninstall-SPFeature - "DXC_OpeningFinal_Feature1" -CompatibilityLevel 14
#Get-SPFeature | ? { $_.Scope -eq $null }
#$feature = Get-SPFeature | ? { $_.DisplayName -eq "DXC_OpeningFinal_Feature2" }
#$feature = Get-SPFeature | ? { $_.DisplayName -eq "DXC_OpeningFinal_Feature1" }
#$feature.Delete()