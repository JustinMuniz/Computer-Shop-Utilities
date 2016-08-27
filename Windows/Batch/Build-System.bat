@ECHO OFF

REM test ublock origin for chrome
REM test adblock plus for chrome
REM determine method of installing chrome addons without details page
REM add spybot

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

:menu_2		Disable password requirement on wake
	cls
	echo.
	echo. The Advanced Power Settings Control Panel is opening in another window...
	%windir%\system32\control.exe powercfg.cpl,,3
GOTO:EOF

:menu_3		Disable Aero (Windows Vista, 7, and 8 only)
	cls
	echo.
	echo. The Personalization Control Panel is opening in another window...
	Control.exe /name Microsoft.Personalization
GOTO:EOF

:menu_4		Install Ninite
	cls
	echo.
	echo. Which version of Ninite do you wish to install?
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu-ninite_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu-ninite_%choice%
GOTO:EOF

:menu_5		Install CCleaner
	cls
	echo.
	echo. Initializing CCleaner download.
	bitsadmin.exe /transfer "CCleaner Installer" http://download.piriform.com/ccsetup520.exe %USERPROFILE%\Downloads\ccsetup520.exe
	echo. The CCleaner Installer is opening in another window...
	%USERPROFILE%\Downloads\ccsetup520.exe
	echo. The CCleaner installation is complete.
	echo. Deleting temporary CCleaner installation files...
	del %USERPROFILE%\Downloads\ccsetup520.exe
GOTO:EOF

:menu_6		Install Avast (optional)
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

:menu_7		Install ESET NOD32 Anti-Virus (optional)
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

:menu_8		Install Junkware Removal Tool
	cls
	echo.
	echo. Initializing Junkware Removal Tool download.
	bitsadmin.exe /transfer "Junkware Removal Tool Installer" http://data-cdn.mbamupdates.com/web/JRT.exe %USERPROFILE%\Downloads\JRT.exe
	echo. The Junkware Removal Tool Installer is opening in another window...
	%USERPROFILE%\Downloads\JRT.exe
	echo. The Junkware Removal Tool installation is complete.
	echo. Deleting temporary Junkware Removal Tool installation files...
	del %USERPROFILE%\Downloads\JRT.exe
GOTO:EOF

:menu_9		Install Auslogics Disk Defrag (HDDs only)
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

:menu_10		Install Flash Player
	cls
	echo.
	echo. Initializing Flash Player download.
	bitsadmin.exe /transfer "Flash Player Installer" https://admdownload.adobe.com/bin/live/flashplayer22_xa_install.exe %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	echo. The Flash Player Installer is opening in another window...
	%USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	echo. The Flash Player installation is complete.
	echo. Deleting temporary Flash Player installation files...
	del %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
GOTO:EOF

:menu_11		Install Acrobat Reader
	cls
	echo.
	echo. Initializing Acrobat Reader download.
	bitsadmin.exe /transfer "Acrobat Reader Installer" https://admdownload.adobe.com/bin/live/readerdc_en_xa_install.exe %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	echo. The Acrobat Reader Installer is opening in another window...
	%USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	echo. The Acrobat Reader installation is complete.
	echo. Deleting temporary Acrobat Reader installation files...
	del %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
GOTO:EOF

:menu_12		Install ad blockers
	cls
	echo.
	echo. Which ad blocker do you wish to install?
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu-adblockers_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu-adblockers_%choice%
GOTO:EOF

:menu_13		Install Simple Help
	cls
	echo.
	echo. Opening Simple Help download page in another window...
	start http://macrevival.noip.me/customer
GOTO:EOF

:menu_14		Install Never10 (Windows 7 and 8 only)
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

:menu_15		Remove temporary installation files
	echo. Deleting temporary Ninite for Windows 7 installation files...
	del %USERPROFILE%\Downloads\Ninite7.exe
	echo. Deleting temporary Ninite for Windows 8 installation files...
	del %USERPROFILE%\Downloads\Ninite8.exe
	echo. Deleting temporary Ninite for Windows 10 installation files...
	del %USERPROFILE%\Downloads\Ninite10.exe
	echo. Deleting temporary CCleaner installation files...
	del %USERPROFILE%\Downloads\ccsetup520.exe
	echo. Deleting temporary Avast installation files...
	del %USERPROFILE%\Downloads\avast_free_antivirus_setup_online_cnet_2.exe
	echo. Deleting temporary ESET NOD32 Anti-Virus installation files...
	del %USERPROFILE%\Downloads\eset_nod32_antivirus_live_installer.exe
	echo. Deleting temporary Junkware Removal Tool installation files...
	del %USERPROFILE%\Downloads\JRT.exe
	echo. Deleting temporary Auslogics Disk Defrag installation files...
	del %USERPROFILE%\Downloads\disk-defrag-setup.exe
	echo. Deleting temporary Flash Player installation files...
	del %USERPROFILE%\Downloads\flashplayer22_xa_install.exe
	echo. Deleting temporary Acrobat Reader installation files...
	del %USERPROFILE%\Downloads\readerdc_en_xa_install.exe
	echo. Deleting temporary Never10 installation files...
	del %USERPROFILE%\Downloads\never10.exe
	echo. Deleting temporary Adblock Plus for Internet Explorer installation files...
	del %USERPROFILE%\Downloads\adblockplusie.exe
