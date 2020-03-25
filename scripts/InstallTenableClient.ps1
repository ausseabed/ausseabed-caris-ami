Write-Host "Downloading Tenable Agent"Nessus
Invoke-WebRequest -URI "https://ga-agents.s3-ap-southeast-2.amazonaws.com/Tenable/NessusAgent-7.6.1-x64.msi" -OutFile "C:\Windows\Temp\NessusAgent.msi"
#Invoke-WebRequest -URI "https://www.tenable.com/downloads/api/v1/public/pages/nessus-agents/downloads/10774/download?i_agree_to_tenable_license_agreement=true" -OutFile "C:\Windows\Temp\NessusAgent.msi"

Write-Host "Installing Tenable Agent"
Start-Process msiexec.exe -ArgumentList "/i C:\Windows\Temp\NessusAgent.msi NESSUS_OFFLINE_INSTALL='yes' /qn " -Wait
