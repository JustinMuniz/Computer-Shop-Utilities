@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Auslogics Disk Defrag download.
bitsadmin.exe /transfer "Auslogics Disk Defrag Installer" https://ninite.com/auslogics/ninite.exe %USERPROFILE%\Downloads\disk-defrag-setup.exe
ECHO. The Auslogics Disk Defrag Installer is opening in another window...
%USERPROFILE%\Downloads\disk-defrag-setup.exe
ECHO. The Auslogics Disk Defrag installation is complete.
ECHO. Deleting temporary Auslogics Disk Defrag installation files...
DEL %USERPROFILE%\Downloads\disk-defrag-setup.exe /silent .

GOTO:EOF
