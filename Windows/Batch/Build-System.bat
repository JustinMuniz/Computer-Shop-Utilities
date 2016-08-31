@ECHO OFF
SETLOCAL

:: streamline content acquisition
:: finish auto build script

:menu-loop
	CLS
	ECHO.
	ECHO.==============     Windows System Build Script     ==============
	ECHO.==============        (c) 2016 Justin Muniz        ==============
	ECHO.
	ECHO.
	for /F "tokens=1,2,* delims=_ " %%A IN ('"findstr /b /c:":menu_" "%~f0""') DO (
		ECHO.  %%B  %%C)
	SET choice=
	ECHO.&SET /P choice=.	Make a choice or hit ENTER to quit [1-17]: ||GOTO:EOF
	ECHO.&CALL:menu_%choice%
GOTO:menu-loop

:menu_1		Auto-build a new system
	CLS
	ECHO.
	ECHO. Which version of Windows do you wish to build on to?
	FOR /F "tokens=1,2,* delims=_ " %%A IN ('"findstr /b /c:":menu-auto_" "%~f0""') DO (
		ECHO.  %%B  %%C)
	SET choice=
	ECHO.&SET /P choice=. Make a choice or hit ENTER to return to the menu [1-3]: ||GOTO:EOF
	ECHO.&CALL:menu-auto_%choice%
GOTO:EOF

:menu-auto_1		Windows 7
	CLS
	:: ask for optional packages
	CALL :prompt-ublock-chrome
	CALL :prompt-adblock-chrome
	CALL :prompt-ublock-firefox
	CALL :prompt-adblock-firefox
	CALL :prompt-adblock-ie
	CALL :prompt-adblock-edge
	CALL :prompt-avast
	CALL :prompt-eset
	CALL :prompt-defrag
	CALL :prompt-never10
	:: install selected packages
	CALL :menu-ninite_1
	CALL :menu_3
	CALL :menu_4
	CALL :menu_5
	CALL :menu_6
	CALL :menu_7
	IF "%ublock-chrome-chosen%"=="yes" (
		CALL :menu-adblockers_1
	)
	IF "%adblock-chrome-chosen%"=="yes" (
		CALL :menu-adblockers_2
	)
	IF "%ublock-firefox-chosen%"=="yes" (
		CALL :menu-adblockers_3
	)
	IF "%adblock-firefox-chosen%"=="yes" (
		CALL :menu-adblockers_4
	)
	IF "%adblock-ie-chosen%"=="yes" (
		CALL :menu-adblockers_5
	)
	IF "%adblock-edge-chosen%"=="yes" (
		CALL :menu-adblockers_6
	)
	CALL :menu_9
	IF "%avast-chosen%"=="yes" (
		CALL :menu_10
	)
	IF "%eset-chosen%"=="yes" (
		CALL :menu_11
	)
	IF "%defrag-chosen%"=="yes" (
		CALL :menu_12
	)
	IF "%never10-chosen%"=="yes" (
		CALL :menu_13
	)
	CALL :menu_14
	CALL :menu_15
	CALL :menu_16
	CALL :menu_17
GOTO:EOF

:menu-auto_2		Windows 8 or 8.1
GOTO:EOF

:menu-auto_3		Windows 10
GOTO:EOF

:menu_2		Install Ninite
	CLS
	ECHO.
	ECHO. Which version of Ninite do you wish to install?
	FOR /F "tokens=1,2,* delims=_ " %%A IN ('"findstr /b /c:":menu-ninite_" "%~f0""') DO (
		ECHO.  %%B  %%C)
	SET choice=
	ECHO.&SET /P choice=. Make a choice or hit ENTER to return to the menu [1-3]: ||GOTO:EOF
	ECHO.&CALL:menu-ninite_%choice%
GOTO:EOF

:menu-ninite_1		Windows 7
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 7 download.
	bitsadmin.exe /transfer "Ninite for Windows 7 Installer" http://macrevival.com/assets/downloads/Ninite7.exe %USERPROFILE%\Downloads\Ninite7.exe
	ECHO. The Ninite for Windows 7 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite7.exe
	ECHO. The Ninite for Windows 7 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 7 installation files...
	DEL %USERPROFILE%\Downloads\Ninite7.exe
