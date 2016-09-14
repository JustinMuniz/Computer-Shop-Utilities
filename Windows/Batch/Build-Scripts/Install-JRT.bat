@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Junkware Removal Tool download.
bitsadmin.exe /transfer "Junkware Removal Tool" http://data-cdn.mbamupdates.com/web/JRT.exe "%USERPROFILE%\Downloads\Junkware Removal Tool.exe"
ECHO. The Junkware Removal Tool installation is complete.

GOTO:EOF
