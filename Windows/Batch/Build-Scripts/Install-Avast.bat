@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Avast download.
bitsadmin.exe /transfer "Avast Installer" http://software-files-a.cnet.com/s/software/15/53/66/42/avast_free_antivirus_setup_online_cnet_2.exe?token=1471352498_065a223c0adb5faeceda172996907eda&fileName=avast_free_antivirus_setup_online_cnet_2.exe %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
ECHO. The Avast Installer is opening in another window...
%USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
ECHO. The Avast installation is complete.
ECHO. Deleting temporary Avast installation files...
DEL %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe

GOTO:EOF