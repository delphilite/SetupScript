;{ *********************************************************************** }
;{                                                                         }
;{   Embarcadero Delphi XE8 Lite 安装脚本                                  }
;{                                                                         }
;{   设计：Lsuper 2015.03.28                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2015 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   GetFileVersion("Files\Embarcadero\Studio\16.0\bin\bds.exe")
#define AppLiteVersion  "11.1"
#define AppFileNamePrex "Embarcadero.Delphi.XE8.Update1"
#define AppNamePrex     "Embarcadero Delphi XE8 Lite"

#define AppSetupID      "{80B81C89-8B6B-41A0-85BF-F96112E8B242}"
#define AppSetupMutex   "{80BE0830-EC5F-4417-8B65-6B95D9583578}"

#define xDEBUGMODE

[Setup]
AllowUNCPath=false
AppComments=All rights reserved Embarcadero
AppContact=Embarcadero Technologies, Inc.
AppCopyright=Copyright ? 1996-2015 Embarcadero Technologies, Inc.
AppID={{#AppSetupID}
AppModifyPath="{app}\UninsHs.exe" /m0={{#AppSetupID}
AppMutex={{#AppSetupMutex}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL=http://www.embarcadero.com
AppReadmeFile={app}\ReadMe.txt
AppSupportURL=http://support.embarcadero.com
AppUpdatesURL=http://www.embarcadero.com
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
ChangesEnvironment=true
DefaultDirName={pf32}\Embarcadero\Studio\16.0
DefaultGroupName=Embarcadero RAD Studio XE8
MinVersion=0,5.0.2195sp3
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayIcon={app}\Bin\bds.exe
UninstallDisplayName=Embarcadero RAD Studio XE8
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright © 1996-2015 Embarcadero Technologies, Inc.
VersionInfoDescription=Embarcadero RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\Embarcadero\Studio\16.0\radstudio_license_en.rtf
SetupIconFile=Others\Utils\Setup.ico
WizardImageFile=Others\Utils\SetupModern.bmp
WizardSmallImageFile=Others\Utils\SetupModernSmall.bmp

#ifndef DEBUGMODE

Compression=lzma2/max
SolidCompression=true

#endif

SignTool=signxe8

SignedUninstaller=true
SignedUninstallerDir=Others\Utils

[Languages]
Name: en; MessagesFile: compiler:Default.isl

Name: br; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: ca; MessagesFile: compiler:Languages\Catalan.isl
Name: chs; MessagesFile: compiler:Languages\Chinese.isl
Name: co; MessagesFile: compiler:Languages\Corsican.isl
Name: cz; MessagesFile: compiler:Languages\Czech.isl
Name: da; MessagesFile: compiler:Languages\Danish.isl
Name: nl; MessagesFile: compiler:Languages\Dutch.isl
Name: fi; MessagesFile: compiler:Languages\Finnish.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: gr; MessagesFile: compiler:Languages\Greek.isl
Name: he; MessagesFile: compiler:Languages\Hebrew.isl
Name: hu; MessagesFile: compiler:Languages\Hungarian.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: ja; MessagesFile: compiler:Languages\Japanese.isl
#ifdef UNICODE
Name: nep; MessagesFile: compiler:Languages\Nepali.islu
#endif
Name: no; MessagesFile: compiler:Languages\Norwegian.isl
Name: pl; MessagesFile: compiler:Languages\Polish.isl
Name: pt; MessagesFile: compiler:Languages\Portuguese.isl
Name: ru; MessagesFile: compiler:Languages\Russian.isl
Name: sg; MessagesFile: compiler:Languages\ScottishGaelic.isl
Name: se; MessagesFile: compiler:Languages\SerbianLatin.isl
Name: se2; MessagesFile: compiler:Languages\SerbianCyrillic.isl
Name: sl2; MessagesFile: compiler:Languages\Slovenian.isl
Name: sp; MessagesFile: compiler:Languages\Spanish.isl
Name: tu; MessagesFile: compiler:Languages\Turkish.isl
Name: uk; MessagesFile: compiler:Languages\Ukrainian.isl

[Messages]
BeveledLabel=XE8

[CustomMessages]
en.StatusInstalling=Installing %1...
en.StatusUninstalling=Uninstalling %1...
en.StatusRegister=Register %1...
en.StatusUnregister=Unregister %1...
en.StatusRunning=Running %1...
en.StatusSavingUninstall=Saving uninstall information...
en.AdditionalOptions=Additional options:
en.AdditionalFiles=Additional files:
en.IncludeFile=Include %1
en.AddEnvironment=Add %1 PATH environment variable

chs.StatusInstalling=正在安装 %1...
chs.StatusUninstalling=正在卸载 %1...
chs.StatusRegister=正在注册 %1...
chs.StatusUnregister=正在反注册 %1...
chs.StatusRunning=正在执行 %1...
chs.StatusSavingUninstall=正在保存卸载信息...
chs.AdditionalOptions=附加选项:
chs.AdditionalFiles=附加文件:
chs.IncludeFile=整合 %1
chs.AddEnvironment=添加 %1 到 PATH 环境变量

[Types]
Name: LITE; Description: Lite installation
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: Delphi Core Files; Types: FULL LITE CUSTOM; Flags: checkablealone fixed
Name: CORE\PATCH; Description: Unis's Keymaker v1.9; Types: FULL LITE CUSTOM

Name: PLATFORM; Description: Platform Development; Types: LITE FULL
Name: PLATFORM\X64; Description: Windows 64-Bit; Types: LITE FULL; ExtraDiskSpaceRequired: 1395238402
Name: PLATFORM\OSX; Description: OS X; Types: LITE FULL; ExtraDiskSpaceRequired: 738539050

Name: MOBILE; Description: Mobile Development; Types: LITE FULL
Name: MOBILE\ANDSDK; Description: Android Development SDK/NDK; Types: LITE FULL; ExtraDiskSpaceRequired: 1630238376
Name: MOBILE\ANDROID; Description: Android Development Platform; Types: LITE FULL; ExtraDiskSpaceRequired: 3239784720
Name: MOBILE\IOS; Description: iOS Development Platform; Types: LITE FULL; ExtraDiskSpaceRequired: 6005435055

Name: HELP; Description: Help Files; Types: FULL; ExtraDiskSpaceRequired: 305632783

Name: EXPERTS; Description: Delphi Experts; Types: FULL
Name: EXPERTS\BEYOND; Description: Beyond Compare IDE Package; Types: FULL
Name: EXPERTS\CASTALIA; Description: Castalia IDE Expert; Types: FULL
Name: EXPERTS\COMTOOLBAR; Description: Enable Community Toolbar; Types: FULL
Name: EXPERTS\THEME; Description: Enable IDE Modern Theme; Types: FULL
Name: EXPERTS\TOGETHER; Description: Together Modeling Integration (Code Formatter, etc); Types: FULL

Name: FDAC; Description: FireDAC; Types: LITE FULL
Name: FMX; Description: FireMonkey; Types: LITE FULL
;Name: DATABASE; Description: Database Features; Types: FULL
;Name: INTERBASEEXP; Description: InterBase Express; Types: FULL

Name: EXTRA; Description: Delphi Extra Files; Types: FULL
Name: EXTRA\SAMPLE; Description: Sample Applications; Types: FULL; ExtraDiskSpaceRequired: 447811016
Name: EXTRA\SUPPORT; Description: Images, PAServer; Types: FULL; ExtraDiskSpaceRequired: 167899151
Name: EXTRA\3TH; Description: 3th Files; Types: FULL; ExtraDiskSpaceRequired: 6225657

Name: ADDONS; Description: ThirdParty Addons; Types: FULL
Name: ADDONS\CODESITE; Description: CodeSite Express; Types: FULL; ExtraDiskSpaceRequired: 42719586
Name: ADDONS\FASTREPORT; Description: FastReport; Types: FULL; ExtraDiskSpaceRequired: 77282082
Name: ADDONS\INTERBASE; Description: InterBase XE7; Types: FULL; ExtraDiskSpaceRequired: 71087378

Name: ASSOC; Description: Delphi File Associations; Types: FULL; Flags: DisableNoUninstallWarning
Name: ASSOC\DPROJ; Description: .dproj; Types: FULL
Name: ASSOC\GROUPPROJ; Description: .groupproj; Types: FULL
Name: ASSOC\BDSDEPLOY; Description: .bdsdeploy; Types: FULL
Name: ASSOC\BDSGROUP; Description: .bdsgroup; Types: FULL
Name: ASSOC\BDSPROJ; Description: .bdsproj; Types: FULL
Name: ASSOC\CONFIG; Description: .config; Types: FULL
Name: ASSOC\DFM; Description: .dfm; Types: FULL
Name: ASSOC\DPK; Description: .dpk; Types: FULL
Name: ASSOC\DPKW; Description: .dpkw; Types: FULL
Name: ASSOC\DPR; Description: .dpr; Types: FULL
Name: ASSOC\FMX; Description: .fmx; Types: FULL
Name: ASSOC\PAS; Description: .pas; Types: FULL

[Tasks]
Name: ICON;   Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalOptions}
Name: QUICK;  Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked; OnlyBelowVersion: 5.0,6.1
Name: ENVBIN; Description: {cm:AddEnvironment,Bin}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked
Name: ENVBPL; Description: {cm:AddEnvironment,Bpl}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked

[InstallDelete]
Type: files; Name: {app}\radstudio_install_en.html

[UninstallDelete]
Type: filesandordirs; Name: {app}\bin
Type: filesandordirs; Name: {app}\bin64
Type: filesandordirs; Name: {app}\binosx32
Type: filesandordirs; Name: {app}\Help
Type: filesandordirs; Name: {app}\Images
Type: filesandordirs; Name: {app}\lib
Type: filesandordirs; Name: {app}\License
Type: filesandordirs; Name: {app}\PlatformSDKs
Type: filesandordirs; Name: {app}\PremiumStylePack
Type: filesandordirs; Name: {app}\PAServer
Type: filesandordirs; Name: {app}\Redist
Type: filesandordirs; Name: {app}\Samples

[Dirs]
Name: {app}\License; Permissions: users-modify
Name: {userappdata}\Embarcadero\BDS\16.0

[Files]
;7Zip
Source: Others\Include\CallbackCtrl.dll; DestDir: {tmp}; Flags: dontcopy
Source: Others\Include\InnoHelper.dll; DestDir: {tmp}; Flags: dontcopy
Source: Others\Include\Un7z.dll; DestDir: {tmp}; Flags: dontcopy
Source: Others\Include\Un7z.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion

;.NET framework
Source: {code:GetNetFx20SetupFile}; Flags: external dontcopy; Check: not IsFramework20Installed
;JDK
Source: {code:GetJdkSetupFile}; Flags: external dontcopy; Check: not IsJavaDevelopmentKitInstalled

;Main
#ifndef DEBUGMODE
Source: Files\Embarcadero\Studio\16.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
#endif
#ifdef  DEBUGMODE
Source: Files\Embarcadero\Studio\16.0.DEBUG\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
#endif

#ifndef DEBUGMODE

;Files
Source: Files\Application Data\Embarcadero\*; DestDir: {commonappdata}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Embarcadero\*; DestDir: {cf32}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Documents\Embarcadero\*; DestDir: {commondocs}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

;Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt

;Fonts
Source: Others\Fonts\Roboto-Black.ttf; DestDir: {fonts}; FontInstall: "Roboto Black"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-BlackItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Black Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Bold.ttf; DestDir: {fonts}; FontInstall: "Roboto Bold"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-BoldCondensed.ttf; DestDir: {fonts}; FontInstall: "Roboto Bold Condensed"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-BoldCondensedItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Bold Condensed Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-BoldItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Bold Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Condensed.ttf; DestDir: {fonts}; FontInstall: "Roboto Condensed"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-CondensedItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Condensed Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Italic.ttf; DestDir: {fonts}; FontInstall: "Roboto Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Light.ttf; DestDir: {fonts}; FontInstall: "Roboto Light"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-LightItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Light Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Medium.ttf; DestDir: {fonts}; FontInstall: "Roboto Medium"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-MediumItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Medium Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Regular.ttf; DestDir: {fonts}; FontInstall: "Roboto Regular"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-Thin.ttf; DestDir: {fonts}; FontInstall: "Roboto Thin"; Flags: onlyifdoesntexist uninsneveruninstall
Source: Others\Fonts\Roboto-ThinItalic.ttf; DestDir: {fonts}; FontInstall: "Roboto Thin Italic"; Flags: onlyifdoesntexist uninsneveruninstall

#endif 

;.NET framework 3.5
Source: Others\v3.5\*; DestDir: {win}\Microsoft.NET\Framework\v3.5; Flags: sortfilesbyextension; Check: not IsFramework35Installed
;Keygen
Source: Others\Keygen\*; DestDir: {app}\Keygen; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: CORE\PATCH
;Samples URL
Source: Others\Samples\*; DestDir: {app}\Samples; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: not EXTRA\SAMPLE
;InterBase Install config file
Source: Others\Utils\values.txt; DestDir: {app}\InterBaseXE7; Flags: deleteafterinstall ignoreversion sortfilesbyextension; Components: ADDONS\INTERBASE
;Ico
Source: Others\Utils\Android Tools.ico; DestDir: {app}; Flags: ignoreversion sortfilesbyextension
;Tools
Source: Others\Utils\GacUtil.*; DestDir: {win}\Microsoft.NET\Framework\v2.0.50727; Flags: ignoreversion sortfilesbyextension
Source: Others\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Others\Utils\UninsHs.exe; DestDir: {app}; Flags: ignoreversion sortfilesbyextension
Source: Others\Utils\BorCreateUDL.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension
Source: Others\Utils\SetACL.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension
Source: Others\Utils\vjredist.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension; Check: not IsVisualJSharpInstalled
;DirectX
Source: Others\DirectX\*; DestDir: {tmp}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Check: not IsDirectXInstalled

;Ext 7z
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileBegin
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.X64.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.OSX.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.SDK.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.Android.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.IOS.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.Help.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.Samples.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.Support.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.Addons.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileInstall('Ext.3th.7z')
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExtractFileEnd

Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExecuteInstallNetFx20(); Check: not IsFramework20Installed
Source: Others\Ext\*; DestDir: {app}; Flags: onlyifdoesntexist; AfterInstall: ExecuteInstallJdk(); Check: not IsJavaDevelopmentKitInstalled; Components: MOBILE\ANDROID or MOBILE\ANDSDK

[Icons]
Name: {group}\Android AVD Manager; Filename: {code:GetAdtDir}\tools\android.bat; IconFilename: {app}\Android Tools.ico; WorkingDir: {code:GetAdtDir}\tools; Parameters: avd; Components: MOBILE\ANDROID
Name: {group}\Android Tools; Filename: {code:GetAdtDir}\tools\android.bat; IconFilename: {app}\Android Tools.ico; WorkingDir: {code:GetAdtDir}\tools; Components: MOBILE\ANDROID
Name: {group}\Beyond Compare; Filename: {app}\bin\BCompareLite.exe; WorkingDir: {app}\bin; Components: EXPERTS\BEYOND
Name: {group}\Delphi XE8; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE8 Program
;Name: {group}\Embarcadero RAD Studio XE8; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Comment: This will run the Embarcadero RAD Studio XE8 Program
Name: {group}\License Manager; Filename: {app}\bin\LicenseManager.exe; WorkingDir: {app}\bin; Parameters: ; Comment: This will run the License Manager Program
Name: {group}\RAD Studio Documentation; Filename: {app}\Help\Doc\topics.chm; Comment: Opens Embarcadero RAD Studio XE8 Documentation; Components: HELP
Name: {group}\RAD Studio Command Prompt; Filename: %comspec%; WorkingDir: {app}\bin; Parameters: "/K ""{app}\bin\rsvars.bat"""; Comment: Open RAD Studio Command Prompt
Name: {group}\Samples; Filename: {app}\Samples; WorkingDir: {app}\Samples
Name: {group}\XML Mapper; Filename: {app}\bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: Run the XML Mapper tool
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{#AppSetupID}; Comment: Removes this Embarcadero product
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Uninstall this Embarcadero product

Name: {userdesktop}\Delphi XE8; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE8 Program

Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Delphi XE8; Filename: {app}\bin\bds.exe; Parameters: -pDelphi; Tasks: QUICK; OnlyBelowVersion: 5.0,6.1

[Run]
Filename: {tmp}\dxsetup.exe; WorkingDir: {src}; Parameters: /silent; StatusMsg: {cm:StatusInstalling,DirectX}; Check: not IsDirectXInstalled
Filename: {tmp}\vjredist.exe; WorkingDir: {src}; Parameters: "/Q /C:""install.exe /q"""; StatusMsg: {cm:StatusInstalling,Microsoft Visual J Sharp 2.0 Redistributable Package}; Check: not IsVisualJSharpInstalled

Filename: {tmp}\SetACL.exe; WorkingDir: {tmp}; Parameters: "-on ""{app}\Samples"" -ot file -actn ace -ace ""n:S-1-5-32-545;p:full;s:y;i:sc,so"""; StatusMsg: {cm:StatusRunning,SetACL Samples}; Flags: runminimized
Filename: {tmp}\SetACL.exe; WorkingDir: {tmp}; Parameters: "-on ""{commonappdata}\Embarcadero"" -ot file -actn ace -ace ""n:S-1-5-32-545;p:full;s:y;i:sc,so"""; StatusMsg: {cm:StatusRunning,SetACL Embarcadero}; Flags: runminimized

Filename: {tmp}\BorCreateUDL.exe; WorkingDir: {tmp}; Parameters: """{cf32}\System\ole db\Data Links\DBDEMOS.udl"" ""Microsoft.Jet.OLEDB.4.0"" ""{app}\Samples\Data\dbdemos.mdb"""; StatusMsg: {cm:StatusRunning,BorCreateUDL}; Flags: runminimized
Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{#AppSetupID},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\Keygen\Activator.exe; WorkingDir: {app}\Keygen; Parameters: -process; StatusMsg: {cm:StatusRunning,Embarcadero Delphi XE8 Activator}; Flags: runminimized; Components: CORE\PATCH

;Filename: {sys}\cmd.exe; WorkingDir: {code:GetAdtDir}\tools\; Parameters: "/c echo no | android.bat -s create avd -n rsxe8_android -t 1 -f"; StatusMsg: {cm:StatusRunning,Create AVD...}; Flags: runminimized; Components: MOBILE\ANDROID
;Filename: {sys}\cmd.exe; WorkingDir: {code:GetAdtDir}\tools\; Parameters: "/c emulator.exe -avd rsxe8_android -gpu on -no-window"; StatusMsg: {cm:StatusRunning,Config AVD...}; Flags: runminimized; Components: MOBILE\ANDROID

Filename: {src}\Addons\CS5_Express_RS.exe; WorkingDir: {src}; Parameters: " /VERYSILENT"; StatusMsg: {cm:StatusInstalling,CodeSite Express}; Flags: skipifdoesntexist; Components: ADDONS\CODESITE
Filename: {src}\Addons\FastReport4VCL.exe; WorkingDir: {src}; Parameters: "/S /var:InstallPath=""{pf32}\FastReports"""; StatusMsg: {cm:StatusInstalling,FastReport}; Flags: skipifdoesntexist; Components: ADDONS\FASTREPORT
Filename: {src}\Addons\ib_install.exe; WorkingDir: {src}; Parameters: " /s /m=""{app}\InterBaseXE7\values.txt"""; StatusMsg: {cm:StatusInstalling,InterBase XE7}; Flags: skipifdoesntexist; Components: ADDONS\INTERBASE

Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Description: {cm:LaunchProgram,Embarcadero Delphi XE8}; Flags: nowait postinstall

[UninstallRun]
Filename: {sys}\TaskKill.exe; WorkingDir: {sys}; Parameters: " /f /im adb.exe"; Flags: nowait runminimized

[Registry]
Root: HKLM; Subkey: SOFTWARE\Classes\.BDSDEPLOY; ValueType: string; ValueData: "BDS.BDSDEPLOYFile"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1700"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile; ValueType: string; ValueData: "BDS Deploy File"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\deployide220.bpl"",0"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.BDSDEPLOYFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\BDSDEPLOY
Root: HKLM; Subkey: SOFTWARE\Classes\.BDSGROUP; ValueType: string; ValueData: "BDS.ProjectGroup"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1713"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup; ValueType: string; ValueData: "Embarcadero RAD Studio Project Group"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectGroup\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\BDSGROUP
Root: HKLM; Subkey: SOFTWARE\Classes\.BDSPROJ; ValueType: string; ValueData: "BDS.ProjectFile"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1711"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile; ValueType: string; ValueData: "Embarcadero RAD Studio Project File"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\bds.exe"",1"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ProjectFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\BDSPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\.CONFIG; ValueType: string; ValueData: "BDS.ConfigFile"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1702"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile; ValueType: string; ValueData: "Embarcadero RAD Studio Config File"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\dotnetaspide220.bpl"",6"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.ConfigFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\CONFIG
Root: HKLM; Subkey: SOFTWARE\Classes\.DFM; ValueType: string; ValueData: "BDS.DfmFile"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1706"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile; ValueType: string; ValueData: "Delphi Form"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",1"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DfmFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\DFM
Root: HKLM; Subkey: SOFTWARE\Classes\.DPK; ValueType: string; ValueData: "BDS.DpkFile"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1707"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile; ValueType: string; ValueData: "Delphi Package"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",2"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\DPK
Root: HKLM; Subkey: SOFTWARE\Classes\.DPKW; ValueType: string; ValueData: "BDS.DpkwFile"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1707"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile; ValueType: string; ValueData: "Delphi Package"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",2"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DpkwFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\DPKW
Root: HKLM; Subkey: SOFTWARE\Classes\.DPR; ValueType: string; ValueData: "BDS.DprFile"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1709"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile; ValueType: string; ValueData: "Delphi Project File"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",3"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DprFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\DPR
Root: HKLM; Subkey: SOFTWARE\Classes\.DPROJ; ValueType: string; ValueData: "BDS.DProjFile"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1709"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile; ValueType: string; ValueData: "Delphi Project File"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",3"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.DProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\DPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\.FMX; ValueType: string; ValueData: "BDS.FmxFile"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1717"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile; ValueType: string; ValueData: "FireMonkey Form"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",4"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.FmxFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\FMX
Root: HKLM; Subkey: SOFTWARE\Classes\.GROUPPROJ; ValueType: string; ValueData: "BDS.GroupProjFile"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1713"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile; ValueType: string; ValueData: "Embarcadero RAD Studio Project Group"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.GroupProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\GROUPPROJ
Root: HKLM; Subkey: SOFTWARE\Classes\.PAS; ValueType: string; ValueData: "BDS.PasFile"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile; ValueType: expandsz; ValueName: "FriendlyTypeName"; ValueData: "@%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1710"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile; ValueType: string; ValueData: "Delphi Source File"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile\DefaultIcon; ValueType: string; ValueData: """{app}\Bin\delphicoreide220.bpl"",6"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile\Shell\Open\Command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile\Shell\Open\ddeexec\application; ValueType: string; ValueData: "bdslauncher"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\BDS.PasFile\Shell\Open\ddeexec\topic; ValueType: string; ValueData: "system"; Components: ASSOC\PAS
Root: HKLM; Subkey: SOFTWARE\Classes\Applications\bdsLauncher.exe\shell\open; ValueType: string; ValueName: "FriendlyName"; ValueData: "Embarcadero RAD Studio XE8"
Root: HKLM; Subkey: SOFTWARE\Classes\Applications\bdsLauncher.exe\shell\open\command; ValueType: string; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"
Root: HKLM; Subkey: SOFTWARE\Classes\Applications\bdsLauncher.exe\shell\open\command\ddeexec; ValueType: string; ValueData: "[open(""%1"")]"
Root: HKLM; Subkey: SOFTWARE\Classes\Applications\bdsLauncher.exe\shell\open\command\ddeexec\application; ValueType: string; ValueData: "bdslauncher"
Root: HKLM; Subkey: SOFTWARE\Classes\Applications\bdsLauncher.exe\shell\open\command\ddeexec\topic; ValueType: string; ValueData: "system"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "AndroidPath"; ValueData: "{code:GetAdtDir}"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "App"; ValueData: "{app}\bin\bds.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "Edition"; ValueData: "Architect"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "InstallLanguage"; ValueData: "English"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "ProductVersion"; ValueData: "22"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "RegCompany"; ValueData: "{computername}"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "RegMergeTimeStamp"; ValueData: "{code:GetRegMergeTimeStamp}"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "RegOwner"; ValueData: "{username}"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "RootDir"; ValueData: "{app}\"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0; ValueType: string; ValueName: "UseSharedFiles"; ValueData: "TRUE"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ActiveX Controls; ValueType: string; ValueName: "PalettePage"; ValueData: "ActiveX"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ActiveX Controls; ValueType: string; ValueName: "UnitDirName"; ValueData: "$(BDSUSERDIR)\Imports"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\DBExpress; ValueType: string; ValueName: "Connection Registry File"; ValueData: "{commondocs}\Embarcadero\Studio\dbExpress\16.0\dbxconnections.ini"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\DBExpress; ValueType: string; ValueName: "DLLPATH"; ValueData: "{commondocs}\Embarcadero\Studio\dbExpress\16.0"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\DBExpress; ValueType: string; ValueName: "Driver Registry File"; ValueData: "{commondocs}\Embarcadero\Studio\dbExpress\16.0\dbxdrivers.ini"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueData: "dcc32220.dll"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueName: "dcc32220.dll"; ValueData: "0"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Disabled Packages; ValueType: string; ValueName: "$(BDS)\bin\dcloffice2k220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Disabled Packages; ValueType: string; ValueName: "$(BDS)\bin\dclofficexp220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\DotNetFramework; ValueType: string; ValueName: "AssemblyLinker"; ValueData: "{win}\Microsoft.NET\Framework\v2.0.50727\al.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Environment Variables; ValueType: string; ValueName: "DEMOSDIR"; ValueData: "{app}\Samples\"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Environment Variables; ValueType: string; ValueName: "IBREDISTDIR"; ValueData: "{commondocs}\Embarcadero\InterBase\redist\InterBaseXE7"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Environment Variables; ValueType: string; ValueName: "Path"; ValueData: "{commondocs}\Embarcadero\InterBase\redist\InterBaseXE7\IDE_spoof;$(PATH)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Environment Variables; ValueType: string; ValueName: "PLATFORM"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Experts; ValueType: string; ValueName: "Beyond Compare IDE Package"; ValueData: "$(BDS)\Bin\Scooter.BeyondCompare.Expert.dll"; Components: EXPERTS\BEYOND
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Globals; ValueType: string; ValueName: "AlwaysCheckPathOnStartup"; ValueData: "0"; Check: not IsTaskSelected('ENVBPL')
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Globals; ValueType: string; ValueName: "InstalledDemosDir"; ValueData: "{app}\Samples\"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Globals; ValueType: string; ValueName: "TargetLocation"; ValueData: "$(MSBuildBinPath)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "Dinkumware Help"; ValueData: "{app}\help\Doc\dinkumware.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE Code Examples Help"; ValueData: "{app}\help\Doc\codeexamples.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE Data Help"; ValueData: "{app}\help\Doc\data.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE FireMonkey Help"; ValueData: "{app}\help\Doc\fmx.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE Libraries Help"; ValueData: "{app}\help\Doc\libraries.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE System Help"; ValueData: "{app}\help\Doc\system.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE Topics Help"; ValueData: "{app}\help\Doc\topics.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "IDE Vcl Help"; ValueData: "{app}\help\Doc\vcl.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "Indy Help"; ValueData: "{app}\help\Doc\Indy10.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Help\HtmlHelp1Files; ValueType: string; ValueName: "TeeChart Help"; ValueData: "{app}\help\Doc\teechart.chm"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\InstalledUpdates; ValueType: string; ValueName: "Main Product Update"; ValueData: "Delphi XE8 and C++Builder XE8 Subscription Update 1"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\InterBase; ValueType: string; ValueName: "IBRedist"; ValueData: "{commondocs}\Embarcadero\InterBase\redist\InterBaseXE7"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Appmethod Packages; ValueType: string; ValueName: "$(BDS)\Bin\DUnitXIDEExpert220.bpl"; ValueData: "Embarcadero DUnitX Test Framework"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\androiddebugide220.bpl"; ValueData: "(Untitled)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\asmview220.bpl"; ValueData: "Assembly Browser Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\Castalia220.bpl"; ValueData: "Castalia"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\codetemplates220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\comcore220.bpl"; ValueData: "HtmlHelp Viewer"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\CommunityToolbar220.bpl"; ValueData: "Embarcadero Community Toolbar"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\comptoolbar220.bpl"; ValueData: "Component Toolbar Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\coreproide220.bpl"; ValueData: "Core IDE Pro Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerIDE220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\dbkdebugide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\dbkdebugproide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\delphiandroid32220.bpl"; ValueData: "Delphi Android Platform"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\delphiios32220.bpl"; ValueData: "Delphi iOS Platform"; Components: MOBILE\IOS
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\delphiosx32220.bpl"; ValueData: "Delphi OSX32 Platform"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\delphiwin32220.bpl"; ValueData: "Delphi Win32 Platform"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\delphiwin64220.bpl"; ValueData: "Delphi Win64 Platform"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\DeviceManager220.bpl"; ValueData: "Embarcadero Mobile Device Manager Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\dotnetcoreide220.bpl"; ValueData: ".NET Core IDE Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\exceptiondiag220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\fileexplorer220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\gdbdebugcore220.bpl"; ValueData: "(Untitled)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\gdbdebugide220.bpl"; ValueData: "(Untitled)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\GetIt220.bpl"; ValueData: "Embarcadero GetIt Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\GuidedTour220.bpl"; ValueData: "Embarcadero Guided Tour Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\historyide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\htmide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\htmlhelp1220.bpl"; ValueData: "HtmlHelp Viewer"; Components: HELP
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\idefilefilters220.bpl"; ValueData: "IDE File filters"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\ios32debugide220.bpl"; ValueData: "(Untitled)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\ios64debugide220.bpl"; ValueData: "(Untitled)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\iteidew32220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\macosxdebugide220.bpl"; ValueData: "(Untitled)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\mlcc220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\ModernTheme220.bpl"; ValueData: "Embarcadero Theme Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\MultidevicePreview220.bpl"; ValueData: "Embarcadero Multi-Device Preview package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\plugview220.bpl"; ValueData: "Pluggable Tree View Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\profiledeployide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\profilemgride220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\projecttargets220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\projpageide220.bpl"; ValueData: "Project and template library package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\refactoride220.bpl"; ValueData: "Core Refactoring Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\sdkmgride220.bpl"; ValueData: "Embarcadero SDK Manager"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\startpageide220.bpl"; ValueData: "Start Page IDE Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\tgide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\tlbview220.bpl"; ValueData: "TypeLibrary Browser Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\bin\todoide220.bpl"; ValueData: "ToDo"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\TrackingSystem220.bpl"; ValueData: "Embarcadero Tracking System Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\unittestide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\vclmenudesigner220.bpl"; ValueData: ".NET Core IDE Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\VisualizationServiceIDE220.bpl"; ValueData: "Visualization IDE Service Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\win64debugide220.bpl"; ValueData: "(Untitled)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphicoment220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphicompro220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphicoreproide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphide220.bpl"; ValueData: "Delphi Win32 IDE Personality"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphierrorinsite220.bpl"; ValueData: "Delphi Error Insite Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphifmxide220.bpl"; ValueData: "Embarcadero FMX Designer IDE Package"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphifmxmobile220.bpl"; ValueData: "Delphi FMX Mobile Designer IDE Package"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphipro220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\delphivclide220.bpl"; ValueData: "Delphi VCL Designer IDE Package"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\win32debugide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages\Delphi; ValueType: string; ValueName: "$(BDS)\Bin\win32debugproide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\applet220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerDBXPlugin220.bpl"; ValueData: "CodeGear DBX Common Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerDBXPluginEnt220.bpl"; ValueData: "Embarcadero DBX Enterprise Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerDBXPluginInt220.bpl"; ValueData: "Embarcadero DBX Interbase Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerFireDACPlugin220.bpl"; ValueData: "Embarcadero FireDAC Data Explorer Integration"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DataExplorerService220.bpl"; ValueData: "CodeGear DBX Common Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dcl31w220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclact220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclado220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclappanalytics220.bpl"; ValueData: "Usertility Components for VCL"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclbindcomp220.bpl"; ValueData: "Embarcadero Databinding Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclbindcompdbx220.bpl"; ValueData: "Embarcadero DBX Databinding Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclBindCompFireDAC220.bpl"; ValueData: "Embarcadero FireDAC LiveBindings Designer"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclbindcompfmx220.bpl"; ValueData: "Embarcadero Databinding Components"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclbindcompvcl220.bpl"; ValueData: "Embarcadero Databinding Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclCloudService220.bpl"; ValueData: "Embarcadero Cloud management components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapClient220.bpl"; ValueData: "Embarcadero DataSnap Client Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapConnectors220.bpl"; ValueData: "Embarcadero DataSnap Connector Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapFireDAC220.bpl"; ValueData: "Embarcadero DataSnap Client Components for Win32"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapIndy10ServerTransport220.bpl"; ValueData: "Embarcadero DataSnap Server Transport Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapNativeClient220.bpl"; ValueData: "Embarcadero Soap Design Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapNativeServer220.bpl"; ValueData: "Embarcadero DataSnap Server Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapProviderClient220.bpl"; ValueData: "Embarcadero DataSnap Provider Client Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapServer220.bpl"; ValueData: "Embarcadero DataSnap Server Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDataSnapWebBrokerServer220.bpl"; ValueData: "Embarcadero DataSnap Server Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dcldb220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dcldbx220.bpl"; ValueData: "Embarcadero dbExpress Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dcldbxcds220.bpl"; ValueData: "Embarcadero dbExpress SimpleDS Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDBXDrivers220.bpl"; ValueData: "CodeGear DBX Common Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDBXDriversEnt220.bpl"; ValueData: "Embarcadero DBX Enterprise Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclDBXDriversInt220.bpl"; ValueData: "Embarcadero DBX Interbase Driver Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dcldsnapxml220.bpl"; ValueData: "Embarcadero Datasnap XML components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclemacsedit220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclemsclient220.bpl"; ValueData: "Embarcadero EMS Client Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclemsclientfiredac220.bpl"; ValueData: "Embarcadero EMS Client Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclemsserver220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclFireDAC220.bpl"; ValueData: "Embarcadero FireDAC Components"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclFireDACEnt220.bpl"; ValueData: "Embarcadero FireDAC Enterprise Components"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclFireDACEntExt220.bpl"; ValueData: "Embarcadero FireDAC Enterprise Components"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclFMXFireDAC220.bpl"; ValueData: "Embarcadero FireDAC Components for FireMonkey"; Components: FDAC and FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclfmxhrh220.bpl"; ValueData: "Embarcadero FMX Components"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclfmxstd220.bpl"; ValueData: "Embarcadero FMX Components"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclFMXtee9220.bpl"; ValueData: "(Untitled)"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclib220.bpl"; ValueData: "VCL IBX Components for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclie220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclIndyCore220.bpl"; ValueData: "Indy 10 Core Design Time"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclIndyProtocols220.bpl"; ValueData: "Indy 10 Protocols Design Time"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclIntraweb_140_220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclIPIndyImpl220.bpl"; ValueData: "Embarcadero Indy Implementation for Win32"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclmcn220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclMetropolisUILiveTile220.bpl"; ValueData: "Embarcadero Metropolis UI Live Tile Standard Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclmid220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclmlwiz220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclnet220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclnetdb220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclnetwiz220.bpl"; ValueData: "Embarcadero Webbroker Design Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dcloffice2k220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclofficexp220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclRESTBackendComponents220.bpl"; ValueData: "Embarcadero REST Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclRESTBackendFMXComponents220.bpl"; ValueData: "Embarcadero REST Components"; Components: FMX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclRESTComponents220.bpl"; ValueData: "Embarcadero REST Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclribbon220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclrtl220.bpl"; ValueData: "Embarcadero Databinding Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclsmp220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclsmpedit220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclsoap220.bpl"; ValueData: "Embarcadero SOAP Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclsoapmidas220.bpl"; ValueData: "Embarcadero Soap Design Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclsoapserver220.bpl"; ValueData: "Embarcadero Soap Design Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclstd220.bpl"; ValueData: "Embarcadero Standard Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dcltee9220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dcltethering220.bpl"; ValueData: "Embarcadero Tethering Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dcltouch220.bpl"; ValueData: "Embarcadero Touch Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclvcldb220.bpl"; ValueData: "Embarcadero Soap Design Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\dclVclFireDAC220.bpl"; ValueData: "Embarcadero FireDAC Components"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclwbm220.bpl"; ValueData: "Embarcadero InternetExpress Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\dclxml220.bpl"; ValueData: "Embarcadero XML Designtime Components"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\DUnitXIDEExpert220.bpl"; ValueData: "Embarcadero DUnitX Test Framework"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\gitide220.bpl"; ValueData: "Embarcadero Git Integration"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\hgide220.bpl"; ValueData: "Embarcadero Mercurial Integration"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\Bin\MobileWizardExpert220.bpl"; ValueData: "Embarcadero Mobile Wizard Help"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\samplevisualizers220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known Packages; ValueType: string; ValueName: "$(BDS)\bin\svnide220.bpl"; ValueData: "(Untitled)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\android;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\debug"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)\Release"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\Release"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Android32; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE\ANDROID
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\ios;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\debug"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)\Release"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\Release"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice32; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\ios;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\debug"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(PLATFORM)\Release"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\Release"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSDevice64; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\ios;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\debug"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Package Search Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)\$(Configuration)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(PLATFORM)\Release"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\iOSSimulator; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: MOBILE
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(Platform)\debug"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "HPP Output Directory"; ValueData: "$(BDSCOMMONDIR)\hpp\$(Platform)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Language Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp\$(Platform);$(BDS)\include"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\OSX32; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\win;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(Platform)\debug"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "HPP Output Directory"; ValueData: "$(BDSCOMMONDIR)\hpp\$(Platform)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Language Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp;$(BDS)\include"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win32; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Browsing Path"; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\SOURCE\VCL\AppAnalytics;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\win;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;$(TP)\runtime\vcl;$(BDS)\source\data\rest;$(BDS)\source\data\firedac;$(BDS)\source\tethering;$(BDS)\source\DUnitX;$(BDS)\source\data\ems;$(BDS)\source\rtl\net;$(BDS)\source\FlatBox2D"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Debug DCU Path"; ValueData: "$(BDSLIB)\$(Platform)\debug"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "HPP Output Directory"; ValueData: "$(BDSCOMMONDIR)\hpp\$(Platform)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Language Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Package DCP Output"; ValueData: "$(BDSCOMMONDIR)\Dcp\$(Platform)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Package DPL Output"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Package Search Path"; ValueData: "$(BDSCOMMONDIR)\Bpl\$(Platform)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Search Path"; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp\$(Platform);$(BDS)\include"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Translated Debug Library Path"; ValueData: "$(BDSLIB)\$(Platform)\debug\$(LANGDIR)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Translated Library Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Library\Win64; ValueType: string; ValueName: "Translated Resource Path"; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR)"; Components: PLATFORM\X64
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Maintenance; ValueType: string; ValueName: "InstallDir"; ValueData: "{app}"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Maintenance; ValueType: string; ValueName: "OSX32"; ValueData: "TRUE"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Maintenance; ValueType: string; ValueName: "ProductVersion"; ValueData: "Architect"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Maintenance; ValueType: string; ValueName: "WIN64"; ValueData: "FALSE"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\New Component; ValueType: string; ValueName: "PalettePage"; ValueData: "Samples"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\New Component; ValueType: string; ValueName: "UnitDirName"; ValueData: "$(BDSPROJECTSDIR)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Personalities; ValueType: string; ValueData: "RAD Studio XE8"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Personalities; ValueType: string; ValueName: "Delphi.Win32"; ValueData: "Delphi XE8"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "CBuilderNDKLibraryPath"; ValueData: "{code:GetNdkDir}\platforms\android-14\arch-arm\usr\lib"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "DelphiNDKLibraryPath"; ValueData: "{code:GetNdkDir}\platforms\android-14\arch-arm\usr\lib;{code:GetNdkDir}\sources\cxx-stl\gnu-libstdc++\4.8\libs\armeabi-v7a"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "JDKJarsignerPath"; ValueData: "{code:GetJdkDir}\bin\JarSigner.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "JDKKeyToolPath"; ValueData: "{code:GetJdkDir}\bin\KeyTool.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "JDKPath"; ValueData: "{code:GetJdkDir}"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "NDKApiPath"; ValueData: "{code:GetNdkDir}\platforms\android-14"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "NDKArmLinuxAndroidFile"; ValueData: "{code:GetNdkDir}\toolchains\arm-linux-androideabi-4.6\prebuilt\windows\bin\arm-linux-androideabi-ld.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "NDKArmLinuxAndroidStripFile"; ValueData: "{code:GetNdkDir}\toolchains\arm-linux-androideabi-4.6\prebuilt\windows\bin\arm-linux-androideabi-strip.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "NDKBasePath"; ValueData: "{code:GetNdkDir}"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "NDKGdbServerPath"; ValueData: "{code:GetNdkDir}\prebuilt\android-arm\gdbserver\gdbserver"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "PlatformName"; ValueData: "Android"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKAaptPath"; ValueData: "{code:GetAaptDir}\Aapt.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKAdbPath"; ValueData: "{code:GetAdtDir}\platform-tools\Adb.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKAndroidPath"; ValueData: "{code:GetAdtDir}\tools\Android.bat"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKApiLevelPath"; ValueData: "{code:GetApiLevelDir}"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKDisplayName"; ValueData: "Android SDK {code:GetAdtVersion} 32 bit"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKName"; ValueData: "AndroidSDK{code:GetAdtVersion}_32bit.sdk"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SDKZipAlignPath"; ValueData: "{code:GetAaptDir}\ZipAlign.exe"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "SystemRoot"; ValueData: "{code:GetAdtDir}"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\PlatformSDKs\AndroidSDK{code:GetAdtVersion}_32bit.sdk; ValueType: string; ValueName: "Version"; ValueData: "{code:GetAdtVersion}"; Components: MOBILE\ANDSDK
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Provision\OSX32-AppStore; ValueType: string; ValueName: "MacDeveloper"; ValueData: "Mac Developer"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Provision\OSX32-AppStore; ValueType: string; ValueName: "ThirdPartyInstaller"; ValueData: "3rd Party Mac Developer Installer"; Components: PLATFORM\OSX
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "ActiveX"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Additional"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "BDE"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "C# Projects"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Code Snippets"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "CodeGear Data Provider"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Components"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Copied Palette Items"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Data Access"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Data Components"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Data Controls"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Datasnap Client"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Datasnap Server"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "DB Web"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "dbExpress"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Delphi for .NET Projects | New Files"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Delphi for .NET Projects"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Delphi Projects | Active X"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Delphi Projects | Delphi Files"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Delphi Projects"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Dialogs"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Enterprise Core Objects"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "HTML Elements"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Markup Files"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Other Files"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Palette Hidden Items"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Standard"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "System"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Web Controls"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Win 3.1"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Win32"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Window Forms"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Windows Forms Components"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Windows Forms Data Components"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ToolForm\Mapping; ValueType: string; ValueName: "Windows Forms Dialogs"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer; ValueType: string; ValueName: "Order"; ValueData: "@(IDE, sQualityCentral),@(IDE, sVCLStyleDesigner),@(IDE, sXMLMapper),@(IDE, sFireDACExplorer),@(IDE, sFireDACMonitor)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer; ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: "Path"; ValueData: "{app}\Bin\BitmapStyleDesigner.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: "Title"; ValueData: "@(IDE, sBitmapStyleDesigner)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: "WorkingDir"; ValueData: "{app}\bin"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACExplorer); ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACExplorer); ValueType: string; ValueName: "Path"; ValueData: "{app}\Bin\FDExplorer.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACExplorer); ValueType: string; ValueName: "Title"; ValueData: "@(IDE, sFireDACExplorer)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACExplorer); ValueType: string; ValueName: "WorkingDir"; ValueData: "{app}\Bin"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACMonitor); ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACMonitor); ValueType: string; ValueName: "Path"; ValueData: "{app}\Bin\FDMonitor.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACMonitor); ValueType: string; ValueName: "Title"; ValueData: "@(IDE, sFireDACMonitor)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sFireDACMonitor); ValueType: string; ValueName: "WorkingDir"; ValueData: "{app}\Bin"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sRestDebugger; ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sRestDebugger; ValueType: string; ValueName: "Path"; ValueData: "{app}\Bin\RESTDebugger.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sRestDebugger; ValueType: string; ValueName: "Title"; ValueData: "@(IDE, sRestDebugger)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sRestDebugger; ValueType: string; ValueName: "WorkingDir"; ValueData: "{app}\Bin"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: "Params"; ValueData: ""
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: "Path"; ValueData: "{app}\Bin\xmlmapper.exe"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: "Title"; ValueData: "@(IDE, sXMLMapper)"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: "WorkingDir"; ValueData: "{app}\Bin"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\UsageAnalytics; ValueType: dword; ValueName: "Enabled"; ValueData: "$00000000"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Borland Shared; ValueType: string; ValueName: "SharedFilesDir"; ValueData: "{cf32}\Borland Shared"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\FireDAC; ValueType: string; ValueName: "ConnectionDefFile"; ValueData: "$(FDHOME)\FDConnectionDefs.ini"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\FireDAC; ValueType: string; ValueName: "DriverFile"; ValueData: "$(FDHOME)\FDDrivers.ini"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\FireDAC; ValueType: string; ValueName: "ExplorerPath"; ValueData: "$(BDS)\bin\FDExplorer.exe"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\FireDAC; ValueType: string; ValueName: "FDHOME"; ValueData: "{commondocs}\Embarcadero\Studio\FireDAC"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\FireDAC; ValueType: string; ValueName: "MonitorPath"; ValueData: "$(BDS)\bin\FDMonitor.exe"; Components: FDAC
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\AuditsCLI.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\bds.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\BDSLauncher.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\bdsreg.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\BDSSetLang.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\BitmapStyleDesigner.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\cgconfig.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\convert.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\cpposx.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dbexplor.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dcc32.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dcc64.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dccaarm.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dccios32.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dcciosarm.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dcciosarm64.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\dccosx.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\drinterop.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\DSProxyGen.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\DSProxyReg.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\EMSDevConsole.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\EMSDevServer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\EMSManagementConsole.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\etm.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\extracticon.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FDAdministrator.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FDExplorer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FDMonitor.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FMXMetropolisUIStyleViewer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FMXMobileStyleViewer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\FMXStyleViewer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\Formatter.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\GenDocCLI.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\genplist.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\LicenseManager.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\migrationtool.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\paclient.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\reFind.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\RESTDebugger.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\scktsrvr.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\tlibimp.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\tregsvr.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\updatecheck.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\VCLStyleViewer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\Win32ProxyDownloader.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\WSDLImp.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\xlink.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin\xmlmapper.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin64\EMSDevConsole.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin64\EMSDevServer.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{app}\Bin64\tlibimp.exe"; ValueData: "EN"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: "{win}\Microsoft.NET\Framework\v3.5\MSBuild.exe"; ValueData: "EN"

;Help
Root: HKCU; SubKey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\htmlhelp1220.bpl"; ValueData: "HtmlHelp Viewer"; Components: HELP; Check: IsDelphiInited

;Experts

;Community Toolbar
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\CommunityToolbar220.bpl"; ValueData: ""; Components: not EXPERTS\COMTOOLBAR
Root: HKCU; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\CommunityToolbar220.bpl"; ValueData: ""; Components: not EXPERTS\COMTOOLBAR; Check: IsDelphiInited

;Together
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\tgide220.bpl"; ValueData: ""; Components: not EXPERTS\TOGETHER
Root: HKCU; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\tgide220.bpl"; ValueData: ""; Components: not EXPERTS\TOGETHER; Check: IsDelphiInited

;Castalia
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\Castalia220.bpl"; ValueData: ""; Components: not EXPERTS\CASTALIA
Root: HKCU; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\Castalia220.bpl"; ValueData: ""; Components: not EXPERTS\CASTALIA; Check: IsDelphiInited
;Castalia XP Error Fix
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\Castalia220.bpl"; ValueData: ""; OnlyBelowVersion: 6.0
Root: HKCU; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\Castalia220.bpl"; ValueData: ""; OnlyBelowVersion: 6.0; Check: IsDelphiInited

;ModernTheme
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\ModernTheme220.bpl"; ValueData: ""; Components: not EXPERTS\THEME
Root: HKCU; Subkey: SOFTWARE\Embarcadero\BDS\16.0\Known IDE Packages; ValueType: string; ValueName: "$(BDS)\Bin\ModernTheme220.bpl"; ValueData: ""; Components: not EXPERTS\THEME; Check: IsDelphiInited
;ModernTheme setting
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ModernTheme; ValueType: string; ValueName: "FontName"; ValueData: "Segoe UI"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ModernTheme; ValueType: dword; ValueName: "FontSize"; ValueData: "$00000009"
Root: HKLM; Subkey: SOFTWARE\Embarcadero\BDS\16.0\ModernTheme; ValueType: string; ValueName: "MainToolBarColor"; ValueData: "clBtnFace"

;DEP
Root: HKLM; SubKey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: "{app}\Bin\bds.exe"; ValueData: "DisableNXShowUI"; Check: not IsWin64
Root: HKLM64; SubKey: SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: string; ValueName: "{app}\Bin\bds.exe"; ValueData: "DisableNXShowUI"; Check: IsWin64

[Code]
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2012.12.12
//功能：引入外部 ISS 支持例程
//参数：
////////////////////////////////////////////////////////////////////////////////
#include "Others\Include\DirectX.iss"
#include "Others\Include\FireWall.iss"
#include "Others\Include\InnoHelper.iss"
#include "Others\Include\RegSvr.iss"
#include "Others\Include\SysUtils.iss"
#include "Others\Include\Un7z.iss"

const
  dotnetfx20sp2_url_x86 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x86.exe';
  dotnetfx20sp2_url_x64 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x64.exe';

  jdk_download_url      = 'http://www.oracle.com/technetwork/java/javase/downloads/index.html';

var
  SaveAdtDir, SaveAdtVersion, SaveAaptDir, SaveApiLevelDir,
  SaveJdkDir, SaveNdkDir,
  SaveNetFx20SetupFile, SaveJdkSetupFile: string;

var
  FinishedInstall: Boolean;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 ADT 目录
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetAdtDir(Param: string): string;
begin
  if SaveAdtDir = '' then
    SaveAdtDir := ExpandConstant('{app}\PlatformSDKs\android-sdk-windows');
  Result := SaveAdtDir;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：查找 ADT 版本
//参数：
////////////////////////////////////////////////////////////////////////////////
function FindAdtVersion(out AVersion: string): Boolean;
var
  I, P: Integer;
  RevPrex, S: string;
  List: TStringList;
begin
  RevPrex := 'Pkg.Revision=';
  Result := False;
  S := GetAdtDir('') + '\tools\source.properties';
  if not FileExists(S) then
    Exit;
  List := TStringList.Create;
  with List do
  try
    LoadFromFile(S);
    for I := 0 to Count - 1 do
    begin
      S := Strings[I];
      P := Pos(RevPrex, S);
      Result := P > 0;
      if Result then
      begin
        AVersion := Copy(S, P + Length(RevPrex), MaxInt);
        Exit;
      end;
    end;
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 ADT 版本
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetAdtVersion(Param: string): string;
begin
  if SaveAdtVersion = '' then
    if not FindAdtVersion(SaveAdtVersion) then
      SaveAdtVersion := '24.0.2';
  Result := SaveAdtVersion;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 ADT\build-tools\21.1.2 目录
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetAaptDir(Param: string): string;
var
  S: string;
begin
  if SaveAaptDir = '' then
  begin
    S := GetAdtDir('');
    if not ExpandMaskFileFullName(S + '\build-tools\*.*', SaveAaptDir) then
      SaveAaptDir := S + '\build-tools\21.1.2';
  end;
  Result := SaveAaptDir;
end;
                     
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 ADT\platforms\android-21 目录
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetApiLevelDir(Param: string): string;
var
  S: string;
begin
  if SaveApiLevelDir = '' then
  begin
    S := GetAdtDir('');
    if not ExpandMaskFileFullName(S + '\platforms\android-*', SaveApiLevelDir) then
      SaveApiLevelDir := S + '\platforms\android-21';
  end;
  Result := SaveApiLevelDir;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 JDK 目录
//参数：
//注意：可能当前还没有安装 JDK，需要查找
////////////////////////////////////////////////////////////////////////////////
function GetJdkDir(Param: string): string;
begin
  if SaveJdkDir = '' then
    if FindJavaDevelopmentKitPath(SaveJdkDir) then
      SaveJdkDir := RemoveBackslash(SaveJdkDir)
    else SaveJdkDir := ExpandConstant('{pf32}\Java\jdk1.7.0_76');
  Result := SaveJdkDir;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 JDK 安装程序名
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetJdkSetupFile(Param: string): string;
begin
  if SaveJdkSetupFile = '' then
  begin
    if not ExpandMaskFileFullName('{src}\jdk-7*-windows-i586.exe', SaveJdkSetupFile) then
      SaveJdkSetupFile := ExpandConstant('{src}\jdk-7u76-windows-i586.exe')
  end;
  Result := SaveJdkSetupFile;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 JDK 安装程序名
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetNetFx20SetupFile(Param: string): string;
begin
  if SaveNetFx20SetupFile = '' then
  begin
    if IsWin64 then
    begin
      if not ExpandMaskFileFullName('{src}\NetFx2*_x64.exe', SaveNetFx20SetupFile) then
        SaveNetFx20SetupFile := ExpandConstant('{src}\NetFx20SP2_x64.exe')
    end
    else
    begin
      if not ExpandMaskFileFullName('{src}\NetFx2*_x86.exe', SaveNetFx20SetupFile) then
        SaveNetFx20SetupFile := ExpandConstant('{src}\NetFx20SP2_x86.exe')
    end;
  end;
  Result := SaveNetFx20SetupFile;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.06
//功能：获取 NDK 目录
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetNdkDir(Param: string): string;
begin
  if SaveNdkDir = '' then
    if not ExpandMaskFileFullName('{app}\PlatformSDKs\android-ndk-*', SaveNdkDir) then
      SaveNdkDir := ExpandConstant('{app}\PlatformSDKs\android-ndk-r9c');
  Result := SaveNdkDir;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2011.08.08
//功能：返回安装时间 RegMergeTimeStamp
//参数：
////////////////////////////////////////////////////////////////////////////////
function GetRegMergeTimeStamp(Param: string): string;
begin
  Result := GetDateTimeString('mm/dd/yyyy hh:nn:ss', '-', '|');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2011.09.05
//功能：重新发布文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RedistPlatformFiles(const ASrcFolder, ADestFolder, AFileList: string);
var
  List: TStrings;
  I: Integer;
  SrcFolder, DestFolder, DestDir, FileList: string;
begin
  FileList := ExpandConstant(AFileList);
  if not FileExists(FileList) then
    Exit;
  List := TStringList.Create;
  with List do
  try
    SrcFolder := ExpandConstant(ASrcFolder) + '\';
    DestFolder := ExpandConstant(ADestFolder) + '\';
    LoadFromFile(FileList);
    for I := 0 to Count - 1 do
      if List[I] <> '' then
    begin
      DestDir := ExtractFileDir(DestFolder + List[I]);
      ForceDirectories(DestDir);
      if not FileCopy(SrcFolder + List[I], DestFolder + List[I], False) then
        Log('RedistPlatformFiles Error: ' + SrcFolder + ', ' + DestFolder + ', ' + List[I]);
    end;
  finally
    Free;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2012.08.14
//功能：重新发布 Style 文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RedistStyleFiles(const ASrcFolder, ADestFolder, AFileMask: string);
var
  FindRec: TFindRec;
  SrcFolder, DestFolder: string;
begin
  SrcFolder := ExpandConstant(ASrcFolder) + '\';
  DestFolder := ExpandConstant(ADestFolder) + '\';
  ForceDirectories(DestFolder);
  if FindFirst(SrcFolder + AFileMask, FindRec) then
  try
    repeat
      if (FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0) and (FindRec.Name[1] <> '.') then
        if not FileCopy(SrcFolder + FindRec.Name, DestFolder + FindRec.Name, False) then
          Log('RedistStyleFiles Error: ' + SrcFolder + ', ' + DestFolder + ', ' + FindRec.Name);
    until not FindNext(FindRec);
  finally
    FindClose(FindRec);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2011.09.10
//功能：重新发布所有平台文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RedistSetupFiles();
begin
  RedistPlatformFiles('{app}\bin', '{app}\Redist\win32', '{app}\Redist\win32.redistlist');
  if IsComponentSelected('PLATFORM\X64') then
    RedistPlatformFiles('{app}\bin64', '{app}\Redist\win64', '{app}\Redist\win64.redistlist');
  if IsComponentSelected('PLATFORM\OSX') then
    RedistPlatformFiles('{app}\binosx32', '{app}\Redist\osx32', '{app}\Redist\osx32.redistlist');

  RedistStyleFiles('{commondocs}\Embarcadero\Studio\16.0\Styles', '{app}\Redist\styles\Fmx', '*.style');
  RedistStyleFiles('{commondocs}\Embarcadero\Studio\16.0\Styles', '{app}\Redist\styles\vcl', '*.vsf');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：注册必要的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterFiles(ARegister: Boolean);
begin
  if ARegister and IsBuildFrameworkInstalled then
  begin
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\System.Core.dll', True);
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Framework.dll', True);
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Engine.dll', True);
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Conversion.v3.5.dll', True);
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Utilities.v3.5.dll', True);
    RegisterGacAssembly('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Tasks.v3.5.dll', True);
  end;

  RegisterAssembly('{app}\bin\Borland.Build.Tasks.Common.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Cpp.Structure.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Interop.dll', ARegister);
  RegisterAssembly('{app}\bin\Embarcadero.Studio.Modeling.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.ToolsAPI.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Toolsets.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Data.Explorer.Common.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Data.Explorer.dll', ARegister);

  RegisterServer('{app}\bin\Borland.Studio.ToolsAPI.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Interop.tlb', ARegister);
  RegisterServer('{app}\bin\Embarcadero.Studio.Modeling.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Build.Tasks.Common.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Refactoring.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Toolsets.tlb', ARegister);
  RegisterServer('{app}\bin\bordbk220.dll', ARegister);
  RegisterServer('{app}\bin\bordbk220N.dll', ARegister);
  RegisterServer('{app}\bin\midas.dll', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.Common.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.tlb', ARegister);
  RegisterServer('{app}\bin\getithelper.dll', ARegister);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：处理 dcc32.cfg 等实际环境相关的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ReplaceAppPathFile(const AFile: string);
var
  S, T: string;
  Ret: Integer;
begin
  if LoadStringFromFileEx(AFile, S) then
  begin
    T := ExpandConstant('{app}');
    Ret := StringChangeEx(S, 'C:\Program Files\Embarcadero\Studio\16.0', T, True);
    T := ExpandConstant('{commondocs}');
    Ret := Ret + StringChangeEx(S, 'C:\Documents and Settings\All Users\Documents', T, True);
    Ret := Ret + StringChangeEx(S, 'C:\Users\Public\Documents', T, True);
    T := ExpandConstant('{win}');
    Ret := Ret + StringChangeEx(S, 'c:\WINDOWS', T, True);
    Ret := Ret + StringChangeEx(S, 'C:\WINDOWS', T, True);
    if Ret > 0 then SaveStringToFile(AFile, S, False);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：处理 dcc32.cfg 等实际环境相关的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ReplaceConfigFile;
var
  S, F: String;
begin
  S := ExpandConstant('{app}');
  F := S + '\Path-After-Install.txt';
  ReplaceAppPathFile(F);
  F := S + '\Path-Before-Install.txt';
  ReplaceAppPathFile(F);
  S := ExpandConstant('{app}');
  F := S + '\Bin\dcc32.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dcc64.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dccaarm.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dccios32.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dcciosarm.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dcciosarm64.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\dccosx.cfg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\EnableIDEUpdateCheck.reg';
  ReplaceAppPathFile(F);
  F := S + '\Bin\rsvars.bat';
  ReplaceAppPathFile(F);
  F := S + '\Bin\UpdateAndroidSDK.bat';
  ReplaceAppPathFile(F);

  F := S + '\InterBaseXE7\values.txt';
  ReplaceAppPathFile(F);

  S := ExpandConstant('{commondocs}');
  F := S + '\Embarcadero\Studio\FireDAC\FDConnectionDefs.ini';
  ReplaceAppPathFile(F);
  F := S + '\Embarcadero\Studio\dbExpress\16.0\dbxconnections.ini';
  ReplaceAppPathFile(F);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：删除用户设置
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RemoveRegistryEntries;
var
  Ret: Integer;
begin
  if not UninstallSilent then
  begin
    Ret := MsgBox('Do you want to remove all Embarcadero RAD Studio XE8 entries from your registry?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2);
    if Ret = IDNO then
      Exit;
  end;
  RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Embarcadero\BDS\16.0');
  RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'SOFTWARE\Embarcadero\BDS\16.0');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.09.19
//功能：查找文件类型关联
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetAssociationComponentStates;
var
  idxAssocLow, idxAssocHigh,
  I: Integer;
  S: string;
begin
  with WizardForm.ComponentsList do
  begin
    for I := 0 to Items.Count - 1 do
    begin
      S := ItemCaption[I];
      if Pos('File Associations', S) > 0 then
        idxAssocLow := I + 1
      else if (S <> '') and (S[1] = '.') then
        idxAssocHigh := I;
    end;
    for I := idxAssocLow to idxAssocHigh do
    begin
      Checked[I] := not CheckFileAssoc(ItemCaption[I]);
    end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.09.19
//功能：查找组件关联的文件是否存在
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetFileComponentState(const AFileName, AComponent, ADescription: string);
var
  B: Boolean;
  I: Integer;
  F, S: string;
begin
  with WizardForm.ComponentsList do
    for I := 0 to Items.Count - 1 do
  begin
    S := ItemCaption[I];
    if CompareText(S, ADescription) <> 0 then
      Continue;
    F := ExpandConstant('{src}');
    F := AddBackslash(F);
    F := F + AFileName;
    B := FileExists(F);
    if not B then
      Checked[I] := False;
    ItemEnabled[I] := B;
    Exit;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.07
//功能：设置所有组件关联的 7z 文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetExtractFileComponents;
begin
  AddExtractFileComponent('Ext.X64.7z', 'PLATFORM\X64', 'Windows 64-Bit');
  AddExtractFileComponent('Ext.OSX.7z', 'PLATFORM\OSX', 'OS X');

  AddExtractFileComponent('Ext.SDK.7z', 'MOBILE\ANDSDK', 'Android Development SDK/NDK');
  AddExtractFileComponent('Ext.Android.7z', 'MOBILE\ANDROID', 'Android Development Platform');
  AddExtractFileComponent('Ext.IOS.7z', 'MOBILE\IOS', 'iOS Development Platform');

  AddExtractFileComponent('Ext.Help.7z', 'HELP', 'Help Files');

  AddExtractFileComponent('Ext.Samples.7z', 'EXTRA\SAMPLE', 'Sample Applications');
  AddExtractFileComponent('Ext.Support.7z', 'EXTRA\SUPPORT', 'Images, PAServer');
  AddExtractFileComponent('Ext.3th.7z', 'EXTRA\3TH', '3th Files');

  AddExtractFileComponent('Ext.Addons.7z', 'ADDONS', 'ThirdParty Addons');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.07
//功能：设置所有组件关联的 7z 文件状态
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetFileComponentStates;
begin
  SetFileComponentState('Ext.X64.7z', 'PLATFORM\X64', 'Windows 64-Bit');
  SetFileComponentState('Ext.OSX.7z', 'PLATFORM\OSX', 'OS X');

  SetFileComponentState('Ext.SDK.7z', 'MOBILE\ANDSDK', 'Android Development SDK/NDK');
  SetFileComponentState('Ext.Android.7z', 'MOBILE\ANDROID', 'Android Development Platform');
  SetFileComponentState('Ext.IOS.7z', 'MOBILE\IOS', 'iOS Development Platform');

  SetFileComponentState('Ext.Help.7z', 'HELP', 'Help Files');

  SetFileComponentState('Ext.Samples.7z', 'EXTRA\SAMPLE', 'Sample Applications');
  SetFileComponentState('Ext.Support.7z', 'EXTRA\SUPPORT', 'Images, PAServer');
  SetFileComponentState('Ext.3th.7z', 'EXTRA\3TH', '3th Files');

  SetFileComponentState('Ext.Addons.7z', 'ADDONS', 'ThirdParty Addons');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.07
//功能：设置所有组件选择状态
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetComponentTypeStates;
begin
  WizardForm.TypesCombo.ItemIndex := 0;
  ExecuteNotifyEvent(WizardForm, 'TypesComboChange')
  SetFileComponentStates();
  SetAssociationComponentStates();
  ExecuteNotifyEvent(WizardForm, 'ComponentsListClickCheck');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.09.19
//功能：查找组件关联的文件是否存在
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetupExecuteComponent(const AFileName, AParams, ADescription: string);
var
  S, BaseDir: string;
  ResultCode: Integer;
begin
  if not FileExists(AFileName) then
    Log('SetupExecuteComponent Error, File not exists: ' + AFileName)
  else begin
    BaseDir := ExtractFileDir(AFileName);
    S := CustomMessage('StatusInstalling');
    WizardForm.StatusLabel.Caption := FmtMessage(S, [ADescription]);
    if not Exec(AFileName, AParams, BaseDir, SW_HIDE, ewWaitUntilTerminated, ResultCode) then
      Log('SetupExecuteComponent Error: ' + IntToStr(ResultCode) + ', ' + AFileName + ', ' + AParams + ', ' + ADescription);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.01.20
//功能：添加 WINDOWS 防火墙规则
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetWindowsFireWallRule(Active: Boolean);
var
  FileName: string;
begin
  FileName := ExpandConstant('{app}\bin\bds.exe');
  ActiveWindowsFireWallRule('Embarcadero RAD Studio for Windows', FileName, Active, False);
  FileName := ExpandConstant('{app}\bin\dbkw64_22_0.exe');
  ActiveWindowsFireWallRule('Embarcadero Debugger Kernel', FileName, Active, True);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.03.20
//功能：更新环境变量
//参数：
//注意：卸载期间不能使用 IsTaskSelected 判断
////////////////////////////////////////////////////////////////////////////////
procedure SetPathEnvironments(AInstall: Boolean);
begin
  if not AInstall then
  begin
    SetPathEnvironmentVariable('{app}\bin', False);
    SetPathEnvironmentVariable('{commondocs}\Embarcadero\Studio\16.0\Bpl', False);
  end
  else begin
    if IsTaskSelected('ENVBIN') then
      SetPathEnvironmentVariable('{app}\bin', True);
    if IsTaskSelected('ENVBPL') then
      SetPathEnvironmentVariable('{commondocs}\Embarcadero\Studio\16.0\Bpl', True);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.10
//功能：执行 NetFx 的安装
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ExecuteInstallNetFx20();
var
  F: string;
begin
  F := GetNetFx20SetupFile('');
  SetupExecuteComponent(F, ' /q', 'Microsoft .NET Framework 2.0');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.10
//功能：执行 JDK 的安装
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ExecuteInstallJdk();
var
  F: string;
begin
  F := GetJdkSetupFile('');
  SetupExecuteComponent(F, '  /s ADDLOCAL="ToolsFeature,SourceFeature,PublicjreFeature"', 'Java Development Kit');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化安装，初始化需要下载的文件列表
//参数：
////////////////////////////////////////////////////////////////////////////////
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
  FileName, FileUrl: string;
begin
  if IsWin8OrHight and not IsFramework35Installed then
  begin
    MsgBox('The Microsoft .NET Framework 3.5.1 is not installed. Please go to "Control Panel" – Programs – "Turn Windows features on or off" – Check "Microsoft .NET Framework 3.5.1"', mbConfirmation, MB_OK);
    Result := False;
    Exit;
  end;
  if IsWin64 then
    FileUrl := dotnetfx20sp2_url_x64
  else FileUrl := dotnetfx20sp2_url_x86;
  FileName := GetNetFx20SetupFile('');
  if not IsFramework20Installed and not FileExists(FileName) then
  begin
    if MsgBox('The Microsoft .NET Framework 2.0 Service Pack 2 is not installed. Would you like to download Setup anyway?',
      mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON2) = IDYES then
      ShellExec('open', FileUrl, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
    Result := False;
    Exit;
  end;
  FileName := GetJdkSetupFile('');
  if not IsJavaDevelopmentKitInstalled and not FileExists(FileName) then
  begin
    if MsgBox('The Java SE Development Kit 7 is not installed. Would you like to download Setup anyway? or Android Development Platform disabled.',
      mbConfirmation, MB_YESNO or MB_DEFBUTTON1) = IDYES then
      ShellExec('open', jdk_download_url, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
    else MsgBox('Android Development Platform disabled.', mbConfirmation, MB_OK);
  end;
  Result := True;
end;

procedure DeinitializeSetup();
begin
  DoneExtractFiles();
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化界面
//参数：
//注意：通过 CreateMutex 避免第二个安装实例同时运行
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
var
  Delta: Integer;
begin
  CreateMutex('{#AppSetupMutex}');

  InitExtractFiles(); 
  SetExtractFileComponents();

  with WizardForm do
  begin
    Delta := ScaleY(2);
    with CancelButton do
      Height := Height + Delta;
    with BackButton do
      Height := Height + Delta;
    with NextButton do
      Height := Height + Delta;
    Delta := -2;
    with CancelButton do
      Top := Top + Delta;
    with BackButton do
      Top := Top + Delta;
    with NextButton do
      Top := Top + Delta;
    LicenseAcceptedRadio.Checked := True;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.09.24
//功能：更新界面状态
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectComponents then
  begin
    if Pos('/SP-', UpperCase(GetCmdTail)) > 0 then
      WizardForm.BackButton.Visible := False;
    SetComponentTypeStates;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：注册用户设置
//参数：
//注意：要在这里刷新系统环境变量不然不生效
////////////////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
begin
  case CurStep of
    ssInstall:
      begin
        SetPathEnvironments(True);
      end;
    ssPostInstall:
      begin
        RegisterFiles(True);
        ReplaceConfigFile;
        RedistSetupFiles;
        SetWindowsFireWallRule(True);
        FinishedInstall := True;
      end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：删除用户设置
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  case CurUninstallStep of
    usUninstall:
      begin
        RegisterFiles(False);
        SetPathEnvironments(False);
      end;
    usPostUninstall:
      begin
        RemoveRegistryEntries;
        SetWindowsFireWallRule(False);
      end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2013.10.10
//功能：切换页面校验参数
//参数：
////////////////////////////////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpSelectComponents then
    if IsComponentSelected('MOBILE\ANDROID') and not IsComponentSelected('MOBILE\ANDSDK') then
      MsgBox('Note: Android Development Platform need Android SDK/NDK component, You need to manually configure IDE SDK.', mbInformation, MB_OK);
  Result := True;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.09.03
//功能：修复时跳过页面
//参数：
////////////////////////////////////////////////////////////////////////////////
function ShouldSkipPage(CurPage: Integer): Boolean;
begin
  if Pos('/SP-', UpperCase(GetCmdTail)) > 0 then
    case CurPage of
      wpInfoBefore, wpLicense, wpPassword,
      wpUserInfo, wpSelectDir, wpSelectProgramGroup, wpInfoAfter:
        Result := True;
    end;
end;
