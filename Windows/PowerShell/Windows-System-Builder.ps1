<#########################
0.0    General Information
#########################>

<# 0.1    Script Information #>
<#
    Script Title: Computer Shop Utilities: Windows System Builder
    Author Name: Justin Muniz
    Software License: BSD2
    Web Site: https://github.com/JustinMuniz/Computer-Shop-Utilities
    File Name: Windows-System-Builder.ps1
    Short Description: A utility to install and configure software on a new installation of Windows
#>

<# 0.2    Table of Contents #>
<#
    0.0    General Information
        0.1    Script Information
        0.2    Table of Contents
        0.3    Microsoft .NET Framework types (classes) required for the Windows PowerShell session
    1.0    Form Definitions
        1.1    Main Window
        1.2    Header Label
        1.3    User Instructions Label
        1.4    Ninite Check Box
        1.5    Simple Help Check Box
        1.6    Flash Player Check Box
        1.7    Acrobat Reader Check Box
        1.8    CCleaner Check Box
        1.9    Junkware Removal Tool Check Box
        1.10    Ad Blockers Check Box
        1.11    Spybot Check Box
        1.12    Avast Check Box
        1.13    ESET Check Box
        1.14    Defrag Check Box
        1.15    Never10 Check Box
        1.16    Boot Password Check Box
        1.17    Wake Password Check Box
        1.18    Aero Check Box
        1.19    Clean Button
        1.20    Build Button
        1.21    Copyright Label
    2.0    Event Subroutines
        2.1    Click the Clean Button
        2.2    Click the Build Button
        2.3    Ninite Installation
        2.4    Simple Help Installation
        2.5    Flash Player Installation
        2.6    Acrobat Reader Installation
        2.7    CCleaner Installation
        2.8    Junkware Removal Tool Installation
        2.9    Ad Blocker Installation
        2.10    Spybot Installation
        2.11    Avast Installation
        2.12    ESET Installation
        2.13    Defrag Installation
        2.14    Never10 Installation
        2.15    Show Boot Password Configuration
        2.16    Show Power Configuration
        2.17    Show Windows Personalization Configuration
    3.0    Program Entry Point
        3.1    Ensure that PowerShell is Elevated
        3.2    Construction
        3.3    Deconstruction
#>

<# 0.3    Microsoft .NET Framework types (classes) required for the Windows PowerShell session #>
Add-Type -AssemblyName System.Windows.Forms <# Required to create GUI components #>


<######################
1.0    Form Definitions
######################>


<# 1.1    Main Window #>
$MainWindow = New-Object system.Windows.Forms.Form
$MainWindow.Text = "Computer Shop Utilities: Windows System Builder"
$MainWindow.TopMost = $true
$MainWindow.Width = 550
$MainWindow.Height = 590
$MainWindow.FormBorderStyle = 'Fixed3D'
$MainWindow.MaximizeBox = $false

<# 1.2    Header Label #>
$HeaderLabel = New-Object system.windows.Forms.Label
$HeaderLabel.Text = "Windows System Builder"
$HeaderLabel.AutoSize = $true
$HeaderLabel.Width = 25
$HeaderLabel.Height = 10
$HeaderLabel.location = new-object system.drawing.point(143,20)
$HeaderLabel.Font = "Microsoft Sans Serif,16"
$MainWindow.controls.Add($HeaderLabel)

<# 1.3    User Instructions Label #>
$UserInstructionsLabel = New-Object system.windows.Forms.Label
$UserInstructionsLabel.Text = "Use the checkboxes to customize your build:"
$UserInstructionsLabel.AutoSize = $true
$UserInstructionsLabel.Width = 25
$UserInstructionsLabel.Height = 10
$UserInstructionsLabel.location = new-object system.drawing.point(25,72)
$UserInstructionsLabel.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($UserInstructionsLabel)

<# 1.4    Ninite Check Box #>
$NiniteCheckBox = New-Object system.windows.Forms.CheckBox
$NiniteCheckBox.Text = "Install Ninite"
$NiniteCheckBox.AutoSize = $true
$NiniteCheckBox.Width = 95
$NiniteCheckBox.Height = 20
$NiniteCheckBox.location = new-object system.drawing.point(40,108)
$NiniteCheckBox.Font = "Microsoft Sans Serif,10"
$NiniteCheckBox.TabIndex = 0
$MainWindow.controls.Add($NiniteCheckBox)

