@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Avast download.
bitsadmin.exe /transfer "Avast Installer" https://ninite.com/avast/ninite.exe %USERPROFILE%\Downloads\avast.exe
ECHO. The Avast Installer is opening in another window...
%USERPROFILE%\Downloads\avast.exe
ECHO. The Avast installation is complete.
ECHO. Deleting temporary Avast installation files...
DEL %USERPROFILE%\Downloads\avast.exe /silent .

GOTO:EOF
