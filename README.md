# 🌱 Mentum

**Mentum** es una herramienta de mantenimiento para Windows 10 y 11, diseñada para mantener tu sistema **fresco, limpio y funcionando al máximo rendimiento**.

## ✨ Características principales
- Reparación rápida (SFC + DISM básico)
- Escaneo profundo y reparación de imagen
- Limpieza de componentes y archivos temporales
- Optimización de disco y revisión de sectores
- Reinicio de configuración de red
- Información detallada del sistema (OS, CPU, RAM, espacio libre en disco)
- Menú bilingüe (Español / English)
- Logging global automático en cada ejecución

## 🎯 Filosofía
El nombre **Mentum** proviene del latín *-mentum*, que significa acción, efecto o proceso.  
Suena a “menta”, evocando frescura y revitalización, justo lo que se busca al darle mantenimiento al sistema.  

## 🚀 Slogan
**Mentum — Mantén tu Windows fresco y funcionando**



⚙️ Funciones principales – v1.2.3
🔹 Mantenimiento del sistema
- Reparación rápida: Ejecuta SFC y comprobaciones básicas de DISM.
- Revisión de archivos del sistema (SFC): Detecta y repara archivos dañados.
- Chequeo rápido de imagen (DISM CheckHealth): Verifica el estado de la imagen de Windows.
- Escaneo profundo de imagen (DISM ScanHealth): Analiza más a fondo la integridad de la imagen.
- Reparar imagen dañada (DISM RestoreHealth): Corrige errores detectados en la imagen del sistema.
- Limpieza de componentes (DISM StartComponentCleanup): Elimina archivos obsoletos de Windows Update.
- Revisión de disco duro (CHKDSK): Comprueba y repara sectores dañados en el disco.
- Liberar espacio en disco (Cleanmgr): Limpieza de archivos innecesarios.
- Eliminar archivos temporales: Borra cachés y temporales del sistema.
- Optimización de disco (Defrag): Desfragmenta y optimiza el rendimiento del disco.
- Reinicio de configuración de red: Restablece parámetros de red y limpia cachés DNS.
- Mantenimiento completo: Ejecuta todas las funciones anteriores en un solo proceso.
🔹 Información del sistema (Opción 13)
- Muestra el sistema operativo instalado.
- Indica la arquitectura (32/64 bits).
- Muestra la versión exacta de Windows.
- Informa el nombre del equipo y el usuario actual.
- Identifica el procesador instalado.
- Calcula la memoria RAM total.
- Muestra el espacio libre en disco C (fix robusto aplicado en v1.2.3).
🔹 Extras
- Menú bilingüe (Español / English): Selección de idioma al inicio.
- Verificación de permisos de administrador: Bloquea ejecución si no se corre como admin.
- Logging global automático:
- Cada ejecución genera un archivo en la carpeta Logs.
- Incluye fecha y hora en el nombre (log_YYYY-MM-DD_HH-MM-SS.txt).
- Registra todo lo que se muestra en pantalla.

📌 Beneficios
- Herramienta todo en uno para mantenimiento básico de Windows.
- Compatibilidad total con Windows 10 y Windows 11.
- Estabilidad reforzada: sin cierres inesperados en la opción de información del sistema.
- Profesional y confiable: ideal para usuarios finales y técnicos.

---


📥 Cómo descargar e instalar
🔹 Descarga desde GitHub Releases
- Ve a la sección de Releases en este repositorio.
👉 Releases
- Selecciona la versión que quieras (ejemplo: v1.2.3).
- En la parte inferior de las notas de parche, busca el apartado Assets.
- Haz clic en Source code (zip) para descargar el repositorio completo.
- Extrae el archivo .zip en cualquier carpeta de tu PC.
- Dentro de la carpeta extraída, abre el archivo:
- maintenance.bat (ejecutar con clic derecho → Ejecutar como administrador).
🔹 Requisitos
- Windows 10 o Windows 11.
- Permisos de administrador (necesarios para ejecutar SFC, DISM, CHKDSK, etc.).
- PowerShell habilitado (viene por defecto en Windows).
🔹 Notas importantes
- Los logs se guardan automáticamente en la carpeta Logs dentro del repositorio.
- Cada ejecución genera un archivo con fecha y hora (log_YYYY-MM-DD_HH-MM-SS.txt).
- El script es bilingüe: al iniciar puedes elegir Español o English.
- Para obtener la última versión, siempre revisa la sección de Releases en GitHub.

🚀 Ejemplo rápido
1. Ir a Releases → v1.2.3
2. Descargar "Source code (zip)"
3. Extraer el archivo
4. Clic derecho en maintenance.bat → Ejecutar como administrador
5. ¡Listo! Menú bilingüe y logs automáticos

> ⚠️ Nota: algunas funciones como `CHKDSK` pueden requerir reinicio del sistema.


\## 🤝 Contribuciones

Este proyecto está abierto a mejoras.  

Si tienes sugerencias, abre un \*Issue\* o envía un \*Pull Request\* en GitHub.

\## 📜 Licencia



Este proyecto se distribuye bajo la licencia MIT.  

Puedes usarlo, modificarlo y compartirlo libremente, siempre dando crédito al autor.



