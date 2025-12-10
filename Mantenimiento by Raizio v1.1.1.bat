@echo off
chcp 850 >nul

:: Preguntar idioma primero
echo =============================================
echo   Selecciona el idioma / Select language
echo =============================================
echo 1. Espanol
echo 2. English
echo.
set /p lang=Elige una opcion (Choose an option): 

if "%lang%"=="1" goto MENU_ES
if "%lang%"=="2" goto MENU_EN

echo Invalid option / Opcion no valida
timeout /t -1 >nul
exit

:: Verificar administrador (igual para ambos idiomas)
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo =====================================================
    echo   Este script requiere privilegios de ADMINISTRADOR
    echo =====================================================
    echo.
    echo Run as administrator / Ejecutar como administrador
    timeout /t -1 >nul
    exit
)

title Mantenimiento de Windows by Raizio v1.1.1
color 0A

:MENU_ES
cls
echo =============================================
echo   MANTENIMIENTO WINDOWS by Raizio - v1.1.1
echo =============================================
echo 1. Reparacion rapida
echo 2. Revisar archivos del sistema
echo 3. Chequeo rapido de imagen
echo 4. Escaneo profundo de imagen
echo 5. Reparar imagen danada
echo 6. Limpieza de componentes
echo 7. Revisar disco duro
echo 8. Liberar espacio en disco
echo 9. Limpiar archivos temporales
echo 10. Optimizar disco
echo 11. Reiniciar configuracion de red
echo 12. Mantenimiento completo
echo 13. Informacion del sistema
echo 14. Salir
set /p opcion=Elige una opcion: 

if "%opcion%"=="13" goto SYSINFO_ES
if "%opcion%"=="14" exit
goto MENU_ES

:MENU_EN
cls
echo =============================================
echo   WINDOWS MAINTENANCE by Raizio - v1.1.1
echo =============================================
echo 1. Quick repair
echo 2. Check system files
echo 3. Quick image check
echo 4. Deep image scan
echo 5. Repair damaged image
echo 6. Component cleanup
echo 7. Check hard drive
echo 8. Free up disk space
echo 9. Clean temporary files
echo 10. Optimize disk
echo 11. Reset network configuration
echo 12. Full maintenance
echo 13. System information
echo 14. Exit
set /p opcion=Choose an option: 

if "%opcion%"=="13" goto SYSINFO_EN
if "%opcion%"=="14" exit
goto MENU_EN

:SYSINFO_ES
cls
echo ============================================
echo INFORMACION DEL SISTEMA - v1.1.1
echo ============================================

:: Sistema operativo (sin "Caption")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get Caption') do (
    set SO=%%a
    goto SO_ES
)
:SO_ES
echo Sistema operativo: %SO%

:: Arquitectura (sin "OSArchitecture")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get OSArchitecture') do (
    set Arch=%%a
    goto Arch_ES
)
:Arch_ES
echo Arquitectura: %Arch%

:: Version (sin "Version")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get Version') do (
    set Ver=%%a
    goto Ver_ES
)
:Ver_ES
echo Version del sistema: %Ver%

echo Nombre del equipo: %COMPUTERNAME%
echo Usuario actual: %USERNAME%

:: Procesador (sin "Name")
for /f "skip=1 tokens=* delims=" %%a in ('wmic cpu get Name') do (
    set CPU=%%a
    goto CPU_ES
)
:CPU_ES
echo Procesador: %CPU%

:: RAM total
for /f %%i in ('powershell -command "(Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB"') do set RAMGB=%%i
echo Memoria RAM total: %RAMGB% GB

:: Espacio libre en disco
for /f %%i in ('powershell -command "(Get-CimInstance Win32_LogicalDisk -Filter \"DeviceID='C:'\").FreeSpace / 1GB"') do set FreeGB=%%i
echo Espacio libre en disco C: %FreeGB% GB

echo.
echo Presiona cualquier tecla para volver al menu en Espanol...
timeout /t -1 >nul
goto MENU_ES


:SYSINFO_EN
cls
echo ============================================
echo SYSTEM INFORMATION - v1.1.1
echo ============================================

:: Operating System (no "Caption")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get Caption') do (
    set SO=%%a
    goto SO_EN
)
:SO_EN
echo Operating System: %SO%

:: Architecture (no "OSArchitecture")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get OSArchitecture') do (
    set Arch=%%a
    goto Arch_EN
)
:Arch_EN
echo Architecture: %Arch%

:: Version (no "Version")
for /f "skip=1 tokens=* delims=" %%a in ('wmic os get Version') do (
    set Ver=%%a
    goto Ver_EN
)
:Ver_EN
echo System Version: %Ver%

echo Computer Name: %COMPUTERNAME%
echo Current User: %USERNAME%

:: Processor (no "Name")
for /f "skip=1 tokens=* delims=" %%a in ('wmic cpu get Name') do (
    set CPU=%%a
    goto CPU_EN
)
:CPU_EN
echo Processor: %CPU%

:: Total RAM
for /f %%i in ('powershell -command "(Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB"') do set RAMGB=%%i
echo Total RAM: %RAMGB% GB

:: Free space
for /f %%i in ('powershell -command "(Get-CimInstance Win32_LogicalDisk -Filter \"DeviceID='C:'\").FreeSpace / 1GB"') do set FreeGB=%%i
echo Free space on disk C: %FreeGB% GB

echo.
echo Press any key to return to the menu in English...
timeout /t -1 >nul
goto MENU_EN