GOTO:EOF

:menu_16		Auto-build a new system
	cls
	echo.
	echo. Which version of Windows do you wish to build on to?
	for /f "tokens=1,2,* delims=_ " %%A in ('"findstr /b /c:":menu-auto_" "%~f0""') do (
		echo.  %%B  %%C)
	set choice=
	echo.&set /p choice=. Make a choice or hit ENTER to quit: ||GOTO:EOF
	echo.&call:menu-ninite_%choice%
GOTO:EOF

:menu-ninite_1		Windows 7
	cls
	echo.
	echo. Initializing Ninite for Windows 7 download.
	bitsadmin.exe /transfer "Ninite for Windows 7 Installer" http://macrevival.com/assets/downloads/Ninite7.exe %USERPROFILE%\Downloads\Ninite7.exe
	echo. The Ninite for Windows 7 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite7.exe
	echo. The Ninite for Windows 7 installation is complete.
	echo. Deleting temporary Ninite for Windows 7 installation files...
	del %USERPROFILE%\Downloads\Ninite7.exe
GOTO:EOF

:menu-ninite_2		Windows 8 or 8.1
	cls
	echo.
	echo. Initializing Ninite for Windows 8 download.
	bitsadmin.exe /transfer "Ninite for Windows 8 Installer" http://macrevival.com/assets/downloads/Ninite8.exe %USERPROFILE%\Downloads\Ninite8.exe
	echo. The Ninite for Windows 8 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite8.exe
	echo. The Ninite for Windows 8 installation is complete.
	echo. Deleting temporary Ninite for Windows 8 installation files...
	del %USERPROFILE%\Downloads\Ninite8.exe
GOTO:EOF

:menu-ninite_3		Windows 10
	cls
	echo.
	echo. Initializing Ninite for Windows 10 download.
	bitsadmin.exe /transfer "Ninite for Windows 10 Installer" http://macrevival.com/assets/downloads/Ninite10.exe %USERPROFILE%\Downloads\Ninite10.exe
	echo. The Ninite for Windows 10 Installer is opening in another window...
	%USERPROFILE%\Downloads\Ninite10.exe
	echo. The Ninite for Windows 10 installation is complete.
	echo. Deleting temporary Ninite for Windows 10 installation files...
	del %USERPROFILE%\Downloads\Ninite10.exe
GOTO:EOF

:menu-adblockers_1		uBlock for Chrome
	cls
	echo.
	echo. Opening uBlock for Chrome download page in another window...
	start chrome https://chrome.google.com/webstore/detail/ublock/epcnnfbjfcgphgdmggkamkmgojdagdnn
GOTO:EOF

:menu-adblockers_2		Adblock Plus for Chrome (Need to test)
	cls
	echo.
	echo. Opening Adblock Plus for Chrome download page in another window...
	start chrome https://chrome.google.com/webstore/detail/cfhdojbkjhnklbpkdaibdccddilifddb
GOTO:EOF

:menu-adblockers_3		uBlock for Firefox
	cls
	echo.
	echo. Opening uBlock for Firefox download page in another window...
	start firefox https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi?src=dp-btn-primary
GOTO:EOF

:menu-adblockers_4		Adblock Plus for Firefox
	cls
	echo.
	echo. Opening Adblock Plus for Firefox download page in another window...
	start firefox https://update.adblockplus.org/latest/adblockplusfirefox.xpi
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
	cls
	echo.
	echo. Opening Adblock Plus for Edge download page in another window...
	start ms-windows-store://pdp/?ProductId=9nblggh4r9nz
GOTO:EOF

:menu-auto_1		Windows 7

GOTO:EOF

:auto-build-loop-windows-7
	ninite7
	CCleaner
	avast (y,n)
	ESET (y,n)
	JRT
	Defrag (y,n)
	flash
	adobe
	ublock firefox
	ublock chrome
	adblock ie
	simple Help
	never 10
	remove temporary files
	don't forget to disable aero, and disable password requirements manually (ok)
GOTO:auto-build-loop-windows-7

:menu-auto_2		Windows 8 or 8.1
GOTO:EOF

:menu-auto_3		Windows 10
GOTO:EOF
