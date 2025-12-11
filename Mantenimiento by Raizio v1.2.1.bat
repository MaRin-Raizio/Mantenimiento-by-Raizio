@echo off
chcp 850 >nul

:: =============================================
:: Bloque 1 - Encabezado y selección de idioma
:: =============================================
echo =============================================
echo   Selecciona el idioma / Select language
echo =============================================
echo 1. Espanol
echo 2. English
echo.
set /p lang=Elige una opcion (Choose an option): 

title Mantenimiento de Windows by Raizio v1.2.1
color 0A

:: Saltar al menú correcto
if "%lang%"=="1" goto MENU_ES
if "%lang%"=="2" goto MENU_EN

echo Invalid option / Opcion no valida
timeout /t -1 >nul
exit

:: =============================================
:: Bloque 2 - Menús separados ES / EN
:: =============================================

:MENU_ES
:: Verificar administrador en español
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo =====================================================
    echo   Este script requiere privilegios de ADMINISTRADOR
    echo =====================================================
    echo.
    echo Cierra esta ventana y vuelve a abrir el archivo .bat
    echo haciendo clic derecho y eligiendo "Ejecutar como administrador".
    echo.
    echo Presiona cualquier tecla para salir...
    timeout /t -1 >nul
    exit
)

cls
echo =============================================
echo   MANTENIMIENTO WINDOWS by Raizio - v1.2.1
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

if "%opcion%"=="1" goto RAPIDA_ES
if "%opcion%"=="2" goto SFC_ES
if "%opcion%"=="3" goto CHECK_ES
if "%opcion%"=="4" goto SCAN_ES
if "%opcion%"=="5" goto RESTORE_ES
if "%opcion%"=="6" goto CLEANUP_ES
if "%opcion%"=="7" goto CHKDSK_ES
if "%opcion%"=="8" goto CLEANMGR_ES
if "%opcion%"=="9" goto TEMP_ES
if "%opcion%"=="10" goto DEFRAG_ES
if "%opcion%"=="11" goto NETRESET_ES
if "%opcion%"=="12" goto ALLFULL_ES
if "%opcion%"=="13" goto SYSINFO_ES
if "%opcion%"=="14" exit
goto MENU_ES

:MENU_EN
:: Verify administrator in English
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo =====================================================
    echo   This script requires ADMINISTRATOR privileges
    echo =====================================================
    echo.
    echo Close this window and reopen the .bat file
    echo by right-clicking and choosing "Run as administrator".
    echo.
    echo Press any key to exit...
    timeout /t -1 >nul
    exit
)

cls
echo =============================================
echo   WINDOWS MAINTENANCE by Raizio - v1.2.1
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

if "%opcion%"=="1" goto RAPIDA_EN
if "%opcion%"=="2" goto SFC_EN
if "%opcion%"=="3" goto CHECK_EN
if "%opcion%"=="4" goto SCAN_EN
if "%opcion%"=="5" goto RESTORE_EN
if "%opcion%"=="6" goto CLEANUP_EN
if "%opcion%"=="7" goto CHKDSK_EN
if "%opcion%"=="8" goto CLEANMGR_EN
if "%opcion%"=="9" goto TEMP_EN
if "%opcion%"=="10" goto DEFRAG_EN
if "%opcion%"=="11" goto NETRESET_EN
if "%opcion%"=="12" goto ALLFULL_EN
if "%opcion%"=="13" goto SYSINFO_EN
if "%opcion%"=="14" exit
goto MENU_EN

:: =============================================
:: Bloque 3 - Funciones (Opciones 1–12)
:: =============================================
:: (Aquí van todas las funciones RAPIDA_ES/EN, SFC_ES/EN, CHECK_ES/EN, SCAN_ES/EN, RESTORE_ES/EN, CLEANUP_ES/EN, CHKDSK_ES/EN, CLEANMGR_ES/EN, TEMP_ES/EN, DEFRAG_ES/EN, NETRESET_ES/EN, ALLFULL_ES/EN que ya te pasé)

:: =============================================
:: Bloque 4 - Información del sistema (Opción 13)
:: =============================================
:: (Aquí van SYSINFO_ES y SYSINFO_EN que ya te pasé, con cabeceras limpias)