@ECHO OFF
TITLE Instalacion de Chocolatey.
REM Archivo para instalacion de Chocolatey.
REM PowerShell v2+ requerido.

REM Verificar si la sesion tiene derechos de administrador.
REM Si no, salir.
NET SESSION
IF %ERRORLEVEL% NEQ 0 GOTO ELEVATE
GOTO ADMINTASKS

:ELEVATE
CD /d %~dp0
MSHTA "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();"
EXIT

:ADMINTASKS
REM Instalar chocolatey.
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
refreshenv

REM Esperar ingreso de usuario.
PAUSE