GOTO:EOF

:menu-ninite_2		Windows 8 or 8.1
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 8 download.
	bitsadmin.exe /transfer "Ninite for Windows 8 Installer" http://macrevival.com/assets/downloads/Ninite8.exe %USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite8.exe
	ECHO. The Ninite for Windows 8 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 8 installation files...
	DEL %USERPROFILE%\Downloads\Ninite8.exe
GOTO:EOF

:menu-ninite_3		Windows 10
	CLS
	ECHO.
	ECHO. Initializing Ninite for Windows 10 download.
	bitsadmin.exe /transfer "Ninite for Windows 10 Installer" http://macrevival.com/assets/downloads/Ninite10.exe %USERPROFILE%\Downloads\Ninite10.exe
	ECHO. The Ninite for Windows 10 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite10.exe
	ECHO. The Ninite for Windows 10 installation is complete.
	ECHO. Deleting temporary Ninite for Windows 10 installation files...
	DEL %USERPROFILE%\Downloads\Ninite10.exe
GOTO:EOF

:menu_3		Install Simple Help
	CLS
	ECHO.
	ECHO. Opening Simple Help download page in another window...
	START http://macrevival.noip.me/customer
GOTO:EOF

:menu_4		Install Flash Player
	CLS
	ECHO.
	ECHO. Initializing Flash Player download.
	bitsadmin.exe /transfer "Flash Player Installer" https://admdownload.adobe.com/bin/live/flashplayer22_xa_install.exe %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	ECHO. The Flash Player Installer is opening in another window...
	%USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	ECHO. The Flash Player installation is complete.
	ECHO. Deleting temporary Flash Player installation files...
	DEL %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
GOTO:EOF

:menu_5		Install Acrobat Reader
	CLS
	ECHO.
	ECHO. Initializing Acrobat Reader download.
	bitsadmin.exe /transfer "Acrobat Reader Installer" https://admdownload.adobe.com/bin/live/readerdc_en_xa_install.exe %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	ECHO. The Acrobat Reader Installer is opening in another window...
	%USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	ECHO. The Acrobat Reader installation is complete.
	ECHO. Deleting temporary Acrobat Reader installation files...
	DEL %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
GOTO:EOF

:menu_6		Install CCleaner
	CLS
	ECHO.
	ECHO. Initializing CCleaner download.
	bitsadmin.exe /transfer "CCleaner Installer" http://download.piriform.com/ccsetup520.exe %USERPROFILE%\Downloads\ccsetup520.exe
	ECHO. The CCleaner Installer is opening in another window...
	%USERPROFILE%\Downloads\ccsetup520.exe
	ECHO. The CCleaner installation is complete.
	ECHO. Deleting temporary CCleaner installation files...
	DEL %USERPROFILE%\Downloads\ccsetup520.exe
GOTO:EOF

:menu_7		Install Junkware Removal Tool
	CLS
	ECHO.
	ECHO. Initializing Junkware Removal Tool download.
	bitsadmin.exe /transfer "Junkware Removal Tool Installer" http://data-cdn.mbamupdates.com/web/JRT.exe %USERPROFILE%\Downloads\JRT.exe
	ECHO. The Junkware Removal Tool Installer is opening in another window...
	%USERPROFILE%\Downloads\JRT.exe
	ECHO. The Junkware Removal Tool installation is complete.
	ECHO. Deleting temporary Junkware Removal Tool installation files...
	DEL %USERPROFILE%\Downloads\JRT.exe
GOTO:EOF

:menu_8		Install ad blockers
	CLS
	ECHO.
	ECHO. Which ad blocker do you wish to install?
	FOR /F "tokens=1,2,* delims=_ " %%A IN ('"findstr /b /c:":menu-adblockers_" "%~f0""') DO (
		ECHO.  %%B  %%C)
	SET choice=
	ECHO.&SET /P choice=. Make a choice or hit ENTER to return to the menu [1-6]: ||GOTO:EOF
	ECHO.&CALL:menu-adblockers_%choice%
