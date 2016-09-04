@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing ESET NOD32 Anti-Virus download.
bitsadmin.exe /transfer "ESET NOD32 Anti-Virus Installer" http://download.eset.com/special/live-installer/us/eset_nod32_antivirus_live_installer.exe %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
ECHO. The ESET NOD32 Anti-Virus Installer is opening in another window...
%USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
ECHO. The ESET NOD32 Anti-Virus installation is complete.
ECHO. Deleting temporary ESET NOD32 Anti-Virus installation files...
DEL %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe

GOTO:EOF