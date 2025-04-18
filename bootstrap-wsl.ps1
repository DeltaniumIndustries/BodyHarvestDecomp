param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    Write-Host "Tested Administrator privilidges." -ForegroundColor Blue
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        Write-Host "Tried to elevate, did not work, aborting" -ForegroundColor Red
    } else {
        Write-Host "Bootstrapping ./setup-wsl.ps1." -ForegroundColor Yellow
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "./setup-wsl.ps1" -elevated' -f ($myinvocation.MyCommand.Definition))
        Write-Host "Hopefully started as admin." -ForegroundColor Green
    }
}

Write-Host "Bootstrapping finished." -ForegroundColor Green
exit
