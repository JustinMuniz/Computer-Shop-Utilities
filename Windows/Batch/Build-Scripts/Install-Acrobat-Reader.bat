@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Acrobat Reader download.
bitsadmin.exe /transfer "Acrobat Reader Installer" https://admdownload.adobe.com/bin/live/readerdc_en_xa_install.exe %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
ECHO. The Acrobat Reader Installer is opening in another window...
%USERPROFILE%\Downloads\readerdc_en_xa_install.exe
ECHO. The Acrobat Reader installation is complete.
ECHO. Deleting temporary Acrobat Reader installation files...
DEL %USERPROFILE%\Downloads\readerdc_en_xa_install.exe

GOTO:EOF