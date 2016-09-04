@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Never10 download.
bitsadmin.exe /transfer "Never10 Installer" https://www.grc.com/files/never10.exe %USERPROFILE%\Downloads\never10.exe
ECHO. The Never10 Installer is opening in another window...
%USERPROFILE%\Downloads\never10.exe
ECHO. The Never10 installation is complete.
ECHO. Deleting temporary Never10 installation files...
DEL %USERPROFILE%\Downloads\never10.exe

GOTO:EOF