<# 1.5    Simple Help Check Box #>
$SimpleHelpCheckBox = New-Object system.windows.Forms.CheckBox
$SimpleHelpCheckBox.Text = "Install Simple Help"
$SimpleHelpCheckBox.AutoSize = $true
$SimpleHelpCheckBox.Width = 95
$SimpleHelpCheckBox.Height = 20
$SimpleHelpCheckBox.location = new-object system.drawing.point(40,130)
$SimpleHelpCheckBox.Font = "Microsoft Sans Serif,10"
$SimpleHelpCheckBox.TabIndex = 1
$MainWindow.controls.Add($SimpleHelpCheckBox)

<# 1.6    Flash Player Check Box #>
$FlashPlayerCheckBox = New-Object system.windows.Forms.CheckBox
$FlashPlayerCheckBox.Text = "Install Flash Player"
$FlashPlayerCheckBox.AutoSize = $true
$FlashPlayerCheckBox.Width = 95
$FlashPlayerCheckBox.Height = 20
$FlashPlayerCheckBox.location = new-object system.drawing.point(40,152)
$FlashPlayerCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($FlashPlayerCheckBox)

<# 1.7    Acrobat Reader Check Box #>
$AcrobatReaderCheckBox = New-Object system.windows.Forms.CheckBox
$AcrobatReaderCheckBox.Text = "Install Acrobat Reader"
$AcrobatReaderCheckBox.AutoSize = $true
$AcrobatReaderCheckBox.Width = 95
$AcrobatReaderCheckBox.Height = 20
$AcrobatReaderCheckBox.location = new-object system.drawing.point(40,174)
$AcrobatReaderCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($AcrobatReaderCheckBox)

<# 1.8    CCleaner Check Box #>
$CCleanerCheckBox = New-Object system.windows.Forms.CheckBox
$CCleanerCheckBox.Text = "Install CCleaner"
$CCleanerCheckBox.AutoSize = $true
$CCleanerCheckBox.Width = 95
$CCleanerCheckBox.Height = 20
$CCleanerCheckBox.location = new-object system.drawing.point(40,196)
$CCleanerCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($CCleanerCheckBox)

<# 1.9    Junkware Removal Tool Check Box #>
$JunkwareRemovalToolCheckBox = New-Object system.windows.Forms.CheckBox
$JunkwareRemovalToolCheckBox.Text = "Install Junkware Removal Tool"
$JunkwareRemovalToolCheckBox.AutoSize = $true
$JunkwareRemovalToolCheckBox.Width = 95
$JunkwareRemovalToolCheckBox.Height = 20
$JunkwareRemovalToolCheckBox.location = new-object system.drawing.point(40,218)
$JunkwareRemovalToolCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($JunkwareRemovalToolCheckBox)

<# 1.10    Ad Blockers Check Box #>
$AdBlockersCheckBox = New-Object system.windows.Forms.CheckBox
$AdBlockersCheckBox.Text = "Install ad blockers"
$AdBlockersCheckBox.AutoSize = $true
$AdBlockersCheckBox.Width = 95
$AdBlockersCheckBox.Height = 20
$AdBlockersCheckBox.location = new-object system.drawing.point(40,240)
$AdBlockersCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($AdBlockersCheckBox)

<# 1.11    Spybot Check Box #>
$SpybotCheckBox = New-Object system.windows.Forms.CheckBox
$SpybotCheckBox.Text = "Install Spybot Search and Destroy"
$SpybotCheckBox.AutoSize = $true
$SpybotCheckBox.Width = 95
$SpybotCheckBox.Height = 20
$SpybotCheckBox.location = new-object system.drawing.point(40,262)
$SpybotCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($SpybotCheckBox)

<# 1.12    Avast Check Box #>
$AvastCheckBox = New-Object system.windows.Forms.CheckBox
$AvastCheckBox.Text = "Install Avast"
$AvastCheckBox.AutoSize = $true
$AvastCheckBox.Width = 95
$AvastCheckBox.Height = 20
$AvastCheckBox.location = new-object system.drawing.point(40,284)
$AvastCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($AvastCheckBox)

