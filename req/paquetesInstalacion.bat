@ECHO OFF
TITLE Instalacion de paquetes con Chocolatey.

REM CONSTANTES.
REM Directorio de folder donde se esta ejecutando.
SET directorioOriginal=%~dp0
REM Nombre del archivo con paquetes.
SET archivoPaquetes=paquetes.config
REM Ruta completa del archivo con paquetes a instalar.
SET rutaCompletaPaquetes=%directorioOriginal%%archivoPaquetes%

REM Verificar si la sesion tiene derechos de administrador.
REM Si no, salir.
NET SESSION
IF %ERRORLEVEL% NEQ 0 GOTO ELEVATE
GOTO ADMINTASKS
EXIT

:ELEVATE
CD /d %~dp0
MSHTA "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();"
EXIT

:ADMINTASKS
REM Instalar paquetes de archivo.
choco install -y %rutaCompletaPaquetes%

REM Refrescar variables de entorno.
refreshenv

REM Esperar ingreso de usuario.
PAUSE
