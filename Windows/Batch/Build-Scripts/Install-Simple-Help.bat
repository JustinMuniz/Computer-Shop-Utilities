@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. Initializing Simple Help download.
bitsadmin.exe /transfer "MacRevival Simple Help" /priority FOREGROUND "http://macrevival.noip.me/customer/Remote%20Support-windows32-offline.exe?language=en&hostname=http%3A%2F%2Fmacrevival.noip.me&ie=ie.exe" "%USERPROFILE%\Desktop\MacRevival Simple Help.exe"
ECHO. The Simple Help installation is complete.

GOTO:EOF