GOTO:EOF

:menu-adblockers_1		uBlock for Chrome
	CLS
	ECHO.
	ECHO. Opening uBlock for Chrome download page in another window...
	START chrome https://chrome.google.com/webstore/detail/ublock/epcnnfbjfcgphgdmggkamkmgojdagdnn
GOTO:EOF

:menu-adblockers_2		Adblock Plus for Chrome
	CLS
	ECHO.
	ECHO. Opening Adblock Plus for Chrome download page in another window...
	START chrome https://chrome.google.com/webstore/detail/cfhdojbkjhnklbpkdaibdccddilifddb
GOTO:EOF

:menu-adblockers_3		uBlock for Firefox
	CLS
	ECHO.
	ECHO. Opening uBlock for Firefox download page in another window...
	START firefox https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi?src=dp-btn-primary
GOTO:EOF

:menu-adblockers_4		Adblock Plus for Firefox
	CLS
	ECHO.
	ECHO. Opening Adblock Plus for Firefox download page in another window...
	START firefox https://update.adblockplus.org/latest/adblockplusfirefox.xpi
GOTO:EOF

:menu-adblockers_5		Adblock Plus for Internet Explorer
	cls
	echo.
	echo. Initializing Adblock Plus for Internet Explorer download.
	bitsadmin.exe /transfer "Adblock Plus for Internet Explorer Installer" https://update.adblockplus.org/latest/adblockplusie.exe %USERPROFILE%\Downloads\adblockplusie.exe
	echo. The Adblock Plus for Internet Explorer Installer is opening in another window...
	%USERPROFILE%\Downloads\adblockplusie.exe
	echo. The Adblock Plus for Internet Explorer installation is complete.
	echo. Deleting temporary Adblock Plus for Internet Explorer installation files...
	del %USERPROFILE%\Downloads\adblockplusie.exe
GOTO:EOF

:menu-adblockers_6		Adblock Plus for Edge (Windows 10 1607 or newer only)
	CLS
	ECHO.
	ECHO. Opening Adblock Plus for Edge download page in another window...
	START ms-windows-store://pdp/?ProductId=9nblggh4r9nz
GOTO:EOF

:menu_9		Install Spybot Search and Destroy
	cls
	echo.
	echo. Initializing Spybot Search and Destroy download.
	bitsadmin.exe /transfer "Spybot Search and Destroy Installer" http://updates3.safer-networking.org/spybot1/spybot-2.4.exe %USERPROFILE%\Downloads\spybot-2.4.exe
	echo. The Spybot Search and Destroy Installer is opening in another window...
	%USERPROFILE%\Downloads\spybot-2.4.exe
	echo. The Spybot Search and Destroy installation is complete.
	echo. Deleting temporary Spybot Search and Destroy installation files...
	del %USERPROFILE%\Downloads\spybot-2.4.exe
GOTO:EOF

:menu_10		Install Avast (optional)
	cls
	echo.
	echo. Initializing Avast download.
	bitsadmin.exe /transfer "Avast Installer" http://software-files-a.cnet.com/s/software/15/53/66/42/avast_free_antivirus_setup_online_cnet_2.exe?token=1471352498_065a223c0adb5faeceda172996907eda&fileName=avast_free_antivirus_setup_online_cnet_2.exe %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
	echo. The Avast Installer is opening in another window...
	%USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
	echo. The Avast installation is complete.
	echo. Deleting temporary Avast installation files...
	del %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
GOTO:EOF

:menu_11		Install ESET NOD32 Anti-Virus (optional)
	cls
	echo.
	echo. Initializing ESET NOD32 Anti-Virus download.
	bitsadmin.exe /transfer "ESET NOD32 Anti-Virus Installer" http://download.eset.com/special/live-installer/us/eset_nod32_antivirus_live_installer.exe %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
	echo. The ESET NOD32 Anti-Virus Installer is opening in another window...
	%USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
	echo. The ESET NOD32 Anti-Virus installation is complete.
	echo. Deleting temporary ESET NOD32 Anti-Virus installation files...
	del %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
