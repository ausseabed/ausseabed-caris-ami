Write-Host "Downloading Caris"
aws s3 sync s3://caris-installer/11.3.9 C:\Windows\Temp\caris-installer

Write-Host "Installing Caris"
Start-Process -FilePath "C:\Windows\Temp\caris-installer\setup.exe" -ArgumentList "/S /v/qn" -PassThru -Wait

Write-Host "Add carisbatch to path"
[System.Environment]::SetEnvironmentVariable('Path', $ENV:PATH + ";C:\Program Files\CARIS\HIPS and SIPS\11.3\bin", [System.EnvironmentVariableTarget]::Machine)