<# 1.13    ESET Check Box #>
$ESETCheckBox = New-Object system.windows.Forms.CheckBox
$ESETCheckBox.Text = "Install ESET NOD32 Anti-Virus"
$ESETCheckBox.AutoSize = $true
$ESETCheckBox.Width = 95
$ESETCheckBox.Height = 20
$ESETCheckBox.location = new-object system.drawing.point(40,306)
$ESETCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($ESETCheckBox)

<# 1.14    Defrag Check Box #>
$DefragCheckBox = New-Object system.windows.Forms.CheckBox
$DefragCheckBox.Text = "Install Auslogics Disk Defrag"
$DefragCheckBox.AutoSize = $true
$DefragCheckBox.Width = 95
$DefragCheckBox.Height = 20
$DefragCheckBox.location = new-object system.drawing.point(40,328)
$DefragCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($DefragCheckBox)

<# 1.15    Never10 Check Box #>
$Never10CheckBox = New-Object system.windows.Forms.CheckBox
$Never10CheckBox.Text = "Install Never10"
$Never10CheckBox.AutoSize = $true
$Never10CheckBox.Width = 95
$Never10CheckBox.Height = 20
$Never10CheckBox.location = new-object system.drawing.point(40,350)
$Never10CheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($Never10CheckBox)

<# 1.16    Boot Password Check Box #>
$BootPasswordCheckBox = New-Object system.windows.Forms.CheckBox
$BootPasswordCheckBox.Text = "Disable password requirement at boot"
$BootPasswordCheckBox.AutoSize = $true
$BootPasswordCheckBox.Width = 95
$BootPasswordCheckBox.Height = 20
$BootPasswordCheckBox.location = new-object system.drawing.point(40,372)
$BootPasswordCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($BootPasswordCheckBox)

<# 1.17    Wake Password Check Box #>
$WakePasswordCheckBox = New-Object system.windows.Forms.CheckBox
$WakePasswordCheckBox.Text = "Disable password requirement at wake"
$WakePasswordCheckBox.AutoSize = $true
$WakePasswordCheckBox.Width = 95
$WakePasswordCheckBox.Height = 20
$WakePasswordCheckBox.location = new-object system.drawing.point(40,394)
$WakePasswordCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($WakePasswordCheckBox)

<# 1.18    Aero Check Box #>
$AeroCheckBox = New-Object system.windows.Forms.CheckBox
$AeroCheckBox.Text = "Disable Aero theme (Vista, 7, and 8)"
$AeroCheckBox.AutoSize = $true
$AeroCheckBox.Width = 95
$AeroCheckBox.Height = 20
$AeroCheckBox.location = new-object system.drawing.point(40,416)
$AeroCheckBox.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($AeroCheckBox)

<# 1.19    Clean Button #>
$CleanButton = New-Object system.windows.Forms.Button
$CleanButton.Text = "Remove temporary installation files"
$CleanButton.Width = 212
$CleanButton.Height = 40
$CleanButton.location = new-object system.drawing.point(25,475)
$CleanButton.Font = "Microsoft Sans Serif,10"
$CleanButton.Add_Click({ClickCleanButton})
$MainWindow.controls.Add($CleanButton)

<# 1.20    Build Button #>
$BuildButton = New-Object system.windows.Forms.Button
$BuildButton.Text = "Build system with selected configuration"
$BuildButton.Width = 243
$BuildButton.Height = 40
$BuildButton.location = new-object system.drawing.point(262,475)
$BuildButton.Font = "Microsoft Sans Serif,10"
$BuildButton.Add_Click({ClickBuildButton})
$MainWindow.controls.Add($BuildButton)

<# 1.21    Copyright Label #>
$CopyrightLabel = New-Object system.windows.Forms.Label
$CopyrightLabel.Text = "© 2016 - 2017 Justin Muniz "
$CopyrightLabel.AutoSize = $true
$CopyrightLabel.Width = 25
$CopyrightLabel.Height = 10
$CopyrightLabel.location = new-object system.drawing.point(172,526)
$CopyrightLabel.Font = "Microsoft Sans Serif,10"
$MainWindow.controls.Add($CopyrightLabel)


<#######################
2.0    Event Subroutines
#######################>

