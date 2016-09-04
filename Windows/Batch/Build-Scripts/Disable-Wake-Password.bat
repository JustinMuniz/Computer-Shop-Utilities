@ECHO OFF
SETLOCAL

CLS
ECHO.
ECHO. The Advanced Power Settings Control Panel is opening in another window...
%WINDIR%\system32\control.exe powercfg.cpl,,3

GOTO:EOF