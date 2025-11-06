# instalador_office.ps1
# Instalador Office Personalizado - ZT Developer
# Requiere PowerShell con permisos de administrador

# --- Verificar si se está ejecutando como Administrador ---
$principal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Reiniciando como administrador..." -ForegroundColor Yellow
    Start-Process powershell "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# --- Interfaz del instalador ---
Clear-Host
$Host.UI.RawUI.ForegroundColor = "White"
$Host.UI.RawUI.BackgroundColor = "DarkBlue"
Clear-Host

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "     INSTALADOR DE OFFICE PERSONALIZADO       " -ForegroundColor Yellow
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Selecciona el tipo de instalación:" -ForegroundColor White
Write-Host "[1] Instalación COMPLETA (full.xml)" -ForegroundColor Green
Write-Host "[2] Instalación LIGERA (lite.xml)" -ForegroundColor Green
Write-Host ""

$opcion = Read-Host "Escribe el número de tu elección y presiona Enter"

switch ($opcion) {
    "1" {
        Write-Host "`nIniciando instalación COMPLETA..." -ForegroundColor Cyan
        Start-Process -FilePath "setup.exe" -ArgumentList "/configure full.xml" -Wait
    }
    "2" {
        Write-Host "`nIniciando instalación LIGERA..." -ForegroundColor Cyan
        Start-Process -FilePath "setup.exe" -ArgumentList "/configure lite.xml" -Wait
    }
    Default {
        Write-Host "`nOpción no válida. Cerrando instalador." -ForegroundColor Red
        Pause
        exit
    }
}

# --- Mensaje final ---
Write-Host ""
Write-Host "Instalación iniciada. Espera a que termine el proceso." -ForegroundColor Yellow
Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "                 CRÉDITOS                      " -ForegroundColor White
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "ZT Developer" -ForegroundColor Green
Write-Host "Victor Vasquez" -ForegroundColor Green
Write-Host "Tel: 74886265" -ForegroundColor Green
Write-Host "Email: vvasquezok2016@devninja.xyz" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Pause
exit
