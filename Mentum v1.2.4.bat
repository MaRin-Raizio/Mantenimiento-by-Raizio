::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB1GRQ6NAE+1EbsQ5+n//NakrUMLUfArOJvT3/SbMOwc60Hhcdgk1XU6
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdFy5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkkaGErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlbMaAs=
::ZQ05rAF9IAHYFVzEqQIdLRVAWQnCEGqvCLYU7fqb
::eg0/rx1wNQPfEVWB+kM9LVsJDCmHMn+vC4pNprq1u9Wro1gTV+o6arD63rmHLq4W8kCE
::fBEirQZwNQPfEVWB+kM9LVsJDCmHMn+vC5kd/eb45++Vwg==
::cRolqwZ3JBvQF1fEqQIHIRVQQxORfGa7D7sI7eb64emC4kAcUOd/fp3S37qKLPlz
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEVotweksGGkSvPVmzCPUu6eHh5uXn
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmi5ks1Jh9YVUS1NWW+CaIPqOX65uSTp0McWuE6OJvU1bju
::Zh4grVQjdCyDJGyX8VAjFB1GRQ6NAE+1EbsQ5+n//Naqp0MJQe8AKcGJlOCxDOEG5EbscIQS935XkcVCCQNdHg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 >nul
setlocal

:: ============================================================
:: Mentum v1.2.4
:: Mantener Windows fresco y funcionando
:: Keep your Windows fresh and running
:: ============================================================

:: Crear carpeta de logs si no existe
if not exist Logs mkdir Logs
set "logfile=Logs\log_%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.txt"

:MENU
chcp 65001 >nul
cls
title Mentum v1.2.4 - Mantener Windows fresco y funcionando

:: Logo ASCII
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠤⠀⠒⠒⠆⢠⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⣠⡶⠋⠀⠀⠀⠀⠀⠀⠀⠈⠙⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠞⠋⠉⠁⠀⠀⠉⠁⠒⠄⡀⠀⠀⠀⠈⠳⢢⡀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⢀⣠⠔⠂⠈⠉⠁⠀⠀⠈⠙⠰⢦⣌⡐⠤⡀⠀⠀⠀⠙⠳⢠⣀⣀⠀⠀⡀
echo ⠀⣠⣶⠫⠌⠀⠤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠰⣠⣁⣒⠤⠄⣀⠀⠀⠀⢈⠝⠀
echo ⠈⠛⠁⠀⠀⠀⠀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠂⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠊⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠂⠄⣀⡀⠀⠀⢀⣀⠠⠔⠊⠁⠀⠀⠀⠀⠀⠀
echo.
echo ============================================================
echo                MENTUM v1.2.4
echo         Mantener Windows fresco y funcionando
echo         Keep your Windows fresh and running
echo ============================================================
echo.
echo Selecciona una opcion / Select an option:
echo 1. Reparacion rapida (SFC + DISM basico) / Quick Repair
echo 2. Escaneo profundo DISM / Deep Scan
echo 3. Reparar imagen DISM / Restore Image
echo 4. CHKDSK disco / Disk Check
echo 5. Limpieza de temporales / Temp Cleanup
echo 6. Optimizacion de disco / Disk Optimization
echo 7. Reinicio configuracion de red / Reset Network
echo 8. Mantenimiento completo / Full Maintenance
echo 9. Informacion del sistema / System Info
echo 0. Salir / Exit
echo.
choice /C 1234567890 /N
set "sel=%errorlevel%"

:: Mapear CHOICE (1..10) a opciones
if %sel%==1 goto OP1
if %sel%==2 goto OP2
if %sel%==3 goto OP3
if %sel%==4 goto OP4
if %sel%==5 goto OP5
if %sel%==6 goto OP6
if %sel%==7 goto OP7
if %sel%==8 goto OP8
if %sel%==9 goto OP9
if %sel%==10 goto EXIT
goto MENU
:OP1
echo Ejecutando SFC / Running SFC...
sfc /scannow

echo Ejecutando DISM CheckHealth / Running DISM CheckHealth...
DISM /Online /Cleanup-Image /CheckHealth

echo ============================================================
echo Tarea completada: Reparacion rapida / Task completed: Quick Repair
echo Log: %logfile%
echo ============================================================
set /p rein=Reiniciar ahora / Restart now (Y/N): 
if /I "%rein%"=="Y" shutdown /r /t 5
goto MENU

