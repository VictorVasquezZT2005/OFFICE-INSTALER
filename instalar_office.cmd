@echo off
title Instalador Office Personalizado - ZT Developer
color 1F
echo ==============================================
echo          INSTALADOR DE OFFICE PERSONALIZADO
echo ==============================================
echo.
echo Selecciona el tipo de instalacion:
echo [1] Instalacion COMPLETA (full.xml)
echo [2] Instalacion LIGERA (lite.xml)
echo.

set /p opcion=Escribe el numero de tu eleccion y presiona Enter: 

if "%opcion%"=="1" (
    echo.
    echo Iniciando instalacion COMPLETA...
    setup.exe /configure full.xml
    goto fin
)

if "%opcion%"=="2" (
    echo.
    echo Iniciando instalacion LIGERA...
    setup.exe /configure lite.xml
    goto fin
)

echo.
echo Opcion no valida. Cerrando instalador.
pause >nul
exit

:fin
echo.
echo Instalacion iniciada. Espera a que termine el proceso.
echo.
echo ==============================================
echo                CREDITOS
echo ==============================================
echo   ZT Developer
echo   Victor Vasquez
echo   Tel: 74886265
echo   Email: vvasquezok2016@devninja.xyz
echo ==============================================
echo.
pause >nul
exit
