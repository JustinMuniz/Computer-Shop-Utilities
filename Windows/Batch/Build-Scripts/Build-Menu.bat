@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

:: Replace Ninite meta-installers with individual package installers
:: Verify silent installs, and retry failed installs
:: Flash and Reader need a installation that works with automated queue
:: Installers to add?
::   Classic Start
:: Hide menu options not for that version of windows
::   Adblock Plus for Edge
::   Never10
::   Disable Aero
:: Automate installations and configurations
::   uBlock for Chrome
::   Adblock Plus for Chrome
::   uBlock for Firefox
::   Adblock Plus for Firefox
::   Adblock Plus for Internet Explorer
::   Adblock Plus for Edge
::   ESET NOD32 Anti-Virus
::   Never10
::   Disable password requirement at boot
::   Disable password requirement on wake
::   Disable Aero

CALL:reset-menu-options

:menu-draw-loop
	CLS
	ECHO.
	ECHO.================     Windows System Build Script     ================
	ECHO.================        (c) 2016 Justin Muniz        ================
	ECHO.
	ECHO.
	ECHO.  1.             Build system with selected options
	ECHO.  2.         %option2% Install Ninite
	ECHO.  3.         %option3% Install Simple Help
	ECHO.  4.         %option4% Install Flash Player
	ECHO.  5.         %option5% Install Acrobat Reader
	ECHO.  6.         %option6% Install CCleaner
	ECHO.  7.         %option7% Install Junkware Removal Tool
	ECHO.  8.         %option8% Install ad blockers
	ECHO.  9.         %option9% Install Spybot Search and Destroy
	ECHO.  10.        %option10% Install Avast (optional)
	ECHO.  11.        %option11% Install ESET NOD32 Anti-Virus (optional)
	ECHO.  12.        %option12% Install Auslogics Disk Defrag (HDD only)
	ECHO.  13.        %option13% Install Never10 (Windows 7 and 8 only)
	ECHO.  14.        %option14% Disable password requirement at boot
	ECHO.  15.        %option15% Disable password requirement on wake
	ECHO.  16.        %option16% Disable Aero (Windows Vista, 7, and 8 only)
	ECHO.  17.            Remove temporary installation files
	SET choice=
	SET chosen-option=
	ECHO.&SET /P choice=Enter a number to toggle it's option or hit ENTER to quit [1-17]: ||GOTO:EOF
	IF "%choice%"=="1" (
		ECHO.&CALL:menu-option_%choice%
	) ELSE (
		IF "%choice_number%"=="17" (
			ECHO.&CALL:menu-option_%choice%
		) ELSE (
			FOR /F %%A IN ("option%choice%") DO (
				SET chosen-option=!%%A!
				IF "!%%A!"=="[ ]" (
					SET option!choice!=[X]
				) ELSE (
					SET option!choice!=[ ]
				)
			)
		)	
	)
GOTO:menu-draw-loop

:reset-menu-options
	SET option2=[ ]
	SET option3=[ ]
	SET option4=[ ]
	SET option5=[ ]
	SET option6=[ ]
	SET option7=[ ]
	SET option8=[ ]
	SET option9=[ ]
	SET option10=[ ]
	SET option11=[ ]
	SET option12=[ ]
	SET option13=[ ]
	SET option14=[ ]
	SET option15=[ ]
	SET option16=[ ]
GOTO:EOF

:menu-option_1
	IF "%option2%"=="[X]" (
		CALL Install-Ninite.bat
	)
	IF "%option9%"=="[X]" (
		CALL Install-Spybot.bat
	)
	IF "%option10%"=="[X]" (
		CALL Install-Avast.bat
	)
	IF "%option6%"=="[X]" (
		CALL Insatll-CCleaner.bat
	)
	IF "%option3%"=="[X]" (
		CALL Install-Simple-Help.bat
	)
	IF "%option4%"=="[X]" (
		CALL Install-Flash-Player.bat
	)
	IF "%option5%"=="[X]" (
		CALL Install-Acrobat-Reader.bat
	)
	IF "%option7%"=="[X]" (
		CALL Install-JRT.bat
	)
	IF "%option8%"=="[X]" (
		CALL Install-Ad-Blockers.bat
	)
	IF "%option11%"=="[X]" (
		CALL Install-ESET.bat
	)
	IF "%option12%"=="[X]" (
		CALL Install-Defrag.bat
	)
	IF "%option13%"=="[X]" (
		CALL Install-Never10.bat
	)
	IF "%option14%"=="[X]" (
		CALL Disable-Boot-Password.bat
	)
	IF "%option15%"=="[X]" (
		CALL Disable-Wake-Password.bat
	)
	IF "%option16%"=="[X]" (
		CALL Disable-Aero.bat
	)
	CALL:reset-menu-options
GOTO:EOF

:menu-option_17
	CALL Remove-Temporary-Files.bat
GOTO:EOF
