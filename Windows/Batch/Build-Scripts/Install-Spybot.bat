@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Spybot Search and Destroy download.
bitsadmin.exe /transfer "Spybot Search and Destroy Installer" https://ninite.com/spybot2/ninite.exe %USERPROFILE%\Downloads\spybot.exe
ECHO. The Spybot Search and Destroy Installer is opening in another window...
%USERPROFILE%\Downloads\spybot.exe
ECHO. The Spybot Search and Destroy installation is complete.
ECHO. Deleting temporary Spybot Search and Destroy installation files...
DEL %USERPROFILE%\Downloads\spybot.exe /silent .

GOTO:EOF
