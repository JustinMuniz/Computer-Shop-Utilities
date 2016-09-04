@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Flash Player download.
bitsadmin.exe /transfer "Flash Player Installer" https://admdownload.adobe.com/bin/live/flashplayer22_xa_install.exe %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
ECHO. The Flash Player Installer is opening in another window...
%USERPROFILE%\Downloads\flashplayer22_xa_install.exe
ECHO. The Flash Player installation is complete.
ECHO. Deleting temporary Flash Player installation files...
DEL %USERPROFILE%\Downloads\flashplayer22_xa_install.exe

GOTO:EOF