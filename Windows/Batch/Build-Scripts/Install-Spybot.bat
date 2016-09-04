@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Spybot Search and Destroy download.
bitsadmin.exe /transfer "Spybot Search and Destroy Installer" http://updates3.safer-networking.org/spybot1/spybot-2.4.exe %USERPROFILE%\Downloads\spybot-2.4.exe
ECHO. The Spybot Search and Destroy Installer is opening in another window...
%USERPROFILE%\Downloads\spybot-2.4.exe
ECHO. The Spybot Search and Destroy installation is complete.
ECHO. Deleting temporary Spybot Search and Destroy installation files...
DEL %USERPROFILE%\Downloads\spybot-2.4.exe

GOTO:EOF