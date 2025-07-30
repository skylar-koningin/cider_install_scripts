@echo off

echo Selected Windows...
move "%USERPROFILE%\Downloads\cider-v3.0.0-windows-x64.exe" .\
winget install Microsoft.DotNet.DesktopRuntime.8
cider-v3.0.0-windows-x64.exe