:OP2
echo Ejecutando DISM ScanHealth / Running DISM ScanHealth...
DISM /Online /Cleanup-Image /ScanHealth

echo ============================================================
echo Tarea completada: Escaneo profundo / Task completed: Deep Scan
echo Log: %logfile%
echo ============================================================
pause
goto MENU

:OP3
echo Ejecutando DISM RestoreHealth / Running DISM RestoreHealth...
DISM /Online /Cleanup-Image /RestoreHealth

echo ============================================================
echo Tarea completada: Reparar imagen / Task completed: Restore Image
echo Log: %logfile%
echo ============================================================
set /p rein=Reiniciar ahora / Restart now (Y/N): 
if /I "%rein%"=="Y" shutdown /r /t 5
goto MENU

:OP4
echo Ejecutando CHKDSK / Running CHKDSK...
chkdsk C: /F /R

echo ============================================================
echo Tarea completada: CHKDSK disco / Task completed: Disk Check
echo Log: %logfile%
echo ============================================================
set /p rein=Reiniciar ahora / Restart now (Y/N): 
if /I "%rein%"=="Y" shutdown /r /t 5
goto MENU
:OP5
echo Eliminando archivos temporales / Deleting temporary files...
del /q /f "%temp%\*"
cleanmgr /sagerun:1

echo ============================================================
echo Tarea completada: Limpieza de temporales / Task completed: Temp Cleanup
echo Log: %logfile%
echo ============================================================
pause
goto MENU

:OP6
echo Ejecutando desfragmentacion / Running defragmentation...
defrag C: /U /V

echo ============================================================
echo Tarea completada: Optimizacion de disco / Task completed: Disk Optimization
echo Log: %logfile%
echo ============================================================
pause
goto MENU

:OP7
echo Reiniciando configuracion de red / Resetting network settings...
ipconfig /flushdns
netsh winsock reset
netsh int ip reset

echo ============================================================
echo Tarea completada: Reinicio de red / Task completed: Reset Network
echo Log: %logfile%
echo ============================================================
pause
goto MENU

:OP8
echo Ejecutando mantenimiento completo / Running full maintenance...
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
chkdsk C: /F /R
del /q /f "%temp%\*"
defrag C: /U /V
ipconfig /flushdns
netsh winsock reset
netsh int ip reset

echo ============================================================
echo Tarea completada: Mantenimiento completo / Task completed: Full Maintenance
echo Log: %logfile%
echo ============================================================
set /p rein=Reiniciar ahora / Restart now (Y/N): 
if /I "%rein%"=="Y" shutdown /r /t 5
goto MENU

:OP9
cls
chcp 850 >nul
echo --------------------------------------------
echo Informacion del sistema / System Information
echo --------------------------------------------

echo Version de Windows / Windows Version:
ver
echo --------------------------------------------

echo Procesador / Processor:
wmic cpu get Name
echo --------------------------------------------

echo Memoria RAM total y disponible (GB) / RAM total and available (GB)
for /f "skip=1 tokens=2 delims==" %%a in ('wmic OS get TotalVisibleMemorySize /Value') do (
    for /f %%b in ('powershell -command "[math]::Round(%%a/1MB,0)"') do set memtotal=%%b
)
for /f "skip=1 tokens=2 delims==" %%a in ('wmic OS get FreePhysicalMemory /Value') do (
    for /f %%b in ('powershell -command "[math]::Round(%%a/1MB,0)"') do set memfree=%%b
)
echo Total: %memtotal% GB / Libre: %memfree% GB
echo --------------------------------------------

echo Disco C: espacio libre y total (GB) / Disk C: free and total space (GB)
for /f "skip=1 tokens=2 delims==" %%a in ('wmic logicaldisk where "DeviceID='C:'" get Size /Value') do (
    for /f %%b in ('powershell -command "[math]::Round(%%a/1GB,0)"') do set disktotal=%%b
)
for /f "skip=1 tokens=2 delims==" %%a in ('wmic logicaldisk where "DeviceID='C:'" get FreeSpace /Value') do (
    for /f %%b in ('powershell -command "[math]::Round(%%a/1GB,0)"') do set diskfree=%%b
)
echo Total: %disktotal% GB / Libre: %diskfree% GB
echo --------------------------------------------

echo ============================================================
echo Tarea completada: Informacion del sistema / Task completed: System Info
echo Log: %logfile%
echo ============================================================
pause
goto MENU

:EXIT
echo Cerrando Mentum / Closing Mentum...
pause
exit /b