<# 2.1    Click the Clean Button #>
function ClickCleanButton
{
<#####################################################################
    TODO: Ninite, ad blockers
######################################################################>
    Remove-Item $env:USERPROFILE"\Downloads\flashplayer22_xa_install.exe"
    Remove-Item $env:USERPROFILE"\Downloads\readerdc_en_xa_install.exe"
    Remove-Item $env:USERPROFILE"\Downloads\ccsetup520.exe"
    Remove-Item $env:USERPROFILE"\Downloads\spybot.exe"
    Remove-Item $env:USERPROFILE"\Downloads\avast.exe"
    Remove-Item $env:USERPROFILE"\Downloads\eset_nod32_antivirus_live_installer.exe"
    Remove-Item $env:USERPROFILE"\Downloads\disk-defrag-setup.exe"
    Remove-Item $env:USERPROFILE"\Downloads\never10.exe"
    [Windows.Forms.MessageBox]::Show(“All temporary install files have been removed.”, “Success!”,[Windows.Forms.MessageBoxButtons]::OK, [Windows.Forms.MessageBoxIcon]::Information)
}

<# 2.2    Click the Build Button #>
function ClickBuildButton
{
    If ($NiniteCheckBox.Checked -eq $true) {NiniteSubroutine}
    If ($SimpleHelpCheckBox.Checked -eq $true) {SimpleHelpSubroutine}
    If ($FlashPlayerCheckBox.Checked -eq $true) {FlashPlayerSubroutine}
    If ($AcrobatReaderCheckBox.Checked -eq $true) {AcrobateReaderSubroutine}
    If ($CCleanerCheckBox.Checked -eq $true) {CCleanerSubroutine}
    If ($JunkwareRemovalToolCheckBox.Checked -eq $true) {JunkwareRemovalToolSubroutine}
    If ($AdBlockersCheckBox.Checked -eq $true) {AdBlockersSubroutine}
    If ($SpybotCheckBox.Checked -eq $true) {SpybotSubroutine}
    If ($AvastCheckBox.Checked -eq $true) {AvastSubroutine}
    If ($ESETCheckBox.Checked -eq $true) {ESETSubroutine}
    If ($DefragCheckBox.Checked -eq $true) {DefragSubroutine}
    If ($Never10CheckBox.Checked -eq $true) {Never10Subroutine}
    If ($BootPasswordCheckBox.Checked -eq $true) {BootPasswordSubroutine}
    If ($WakePasswordCheckBox.Checked -eq $true) {WakePasswordSubroutine}
    If ($AeroCheckBox.Checked -eq $true) {AeroSubroutine}
    $MainWindow.Dispose()
}

<# 2.3    Ninite Installation #>
function NiniteSubroutine
{
<#####################################################################
    TODO: Design the ability to detect versions of windows   
######################################################################>
}

<# 2.4    Simple Help Installation #>
function SimpleHelpSubroutine
{
    Start-BitsTransfer "http://macrevival.noip.me/customer/Remote%20Support-windows32-offline.exe?language=en&hostname=http%3A%2F%2Fmacrevival.noip.me&ie=ie.exe" $env:USERPROFILE"\Desktop\MacRevival Simple Help.exe"
}

<# 2.5    Flash Player Installation #>
function FlashPlayerSubroutine
{
    Start-BitsTransfer "https://admdownload.adobe.com/bin/live/flashplayer22_xa_install.exe" $env:USERPROFILE"\Downloads\flashplayer22_xa_install.exe"
    Start-Process $env:USERPROFILE"\Downloads\flashplayer22_xa_install.exe" -NoNewWindow -Wait
}

<# 2.6    Acrobat Reader Installation #>
function AcrobatReaderSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "https://admdownload.adobe.com/bin/live/readerdc_en_xa_install.exe" $env:USERPROFILE"\Downloads\readerdc_en_xa_install.exe"
    Start-Process $env:USERPROFILE"\Downloads\readerdc_en_xa_install.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\readerdc_en_xa_install.exe"
}

<# 2.3    CCleaner Installation #>
function CCleanerSubroutine
{
<#####################################################################
    TODO: Test    
    TODO: Find permanent link
######################################################################>
    Start-BitsTransfer "http://download.piriform.com/ccsetup520.exe" $env:USERPROFILE"\Downloads\ccsetup520.exe"
    Start-Process $env:USERPROFILE"\Downloads\ccsetup520.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\ccsetup520.exe"
}

