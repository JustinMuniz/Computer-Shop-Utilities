@ECHO OFF
SETLOCAL

CALL:reset-ad-blocker-menu-options

:menu-draw-loop
	CLS
	ECHO.
	ECHO.================     Windows System Build Script     ================
	ECHO.================        (c) 2016 Justin Muniz        ================
	ECHO.
	ECHO.
	ECHO.  1.             Build system with selected options
	ECHO.  2.         %ad-blocker-option2% uBlock for Chrome
	ECHO.  3.         %ad-blocker-option3% Adblock Plus for Chrome
	ECHO.  4.         %ad-blocker-option4% uBlock for Firefox
	ECHO.  5.         %ad-blocker-option5% Adblock Plus for Firefox
	ECHO.  6.         %ad-blocker-option6% Adblock Plus for Internet Explorer
	ECHO.  7.         %ad-blocker-option7% Adblock Plus for Edge (Windows 10 1607 or newer only)
	SET choice=
	ECHO.&SET /P choice=Enter a number to toggle it's option or hit ENTER to quit [1-17]: ||GOTO:EOF
	ECHO.&CALL:ad-blocker-menu-option_%choice%
GOTO:menu-draw-loop

GOTO:EOF

:reset-ad-blocker-menu-options
	SET ad-blocker-option2=[ ]
	SET ad-blocker-option3=[ ]
	SET ad-blocker-option4=[ ]
	SET ad-blocker-option5=[ ]
	SET ad-blocker-option6=[ ]
	SET ad-blocker-option7=[ ]
GOTO:EOF

:ad-blocker-menu-option_1
	IF "%option2%"=="[X]" (
		CALL Install-uBlock-Chrome.bat
	)
	IF "%option3%"=="[X]" (
		CALL Install-Adblock-Chrome.bat
	)
	IF "%option4%"=="[X]" (
		CALL Install-uBlock-Firefox.bat
	)
	IF "%option5%"=="[X]" (
		CALL Install-Adblock-Firefox.bat
	)
	IF "%option6%"=="[X]" (
		CALL Install-Adblock-IE.bat
	)
	IF "%option7%"=="[X]" (
		CALL Install-Adblock-Edge.bat
	)
GOTO:EOF

:ad-blocker-menu-option_2
	IF "%ad-blocker-option2%"=="[ ]" (
		SET ad-blocker-option2=[X]
	) ELSE (
		SET ad-blocker-option2=[ ]
	)
GOTO:EOF

:ad-blocker-menu-option_3
	IF "%ad-blocker-option3%"=="[ ]" (
		SET ad-blocker-option3=[X]
	) ELSE (
		SET ad-blocker-option3=[ ]
	)
GOTO:EOF

:ad-blocker-menu-option_4
	IF "%ad-blocker-option4%"=="[ ]" (
		SET ad-blocker-option4=[X]
	) ELSE (
		SET ad-blocker-option4=[ ]
	)
GOTO:EOF

:ad-blocker-menu-option_5
	IF "%ad-blocker-option5%"=="[ ]" (
		SET ad-blocker-option5=[X]
	) ELSE (
		SET ad-blocker-option5=[ ]
	)
GOTO:EOF

:ad-blocker-menu-option_6
	IF "%ad-blocker-option6%"=="[ ]" (
		SET ad-blocker-option6=[X]
	) ELSE (
		SET ad-blocker-option6=[ ]
	)
GOTO:EOF

:ad-blocker-menu-option_7
	IF "%ad-blocker-option7%"=="[ ]" (
		SET ad-blocker-option7=[X]
	) ELSE (
		SET ad-blocker-option7=[ ]
	)
GOTO:EOF
