Write-Host "Downloading AWSCLI"
Invoke-WebRequest -URI "https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi" -OutFile "C:\Windows\Temp\AWSCLI64PY3.msi"

Write-Host "Installing AWSCLI"
Start-Process msiexec.exe -ArgumentList "/i C:\Windows\Temp\AWSCLI64PY3.msi /qn /norestart" -Wait