GOTO:EOF

:menu_12		Install Auslogics Disk Defrag (HDD only)
	cls
	echo.
	echo. Initializing Auslogics Disk Defrag download.
	bitsadmin.exe /transfer "Auslogics Disk Defrag Installer" http://static.auslogics.com/en/disk-defrag/disk-defrag-setup.exe %USERPROFILE%\Downloads\disk-defrag-setup.exe
	echo. The Auslogics Disk Defrag Installer is opening in another window...
	%USERPROFILE%\Downloads\disk-defrag-setup.exe
	echo. The Auslogics Disk Defrag installation is complete.
	echo. Deleting temporary Auslogics Disk Defrag installation files...
	del %USERPROFILE%\Downloads\disk-defrag-setup.exe
GOTO:EOF

:menu_13		Install Never10 (Windows 7 and 8 only)
	cls
	echo.
	echo. Initializing Never10 download.
	bitsadmin.exe /transfer "Never10 Installer" https://www.grc.com/files/never10.exe %USERPROFILE%\Downloads\never10.exe
	echo. The Never10 Installer is opening in another window...
	%USERPROFILE%\Downloads\never10.exe
	echo. The Never10 installation is complete.
	echo. Deleting temporary Never10 installation files...
	del %USERPROFILE%\Downloads\never10.exe
GOTO:EOF

:menu_14		Disable password requirement at boot
	CLS
	ECHO.
	ECHO. The User Accounts Control Panel is opening in another window...
	netplwiz
GOTO:EOF

:menu_15		Disable password requirement on wake
	CLS
	ECHO.
	echo. The Advanced Power Settings Control Panel is opening in another window...
	%WINDIR%\system32\control.exe powercfg.cpl,,3
GOTO:EOF

:menu_16		Disable Aero (Windows Vista, 7, and 8 only)
	CLS
	ECHO.
	ECHO. The Personalization Control Panel is opening in another window...
	Control.exe /name Microsoft.Personalization
GOTO:EOF

:menu_17		Remove temporary installation files
	ECHO. Deleting temporary Ninite for Windows 7 installation files...
	DEL %USERPROFILE%\Downloads\Ninite7.exe
	ECHO. Deleting temporary Ninite for Windows 8 installation files...
	DEL %USERPROFILE%\Downloads\Ninite8.exe
	ECHO. Deleting temporary Ninite for Windows 10 installation files...
	DEL %USERPROFILE%\Downloads\Ninite10.exe
	ECHO. Deleting temporary CCleaner installation files...
	DEL %USERPROFILE%\Downloads\ccsetup520.exe
	ECHO. Deleting temporary Avast installation files...
	DEL %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
	ECHO. Deleting temporary ESET NOD32 Anti-Virus installation files...
	DEL %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
	ECHO. Deleting temporary Junkware Removal Tool installation files...
	DEL %USERPROFILE%\Downloads\JRT.exe
	ECHO. Deleting temporary Auslogics Disk Defrag installation files...
	DEL %USERPROFILE%\Downloads\disk-defrag-setup.exe
	ECHO. Deleting temporary Flash Player installation files...
	DEL %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	ECHO. Deleting temporary Acrobat Reader installation files...
	DEL %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	ECHO. Deleting temporary Never10 installation files...
	DEL %USERPROFILE%\Downloads\never10.exe
	ECHO. Deleting temporary Adblock Plus for Internet Explorer installation files...
	DEL %USERPROFILE%\Downloads\adblockplusie.exe
GOTO:EOF

:prompt-ublock-chrome
GOTO:EOF

:prompt-adblock-chrome
GOTO:EOF

:prompt-ublock-firefox
GOTO:EOF

:prompt-adblock-firefox
GOTO:EOF

:prompt-adblock-ie
GOTO:EOF

:prompt-adblock-edge
GOTO:EOF

:prompt-avast
GOTO:EOF

:prompt-eset
GOTO:EOF

:prompt-defrag
GOTO:EOF

:prompt-never10
GOTO:EOF
