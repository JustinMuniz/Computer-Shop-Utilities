@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing CCleaner download.
bitsadmin.exe /transfer "CCleaner Installer" http://download.piriform.com/ccsetup520.exe %USERPROFILE%\Downloads\ccsetup520.exe
ECHO. The CCleaner Installer is opening in another window...
%USERPROFILE%\Downloads\ccsetup520.exe
ECHO. The CCleaner installation is complete.
ECHO. Deleting temporary CCleaner installation files...
DEL %USERPROFILE%\Downloads\ccsetup520.exe /S

GOTO:EOF
