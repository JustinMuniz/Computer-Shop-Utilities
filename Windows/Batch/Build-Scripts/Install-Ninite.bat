@ECHO OFF
SETLOCAL

FOR /F "tokens=4-5 delims=. " %%i IN ('ver') DO (
	SET version=%%i.%%j
	SET major-version=%%i
)

if "%major-version%" == "10" (
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 10 download.
	bitsadmin.exe /transfer "Ninite for Windows 10 Installer" http://macrevival.com/assets/downloads/Ninite10.exe %USERPROFILE%\Downloads\Ninite10.exe
	ECHO. The Ninite for Windows 10 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite10.exe
	ECHO. The Ninite for Windows 10 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 10 installation files...
	DEL %USERPROFILE%\Downloads\Ninite10.exe
)

IF "%version%" == "6.3" (
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 8 download.
	bitsadmin.exe /transfer "Ninite for Windows 8 Installer" http://macrevival.com/assets/downloads/Ninite8.exe %USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 8 installation files...
	DEL %USERPROFILE%\Downloads\Ninite8.exe
)

if "%version%" == "6.2" (
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 8 download.
	bitsadmin.exe /transfer "Ninite for Windows 8 Installer" http://macrevival.com/assets/downloads/Ninite8.exe %USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 8 installation files...
	DEL %USERPROFILE%\Downloads\Ninite8.exe
)

if "%version%" == "6.1" (
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 7 download.
	bitsadmin.exe /transfer "Ninite for Windows 7 Installer" http://macrevival.com/assets/downloads/Ninite7.exe %USERPROFILE%\Downloads\Ninite7.exe
	ECHO. The Ninite for Windows 7 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite7.exe
	ECHO. The Ninite for Windows 7 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 7 installation files...
	DEL %USERPROFILE%\Downloads\Ninite7.exe
)

GOTO:EOF
