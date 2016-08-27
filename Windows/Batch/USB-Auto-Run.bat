@ECHO OFF

REM menu
REM build checklist
REM run maintenance
REM windows shortcuts

:menuLOOP
	cls
	echo.
	echo.===         H.E.L.P.e.R.        ================================
	echo.===         Justin Muniz        ================================
	echo.===          2016-08-17         ================================
	echo.
	echo.
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu_%choice%
GOTO:menuLOOP

:menu_1		Installation / Configuration
	start BuildChecklist.bat
GOTO:EOF

:menu_2		System Maintenance
	start RunMaintenance.bat
GOTO:EOF

:menu_3		Favorite Shortcuts
	start WindowsShortcuts.bat
GOTO:EOF
