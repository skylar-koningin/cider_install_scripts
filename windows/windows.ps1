Write-Host Selected Windows...
Move-Item -Path "$env:USERPROFILE\Downloads\cider-v3.0.0-windows-x64.exe" -Destination "."
winget install --id Microsoft.DotNet.DesktopRuntime.8 -e --accept-package-agreements --accept-source-agreements
Start-Process -FilePath ".\cider-v3.0.0-windows-x64.exe"
