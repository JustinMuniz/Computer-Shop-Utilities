@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Adblock Plus for Internet Explorer download.
bitsadmin.exe /transfer "Adblock Plus for Internet Explorer Installer" https://update.adblockplus.org/latest/adblockplusie.exe %USERPROFILE%\Downloads\adblockplusie.exe
ECHO. The Adblock Plus for Internet Explorer Installer is opening in another window...
%USERPROFILE%\Downloads\adblockplusie.exe
ECHO. The Adblock Plus for Internet Explorer installation is complete.
ECHO. Deleting temporary Adblock Plus for Internet Explorer installation files...
DEL %USERPROFILE%\Downloads\adblockplusie.exe

GOTO:EOF