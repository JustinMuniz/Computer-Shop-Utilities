@ECHO OFF
SETLOCAL

:menuLOOP
	cls
	echo.
	echo.================    Windows System Helper Scripts    ================
	ECHO.================        (c) 2016 Justin Muniz        ================
	echo.
	echo.
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu_%choice%
GOTO:menuLOOP

:menu_1		Installation / Configuration
	start Build-Scripts\Build-Menu.bat
GOTO:EOF

:menu_2		System Maintenance
	start RunMaintenance.bat
GOTO:EOF

:menu_3		Favorite Shortcuts
	start WindowsShortcuts.bat
GOTO:EOF
