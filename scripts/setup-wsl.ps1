# Requires running as Administrator
# Save as install-wsl-debian.ps1 and run with: PowerShell -ExecutionPolicy Bypass -File .\install-wsl-debian.ps1

Write-Host "Enabling WSL and Virtual Machine Platform..." -ForegroundColor Cyan
pause
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
pause
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Write-Host "Setting WSL 2 as default..." -ForegroundColor Cyan
pause
wsl --set-default-version 2

pause
# Check if WSL update is required for Windows 10
$wslUpdateUrl = "https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi"
$wslUpdatePath = "$env:TEMP\wsl_update_x64.msi"

pause
if ([System.Environment]::OSVersion.Version.Major -eq 10) {
    Write-Host "Downloading WSL 2 Kernel update for Windows 10..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri $wslUpdateUrl -OutFile $wslUpdatePath
    Start-Process msiexec.exe -Wait -ArgumentList "/i $wslUpdatePath /quiet /norestart"
}

pause
Write-Host "Installing Debian..." -ForegroundColor Cyan
wsl --install -d Debian

pause
Write-Host "Installation complete! You may need to restart your computer." -ForegroundColor Green