<# 2.8    Junkware Removal Tool Installation #>
function JunkwareRemovalToolSubroutine
{
    Start-BitsTransfer "http://data-cdn.mbamupdates.com/web/JRT.exe" $env:USERPROFILE"\Desktop\Junkware Removal Tool.exe"
}

<# 2.9    Ad Blocker Installation #>
function AdBlockersSubroutine
{
<#####################################################################
    TODO: Design this behavior  
######################################################################>
}

<# 2.10    Spybot Installation #>
function SpybotSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "https://ninite.com/spybot2/ninite.exe" $env:USERPROFILE"\Downloads\spybot.exe"
    Start-Process $env:USERPROFILE"\Downloads\spybot.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\spybot.exe"
}

<# 2.11    Avast Installation #>
function AvastSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "https://ninite.com/avast/ninite.exe" $env:USERPROFILE"\Downloads\avast.exe"
    Start-Process $env:USERPROFILE"\Downloads\avast.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\avast.exe"
}

<# 2.12    ESET Installation #>
function ESETSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "http://download.eset.com/special/live-installer/us/eset_nod32_antivirus_live_installer.exe" $env:USERPROFILE"\Downloads\eset_nod32_antivirus_live_installer.exe"
    Start-Process $env:USERPROFILE"\Downloads\eset_nod32_antivirus_live_installer.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\eset_nod32_antivirus_live_installer.exe"
}

<# 2.13    Defrag Installation #>
function DefragSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "https://ninite.com/auslogics/ninite.exe" $env:USERPROFILE"\Downloads\disk-defrag-setup.exe"
    Start-Process $env:USERPROFILE"\Downloads\disk-defrag-setup.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\disk-defrag-setup.exe"
}

<# 2.14    Never10 Installation #>
function Never10Subroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-BitsTransfer "https://www.grc.com/files/never10.exe" $env:USERPROFILE"\Downloads\never10.exe"
    Start-Process $env:USERPROFILE"\Downloads\never10.exe" -NoNewWindow -Wait
    Remove-Item $env:USERPROFILE"\Downloads\never10.exe"

}

<# 2.15    Show Boot Password Configuration #>
function BootPasswordSubroutine
{
    Start-Process "netplwiz.exe" -NoNewWindow -Wait
}

<# 2.16    Show Power Configuration #>
function WakePasswordSubroutine
{
<#####################################################################
    TODO: Add support for Windows 10 and automatically select for user
    TODO: Test    
######################################################################>
    Start-Process $env:WINDIR"\system32\control.exe powercfg.cpl,,3" -NoNewWindow -Wait
}

<# 2.17    Show Windows Personalization Configuration #>
function AeroSubroutine
{
<#####################################################################
    TODO: Test    
######################################################################>
    Start-Process "Control.exe /name Microsoft.Personalization" -NoNewWindow -Wait
}


<#########################
3.0    Program Entry Point
#########################>

<# 3.1    Ensure that PowerShell is Elevated #>
function Use-RunAs 
{    
    # Check if script is running as Adminstrator and if not use RunAs 
    # Use Check Switch to check if admin 
     
    param([Switch]$Check) 
     
    $IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()` 
        ).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator") 
         
    if ($Check) { return $IsAdmin }     
 
    if ($MyInvocation.ScriptName -ne "") 
    {  
        if (-not $IsAdmin)  
        {  
            try 
            {  
                $arg = "-file `"$($MyInvocation.ScriptName)`"" 
                Start-Process "$psHome\powershell.exe" -Verb Runas -ArgumentList $arg -ErrorAction 'stop'  
            } 
            catch 
            { 
                Write-Warning "Error - Failed to restart script with runas"  
                break               
            } 
            exit # Quit this session of powershell 
        }  
    }  
    else  
    {  
        Write-Warning "Error - Script must be saved as a .ps1 file first"  
        break  
    }  
} 
Use-RunAs

<# 3.2    Construction #>
[void]$MainWindow.ShowDialog() <# Build and display the main window, and handle it's events #>

<# 3.3    Deconstruction #>
$MainWindow.Dispose() <# Perform garbage collection and free memory once main window is closed #>
