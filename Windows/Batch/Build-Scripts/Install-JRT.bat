@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Junkware Removal Tool download.
bitsadmin.exe /transfer "Junkware Removal Tool Installer" http://data-cdn.mbamupdates.com/web/JRT.exe %USERPROFILE%\Downloads\JRT.exe
ECHO. The Junkware Removal Tool Installer is opening in another window...
%USERPROFILE%\Downloads\JRT.exe
ECHO. The Junkware Removal Tool installation is complete.
ECHO. Deleting temporary Junkware Removal Tool installation files...
DEL %USERPROFILE%\Downloads\JRT.exe

GOTO:EOF