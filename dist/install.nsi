;-------------------------------------------------------------------------------
; Includes
!include "MUI2.nsh"
!include "LogicLib.nsh"
!include "WinVer.nsh"
!include "x64.nsh"

;-------------------------------------------------------------------------------
; Constants
!define PRODUCT_NAME "appname"
!define PRODUCT_DESCRIPTION "appname"
!define COPYRIGHT "Copyright © 2022 username"
!define PRODUCT_VERSION "0.2.0.0"
!define SETUP_VERSION 0.2.0.0
!define MAIN_APP_EXE "appname.exe"

;-------------------------------------------------------------------------------
; Attributes
Name "appname"
OutFile "appnameSetup.exe"
InstallDir "$STARTMENU\Programs\username\appname"
RequestExecutionLevel user ; user|highest|admin

;-------------------------------------------------------------------------------
; Version Info
VIProductVersion "${PRODUCT_VERSION}"
VIAddVersionKey "ProductName" "${PRODUCT_NAME}"
VIAddVersionKey "ProductVersion" "${PRODUCT_VERSION}"
VIAddVersionKey "FileDescription" "${PRODUCT_DESCRIPTION}"
VIAddVersionKey "LegalCopyright" "${COPYRIGHT}"
VIAddVersionKey "FileVersion" "${SETUP_VERSION}"

;Icon "C:\Users\nyaa\Downloads\nova_icon.ico"

;-------------------------------------------------------------------------------
; Modern UI Appearance
;!define MUI_ICON "C:\Users\nyaa\Downloads\nova_icon.ico"
;!define MUI_HEADERIMAGE
;!define MUI_FINISHPAGE_NOAUTOCLOSE
;-------------------------------------------------------------------------------
; Installer Pages
!insertmacro MUI_PAGE_WELCOME
;!insertmacro MUI_PAGE_LICENSE "C:\Users\nyaa\OneDrive\Desktop\License.txt"
;!insertmacro MUI_PAGE_COMPONENTS
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

;-------------------------------------------------------------------------------
; Uninstaller Pages
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

;-------------------------------------------------------------------------------
; Languages
!insertmacro MUI_LANGUAGE "English"

;-------------------------------------------------------------------------------
; Installer Sections
Section "Nova" Nova
	SetOutPath $INSTDIR
    File /r "C:\Users\Rymu\OneDrive\Documents\Python\the funni\dist\appname\*"
    ;createDirectory "$SMPROGRAMS\username"
    createShortCut "$SMPROGRAMS\username\appname\appname.lnk" "$INSTDIR\appname.exe" "" 
	;WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd