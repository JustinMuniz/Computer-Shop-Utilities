@ECHO OFF

:menuLOOP
	cls
	echo.
	echo.===  H.E.L.P.e.R. Build Script  ================================
	echo.===         Justin Muniz        ================================
	echo.===          2016-08-15         ================================
	echo.
	echo.
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu_%choice%
GOTO:menuLOOP

:menu_1		Disable password requirement at boot
	cls
	echo.
	echo. The User Accounts Control Panel is opening in another window...
	netplwiz
GOTO:EOF

REM god mode
REM disk management
REM settings (windows 8, 10)
REM
