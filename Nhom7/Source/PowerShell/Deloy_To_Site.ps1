Add-PSSnapin Microsoft.Sharepoint.Powershell –EA 0

#Add-SPSolution "C:\Users\Administrator\Desktop\Code\DXC_OpeningFinal.wsp"

#Remove-SPSolution –Identity DXC_OpeningFinal.wsp

#Uninstall-SPSolution –Identity DXC_OpeningFinal.wsp –WebApplication http://win-ikp5n1jcalv:5555
#Uninstall-SPSolution –Identity DXC_OpeningFinal.wsp –WebApplication http://win-ikp5n1jcalv:8888
Install-SPSolution –Identity DXC_OpeningFinal.wsp -FullTrustBinDeployment –WebApplication  http://win-ikp5n1jcalv:3 –GACDeployment 

#Get-Help Remove-SPSolution
##Get-Help Install-SPSolution
#Define Variables for Web Application Creation