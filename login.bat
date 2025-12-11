@echo off
:: Verify if the script is launched as Administrator.
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    :: If not, restart with elevation
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:start
set app_name=ByPass Cisco Packet Tracer Login
set "app_path="

:: Check common Packet Tracer installation paths
for %%v in (9.2 9.1 9.0 8.2.2 8.2.1 8.2.0 8.1.1 8.1.0 8.0.1 8.0.0 7.3.1 7.3.0 7.2.2 7.2.1 7.2.0) do (
    if exist "C:\Program Files\Cisco Packet Tracer %%v\bin\PacketTracer.exe" (
        set "app_path=C:\Program Files\Cisco Packet Tracer %%v\bin\PacketTracer.exe"
        goto found
    )
)

:found
if not defined app_path (
    echo Packet Tracer not found. Please make sure it's installed.
    pause
    exit /b
)

echo ___ Packet Tracer Login bypass ___
echo Found Packet Tracer at: %app_path%
echo.
echo Choose an option :
echo 1. Enable login bypass.
echo 2. Remove login bypass.
set /p choice=Your choice : 

if "%choice%"=="1" (
        echo Bypass activation...
        powershell -Command "New-NetFirewallRule -DisplayName '%app_name%' -Program '%app_path%' -Action Block -Direction Outbound"
        echo Bypass enabled for Cisco Packet Tracer.
) else if "%choice%"=="2" (
        echo Bypass removal...
        powershell -Command "Remove-NetFirewallRule -DisplayName '%app_name%'"
        echo Bypass removed for Cisco Packet Tracer.
) else (
    cls
        echo Invalid choice, please enter 1 or 2.
    echo.
    goto start
)

pause