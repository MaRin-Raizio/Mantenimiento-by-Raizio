::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB1GRQ6NAE+1EbsQ5+n//Na1g2Qnfc1yW4Z3O6aNNewcpEznevY=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHmQ=
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbgs=
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIdKRVASQqLMWK/CKETqOz+r92OrEkSQ/Ff
::dhA7uBVwLU+EWGuF/Vg5J3s=
::YQ03rBFzNR3SWATExkM5MhJbLA==
::dhAmsQZ3MwfNWATExkM5MhJbLA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFB1GRQ6NAES0A5EO4f7+08+UoV8UQO0tcYDn97WANOUd40jtcJg52TpYgYs+DRJCdx3reF56+SAQ+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Mantenimiento de Windows by Raizio v1.0.2
color 0A
setlocal enabledelayedexpansion

:MENU
cls
echo =============================================
echo        MANTENIMIENTO WINDOWS by Raizio
echo =============================================
echo.
echo 1. Reparacion rapida (SFC + DISM basico)
echo 2. Revisar archivos del sistema (SFC)
echo 3. Chequeo rapido de imagen (DISM CheckHealth)
echo 4. Escaneo profundo de imagen (DISM ScanHealth)
echo 5. Reparar imagen danada (DISM RestoreHealth)
echo 6. Limpieza de componentes (DISM StartComponentCleanup)
echo 7. Revisar disco duro (CHKDSK)
echo 8. Liberar espacio en disco
echo 9. Limpiar archivos temporales (Cleanmgr)
echo 10. Optimizar disco (Desfragmentar HDD)
echo 11. Reiniciar configuracion de red
echo 12. Mantenimiento completo (TODOS LOS PASOS)
echo 13. Salir
echo.
set /p opcion=Elige una opcion: 

if "%opcion%"=="1" goto RAPIDA
if "%opcion%"=="2" goto SFC
if "%opcion%"=="3" goto CHECK
if "%opcion%"=="4" goto SCAN
if "%opcion%"=="5" goto RESTORE
if "%opcion%"=="6" goto CLEANUP
if "%opcion%"=="7" goto CHKDSK
if "%opcion%"=="8" goto CLEANMGR
if "%opcion%"=="9" goto TEMP
if "%opcion%"=="10" goto DEFRAG
if "%opcion%"=="11" goto NETRESET
if "%opcion%"=="12" goto ALLFULL
if "%opcion%"=="13" exit
goto MENU

:ProgressBar
set "bar="
for /l %%i in (1,1,30) do (
    set "bar=!bar!#"
    cls
    echo Progreso: [!bar!]
    timeout /nobreak /t 1 >nul
)
goto :eof

:ReturnMenu
echo.
echo === Paso finalizado correctamente ===
for /l %%i in (5,-1,1) do (
    echo Regresando al menu principal en %%i segundos...
    timeout /nobreak /t 1 >nul
)
goto MENU

:RAPIDA
echo Ejecutando Reparacion rapida (SFC + DISM basico)...
sfc /scannow
DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
goto ReturnMenu

:SFC
echo Revisando archivos del sistema...
sfc /scannow
goto ReturnMenu

:CHECK
echo Chequeo rapido de imagen...
DISM /Online /Cleanup-Image /CheckHealth
goto ReturnMenu

:SCAN
echo Escaneo profundo de imagen...
DISM /Online /Cleanup-Image /ScanHealth
goto ReturnMenu

:RESTORE
echo Reparando imagen danada...
DISM /Online /Cleanup-Image /RestoreHealth
goto ReturnMenu

:CLEANUP
echo Limpiando componentes...
DISM /Online /Cleanup-Image /StartComponentCleanup
goto ReturnMenu

:CHKDSK
echo Revisando disco duro (puede requerir reinicio)...
chkdsk C: /F /R
goto ReturnMenu

:CLEANMGR
echo Liberando espacio en disco con herramienta oficial de Windows...
cleanmgr /sagerun:1
goto ReturnMenu

:TEMP
echo Limpiando archivos temporales con herramienta oficial de Windows...
cleanmgr /sagerun:1
goto ReturnMenu

:DEFRAG
echo Optimizando disco (solo HDD)...
defrag C: /O
goto ReturnMenu

:NETRESET
echo Reiniciando configuracion de red...
ipconfig /flushdns
netsh winsock reset
netsh int ip reset
goto ReturnMenu

:ALLFULL
echo ============================================
echo Ejecutando MANTENIMIENTO COMPLETO (TODOS LOS PASOS)
echo ============================================

echo Paso 1: Revisar archivos del sistema
call :ProgressBar
sfc /scannow

echo Paso 2: Chequeo rapido de imagen
call :ProgressBar
DISM /Online /Cleanup-Image /CheckHealth

echo Paso 3: Escaneo profundo de imagen
call :ProgressBar
DISM /Online /Cleanup-Image /ScanHealth

echo Paso 4: Reparar imagen danada
call :ProgressBar
DISM /Online /Cleanup-Image /RestoreHealth

echo Paso 5: Limpieza de componentes
call :ProgressBar
DISM /Online /Cleanup-Image /StartComponentCleanup

echo Paso 6: Revisar disco duro
call :ProgressBar
chkdsk C: /F /R

echo Paso 7: Liberar espacio en disco
call :ProgressBar
cleanmgr /sagerun:1

echo Paso 8: Limpiar archivos temporales
call :ProgressBar
cleanmgr /sagerun:1

echo Paso 9: Optimizar disco
call :ProgressBar
defrag C: /O

echo Paso 10: Reiniciar configuracion de red
call :ProgressBar
ipconfig /flushdns
netsh winsock reset
netsh int ip reset

echo.
echo === MANTENIMIENTO COMPLETO FINALIZADO ===
for /l %%i in (5,-1,1) do (
    echo Regresando al menu principal en %%i segundos...
    timeout /nobreak /t 1 >nul
)
goto MENU