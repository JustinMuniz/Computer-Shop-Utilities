@ECHO OFF
SETLOCAL

:: optomize the menu option toggle algorithm
:: hide menu options not for that version of windows 
:: automate installations and configurations

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
	ECHO.&SET /P choice=Enter a number to toggle it's option or hit ENTER to quit [1-17]: ||GOTO:EOF
	ECHO.&CALL:menu-option_%choice%
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
	IF "%option4%"=="[X]" (
		CALL Install-Flash-Player.bat
	)
	IF "%option5%"=="[X]" (
		CALL Install-Acrobat-Reader.bat
	)
	IF "%option6%"=="[X]" (
		CALL Insatll-CCleaner.bat
	)
	IF "%option7%"=="[X]" (
		CALL Install-JRT.bat
	)
	IF "%option9%"=="[X]" (
		CALL Install-Spybot.bat
	)
	IF "%option10%"=="[X]" (
		CALL Install-Avast.bat
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
	IF "%option8%"=="[X]" (
		CALL Install-Ad-Blockers.bat
	)
	IF "%option3%"=="[X]" (
		CALL Install-Simple-Help.bat
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

:menu-option_2
	IF "%option2%"=="[ ]" (
		SET option2=[X]
	) ELSE (
		SET option2=[ ]
	)
GOTO:EOF

:menu-option_3
	IF "%option3%"=="[ ]" (
		SET option3=[X]
	) ELSE (
		SET option3=[ ]
	)
GOTO:EOF

:menu-option_4
	IF "%option4%"=="[ ]" (
		SET option4=[X]
	) ELSE (
		SET option4=[ ]
	)
GOTO:EOF

:menu-option_5
	IF "%option5%"=="[ ]" (
		SET option5=[X]
	) ELSE (
		SET option5=[ ]
	)
GOTO:EOF

:menu-option_6
	IF "%option6%"=="[ ]" (
		SET option6=[X]
	) ELSE (
		SET option6=[ ]
	)
GOTO:EOF

:menu-option_7
	IF "%option7%"=="[ ]" (
		SET option7=[X]
	) ELSE (
		SET option7=[ ]
	)
GOTO:EOF

:menu-option_8
	IF "%option8%"=="[ ]" (
		SET option8=[X]
	) ELSE (
		SET option8=[ ]
	)
GOTO:EOF

:menu-option_9
	IF "%option9%"=="[ ]" (
		SET option9=[X]
	) ELSE (
		SET option9=[ ]
	)
GOTO:EOF

:menu-option_10
	IF "%option10%"=="[ ]" (
		SET option10=[X]
	) ELSE (
		SET option10=[ ]
	)
GOTO:EOF

:menu-option_11
	IF "%option11%"=="[ ]" (
		SET option11=[X]
	) ELSE (
		SET option11=[ ]
	)
GOTO:EOF

:menu-option_12
	IF "%option12%"=="[ ]" (
		SET option12=[X]
	) ELSE (
		SET option12=[ ]
	)
GOTO:EOF

:menu-option_13
	IF "%option13%"=="[ ]" (
		SET option13=[X]
	) ELSE (
		SET option13=[ ]
	)
GOTO:EOF

:menu-option_14
	IF "%option14%"=="[ ]" (
		SET option14=[X]
	) ELSE (
		SET option14=[ ]
	)
GOTO:EOF

:menu-option_15
	IF "%option15%"=="[ ]" (
		SET option15=[X]
	) ELSE (
		SET option15=[ ]
	)
GOTO:EOF

:menu-option_16
	IF "%option16%"=="[ ]" (
		SET option16=[X]
	) ELSE (
		SET option16=[ ]
	)
GOTO:EOF

:menu-option_17
	CALL Remove-Temporary-Files.bat
GOTO:EOF
