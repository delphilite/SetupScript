;{ *********************************************************************** }
;{                                                                         }
;{   CodeGear Delphi 2007 Lite 安装脚本                                    }
;{                                                                         }
;{   设计：Lsuper 2009.05.01                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2009 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   GetFileVersion("Files\CodeGear\RAD Studio\5.0\bin\bds.exe")
#define AppLiteVersion  "1.4"
#define AppFileNamePrex "CodeGear.Delphi.2007.RTM.Inc.Update4"
#define AppNamePrex     "CodeGear Delphi 2007 Lite"
#define AppWebURL       "http://www.codegear.com"
#define AppSupportURL   "http://support.codegear.com/"

[Setup]
AllowUNCPath=false
AppComments=CodeGear Delphi 2007
AppCopyright=Copyright ? 1996-2007 CodeGear
AppID={{F9E029ED-4DEF-4808-A233-45A437C269CF}
AppModifyPath="{app}\UninsHs.exe" /m0={{F9E029ED-4DEF-4808-A233-45A437C269CF}
AppMutex={{F9E029ED-4DEF-4808-A233-45A437C269CF}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppSupportURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
ChangesEnvironment=true
DefaultDirName={pf32}\CodeGear\RAD Studio\5.0
DefaultGroupName=CodeGear RAD Studio 2007
MinVersion=,5.0.2195sp3
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayIcon={app}\Bin\bds.exe
UninstallDisplayName=CodeGear Delphi 2007
VersionInfoCompany=CodeGear
VersionInfoCopyright=Copyright ? 1996-2007 CodeGear
VersionInfoDescription=CodeGear RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\CodeGear\RAD Studio\5.0\license.rtf
SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=lzma2/max
SolidCompression=true

SignedUninstaller=true
SignedUninstallerDir=Files\Utils

[_ISToolPreCompile]

[_ISToolPostCompile]

[Languages]
Name: en; MessagesFile: Files\Setup\English.isl
Name: chs; MessagesFile: Files\Setup\Chinese.isl

Name: ba; MessagesFile: compiler:Languages\Basque.isl
Name: br; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: ca; MessagesFile: compiler:Languages\Catalan.isl
Name: cz; MessagesFile: compiler:Languages\Czech.isl
Name: da; MessagesFile: compiler:Languages\Danish.isl
Name: nl; MessagesFile: compiler:Languages\Dutch.isl
Name: fi; MessagesFile: compiler:Languages\Finnish.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: he; MessagesFile: compiler:Languages\Hebrew.isl
Name: hu; MessagesFile: compiler:Languages\Hungarian.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: ja; MessagesFile: compiler:Languages\Japanese.isl
Name: no; MessagesFile: compiler:Languages\Norwegian.isl
Name: pl; MessagesFile: compiler:Languages\Polish.isl
Name: pt; MessagesFile: compiler:Languages\Portuguese.isl
Name: ru; MessagesFile: compiler:Languages\Russian.isl
Name: sl; MessagesFile: compiler:Languages\Slovak.isl
Name: sl2; MessagesFile: compiler:Languages\Slovenian.isl
Name: sp; MessagesFile: compiler:Languages\Spanish.isl

[Messages]
BeveledLabel=BDS

[CustomMessages]
en.StatusInstalling=Installing %1...
en.StatusUninstalling=Uninstalling %1...
en.StatusRegister=Register %1...
en.StatusUnregister=Unregister %1...
en.StatusRunning=Running %1...
en.StatusStopping=Stopping %1...
en.StatusSavingUninstall=Saving uninstall information...

en.AdditionalOptions=Additional options:
en.AddEnvironment=Add Bpl Path Environment Variable
en.DisbleMSBuild=Disable MSBuild
en.IncludeFile=Include %1:

chs.StatusInstalling=正在安装 %1...
chs.StatusUninstalling=正在卸载 %1...
chs.StatusRegister=正在注册 %1...
chs.StatusUnregister=正在反注册 %1...
chs.StatusRunning=正在启动 %1...
chs.StatusStopping=正在停止 %1...
chs.StatusSavingUninstall=正在保存卸载信息...

chs.AdditionalOptions=附加选项:
chs.AddEnvironment=添加包输出路径到环境变量
chs.DisbleMSBuild=不使用 MSBuild
chs.IncludeFile=整合 %1

[Types]
Name: LITE; Description: Lite installation
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: Delphi Core Files; Types: FULL LITE CUSTOM; Flags: fixed
Name: TOGETHER; Description: Delphi Together; Types: FULL; Check: CanInstallTogether
Name: EXPERTS; Description: Delphi Experts; Types: FULL
Name: EXPERTS\IDEFIX; Description: Andreas Hausladen's IDE Fix Pack 4.2; Types: FULL
Name: DEMOS; Description: Delphi Demos; Types: FULL
Name: QC; Description: Delphi Quality Central; Types: FULL
Name: SHARE; Description: Delphi Share Files; Types: FULL
Name: SHARE\DATA; Description: Delphi Data Files; Types: FULL
Name: SHARE\IMAGE; Description: Delphi Image Files; Types: FULL
Name: ASSOC; Description: Delphi File Associations; Types: LITE FULL; Flags: DisableNoUninstallWarning
Name: ASSOC\DPROJ; Description: .dproj; Types: LITE FULL
Name: ASSOC\GROUPPROJ; Description: .groupproj; Types: LITE FULL
Name: ASSOC\BDSDEPLOY; Description: .bdsdeploy; Types: LITE FULL
Name: ASSOC\BDSGROUP; Description: .bdsgroup; Types: LITE FULL
Name: ASSOC\BDSPROJ; Description: .bdsproj; Types: LITE FULL
Name: ASSOC\CONFIG; Description: .config; Types: LITE FULL
Name: ASSOC\DFM; Description: .dfm; Types: LITE FULL
Name: ASSOC\DPK; Description: .dpk; Types: LITE FULL
Name: ASSOC\DPKW; Description: .dpkw; Types: LITE FULL
Name: ASSOC\DPR; Description: .dpr; Types: LITE FULL
Name: ASSOC\PAS; Description: .pas; Types: LITE FULL
Name: BLACKFISH; Description: Blackfish SQLServer; Types: FULL

[Tasks]
Name: ICON;   Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: QUICK;  Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 5.0,6.1
Name: ENV;    Description: {cm:AddEnvironment}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked
Name: MSBUILD; Description: {cm:DisbleMSBuild}; GroupDescription: {cm:AdditionalOptions}

[Dirs]
Name: {commondocs}\RAD Studio\5.0

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480
Source: {src}\vjredist.exe; Flags: external dontcopy; Components: TOGETHER; Check: not IsVisualJSharpInstalled; ExternalSize: 3796672

Source: Files\CodeGear\RAD Studio\5.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\CodeGear\RAD Studio\Config\*; DestDir: {app}\Config; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\CodeGear\RAD Studio\Demos\*; DestDir: {app}\Demos; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: DEMOS
Source: Files\CodeGear\RAD Studio\QualityCentral\*; DestDir: {app}\QualityCentral; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: QC
Source: Files\CodeGear\RAD Studio\Together\*; DestDir: {app}\Bin; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: TOGETHER

Source: Files\Common Files\Borland Shared\*; DestDir: {cf32}\Borland Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Common Files\CodeGear Shared\*; DestDir: {cf32}\CodeGear Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Data\*; DestDir: {cf32}\CodeGear Shared\Data; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\DATA
Source: Files\Common Files\Images\*; DestDir: {cf32}\CodeGear Shared\Images; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\IMAGE
Source: Files\Common Files\Documents\*; DestDir: {commondocs}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

Source: Files\Additional\bordbk105N.dll; DestDir: {app}\Bin; Flags: ignoreversion sortfilesbyextension; Check: IsWin64
Source: Files\Additional\IDEFixPack.dll; DestDir: {app}\Bin; Flags: ignoreversion sortfilesbyextension; Components: EXPERTS\IDEFIX

Source: Files\DotNet\*; DestDir: {win}\Microsoft.NET\Framework\v2.0.50727; Flags: sortfilesbyextension

Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt

Source: Files\Utils\DelphiDistiller.exe; DestDir: {app}
Source: Files\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Files\Utils\UninsHs.exe; DestDir: {app}; Flags: ignoreversion

[Icons]
Name: {group}\Delphi 2007; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi 2007 Program
Name: {group}\Delphi Distiller; Filename: {app}\DelphiDistiller.exe; Comment: Delphi Distiller
Name: {group}\Demos; Filename: {app}\Demos; WorkingDir: {app}\Demos; Components: DEMOS
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{F9E029ED-4DEF-4808-A233-45A437C269CF}; Comment: Removes this CodeGear product
Name: {group}\RAD Studio Command Prompt; Filename: %comspec%; WorkingDir: {app}\bin; Parameters: "/K ""{app}\bin\rsvars.bat"""; Comment: Open RAD Studio Command Prompt
Name: {group}\XML Mapper; Filename: {app}\bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: Run the XML Mapper tool
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Uninstall this CodeGear product

Name: {group}\Config\IDELite Enable; Filename: {app}\Config\idelite.enable.reg; Comment: Enable Lite
Name: {group}\Config\IDELite Disable; Filename: {app}\Config\idelite.disable.reg; Comment: Disable Lite
Name: {group}\Config\MSBuild Enable; Filename: {app}\Config\msbuild.enable.reg; Comment: Enable MSBuild
Name: {group}\Config\MSBuild Disable; Filename: {app}\Config\msbuild.disable.reg; Comment: Disable MSBuild

Name: {userdesktop}\Delphi 2007; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi 2007 Program; Tasks: ICON
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Delphi 2007; Filename: {app}\bin\bds.exe; Parameters: -pDelphi; Tasks: QUICK; OnlyBelowVersion: 5.0,6.1

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64
Filename: {src}\vjredist.exe; WorkingDir: {src}; Parameters: "/Q /C:""install.exe /q"""; StatusMsg: {cm:StatusInstalling,Microsoft Visual J Sharp 2.0 Redistributable Package}; Components: TOGETHER; Check: not IsVisualJSharpInstalled

Filename: {app}\Bin\Borland.Data.BlackfishSQL.InstallHelp.exe; WorkingDir: {app}\Bin; Parameters: -register; StatusMsg: {cm:StatusRegister,Blackfish SQLServer}; Flags: runminimized
Filename: {app}\Bin\BSQLServer.exe; WorkingDir: {app}\Bin; Parameters: -install; StatusMsg: {cm:StatusInstalling,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {sys}\Cmd.exe; WorkingDir: {app}\Bin; Parameters: "/c ""net start BlackfishSQL"""; StatusMsg: {cm:StatusRunning,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{F9E029ED-4DEF-4808-A233-45A437C269CF},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Description: {cm:LaunchProgram,CodeGear Delphi 2007}; Flags: nowait postinstall

[UninstallRun]
Filename: {sys}\Cmd.exe; WorkingDir: {app}\Bin; Parameters: "/c ""net stop BlackfishSQL"""; StatusMsg: {cm:StatusStopping,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\Bin\BSQLServer.exe; WorkingDir: {app}\Bin; Parameters: -remove; StatusMsg: {cm:StatusUninstalling,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\Bin\Borland.Data.BlackfishSQL.InstallHelp.exe; WorkingDir: {app}\Bin; Parameters: -unregister; StatusMsg: {cm:StatusUnregister,Blackfish SQLServer}; Flags: runminimized

[InstallDelete]
Type: filesandordirs; Name: {app}\license.rtf

[UninstallDelete]

[Registry]
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: App; ValueData: {app}\bin\bds.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: Personalities; ValueData: Borland Developer Studio 2007
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: ProductVersion; ValueData: 11
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: RegCompany; ValueData: Borland
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: RegOwner; ValueData: CodeGear
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: RootDir; ValueData: {app}\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: UseSharedFiles; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: Edition; ValueData: Architect
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: string; ValueName: RegMergeTimeStamp; ValueData: 08-08-2008 08|08|08
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0; ValueType: dword; ValueName: HotfixLevel; ValueData: $00000001
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ActiveX Controls; ValueType: string; ValueName: PalettePage; ValueData: ActiveX
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ActiveX Controls; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSUSERDIR)\Imports\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\DBExpress; ValueType: string; ValueName: Connection Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\dbxconnections.ini
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\DBExpress; ValueType: string; ValueName: DLLPATH; ValueData: {commondocs}\RAD Studio\dbExpress
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\DBExpress; ValueType: string; ValueName: Driver Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\dbxdrivers.ini
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\DotNetFramework; ValueType: string; ValueName: AssemblyLinker; ValueData: {win}\Microsoft.NET\Framework\v2.0.50727\al.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Experts; ValueType: string; ValueName: $(BDS)\Bin\IDEFixPack.dll; ValueData: IDEFixPack; Components: EXPERTS\IDEFIX
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Globals; ValueType: string; ValueName: InstalledDemosDir; ValueData: {commondocs}\Demos
Root: HKLM; SubKey: Software\Borland\BDS\5.0\Globals; ValueType: string; ValueName: MSBuildCpp; ValueData: 0; Tasks: MSBUILD
Root: HKLM; SubKey: Software\Borland\BDS\5.0\Globals; ValueType: string; ValueName: MSBuildDelphi; ValueData: 0; Tasks: MSBUILD
Root: HKLM; SubKey: Software\Borland\BDS\5.0\Globals; ValueType: string; ValueName: MSBuildGroup; ValueData: 0; Tasks: MSBUILD
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Globals; ValueType: string; ValueName: TargetLocation; ValueData: $(MSBuildBinPath)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\InstalledUpdates; ValueType: string; ValueName: ; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\InstalledUpdates; ValueType: string; ValueName: Main Product Update; ValueData: December 2007 Update
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\asmview100.bpl; ValueData: Assembly Browser Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\codetemplates100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\coreproide100.bpl; ValueData: Core IDE Pro Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dbkdebugide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dbkdebugproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dotnetcoreide100.bpl; ValueData: .NET Core IDE Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\exceptiondiag100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\fileexplorer100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\historyide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2100.bpl; ValueData: Borland HtmlHelp Viewer
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\idefilefilters100.bpl; ValueData: IDE File filters
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\plugview100.bpl; ValueData: Pluggable Tree View Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\projecttargets100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\refactoride100.bpl; ValueData: Borland Core Refactoring Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\startpageide100.bpl; ValueData: Borland Start Page IDE Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\todoide100.bpl; ValueData: Borland ToDo
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphidotnetcore100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorer100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmltidy100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\mlcc100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmlide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicompro100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoreproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphide100.bpl; ValueData: Delphi Win32 IDE Personality
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphierrorinsite100.bpl; ValueData: Delphi Error Insite Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphipro100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\comcore100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphivclide100.bpl; ValueData: Delphi VCL Designer IDE Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\vclmenudesigner100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoment100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\iteidew32100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\TGIDE100.bpl; ValueData: (Untitled); Components: TOGETHER
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\unittestide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\applet100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcl31w100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclact100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclbde100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldb100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclemacsedit100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmlwiz100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmpedit100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclstd100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmcn100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmid100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltee7100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclib100.bpl; ValueData: Borland VCL IBX Components for Win32
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclado100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbx4100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbxcds4100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyCore100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyProtocols100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIntraweb_90_100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmp100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclie100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclwebsnap100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclnet100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsoap100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\SOURCE\WIN32\VCL;$(BDS)\source\Win32\rtl\common;$(BDS)\SOURCE\WIN32\RTL\SYS;$(BDS)\source\Win32\rtl\win;$(BDS)\SOURCE\WIN32\WEBSNAP;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\WIN32\IBX;$(BDS)\source\Win32\Internet;$(BDS)\SOURCE\WIN32\PROPERTY EDITORS;$(BDS)\source\Win32\soap;$(BDS)\SOURCE\WIN32\XML;$(BDS)\source\Win32\db;$(BDS)\source\Indy\Indy10\Core;$(BDS)\source\Indy\Indy10\System;$(BDS)\source\Indy\Indy10\Protocols;$(BDS)\source\database\src\pas\dbx\driver;$(BDS)\source\database\src\pas\dbx\vcl;"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Debug DCU Path; ValueData: "$(BDS)\lib\Debug;$(BDS)\Lib\Debug\Indy10"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Library; ValueType: string; ValueName: Search Path; ValueData: "$(BDS)\lib;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDS)\Lib\Indy10;$(BDSCOMMONDIR)\Dcp"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Component; ValueType: string; ValueName: PalettePage; ValueData: Samples
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Component; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSPROJECTSDIR)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Menu Items; ValueType: string; ValueName: NewDelphiPackage; ValueData: Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Menu Items; ValueType: string; ValueName: NewDelphiUnit; ValueData: Unit
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiApp; ValueData: VCL Forms Application
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiForm; ValueData: Form
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\New Menu Items; ValueType: string; ValueName: Seperator.IDString4; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Personalities; ValueType: string; ValueName: Delphi.Win32; ValueData: CodeGear Delphi for Microsoft Windows
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Personalities; ValueType: string; ValueName: ; ValueData: CodeGear RAD Studio for Microsoft Windows
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Palette Hidden Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Copied Palette Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Window Forms; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Web Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: HTML Elements; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: CodeGear Data Provider; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: DB Web; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Enterprise Core Objects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Standard; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Additional; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Win32; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: System; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Win 3.1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Data Access; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Data Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: dbExpress; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: BDE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: ActiveX; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Code Snippets; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Delphi Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: C# Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Active X; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects | New Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Markup Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\ToolForm\Mapping; ValueType: string; ValueName: Other Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Params0; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Path0; ValueData: {app}\QualityCentral\qualitycentral.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Title0; ValueData: &QualityCentral
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: WorkingDir0; ValueData: {app}\QualityCentral
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Count; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Params1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Path1; ValueData: {app}\Bin\xmlmapper.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: Title1; ValueData: &XML Mapper
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\5.0\Transfer; ValueType: string; ValueName: WorkingDir1; ValueData: {app}\Bin
Root: HKLM; SubKey: SOFTWARE\Borland\BLW32; ValueType: string; ValueName: BLAPIPATH; ValueData: {cf32}\Borland Shared\BDE\
Root: HKLM; SubKey: SOFTWARE\Borland\Borland Shared; ValueType: string; ValueName: SharedFilesDir; ValueData: {cf32}\Borland Shared
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: DLLPath; ValueData: {cf32}\Borland Shared\BDE\
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: SaveConfig; ValueData: WIN32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: CONFIGFILE01; ValueData: {cf32}\Borland Shared\BDE\IDAPI32.CFG
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: RESOURCE; ValueData: 0009
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: UseCount; ValueData: 1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 7
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: MDX BLOCK SIZE; ValueData: 1024
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: MEMO FILE BLOCK SIZE; ValueData: 1024
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 25
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft Access Driver (*.mdb)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft dBase Driver (*.dbf)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft Excel Driver (*.xls)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: DRIVE:/PATH/DATABASE.MDB
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: SYSTEM DATABASE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: VERSION; ValueData: 1.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: DLL32; ValueData: IDDAO32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 7
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: BLOCK SIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: FILL FACTOR; ValueData: 95
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: STRICTINTEGRTY; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: SEPARATOR; ValueData: /
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: FOURDIGITYEAR; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: YEARBIASED; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: LEADINGZEROM; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: LEADINGZEROD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: DECIMALSEPARATOR; ValueData: .
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: THOUSANDSEPARATOR; ValueData: ,
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: DECIMALDIGITS; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: LEADINGZERON; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: TWELVEHOUR; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: AMSTRING; ValueData: AM
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: PMSTRING; ValueData: PM
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: SECONDS; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: MILSECONDS; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LOCAL SHARE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MINBUFSIZE; ValueData: 128
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MAXBUFSIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MAXFILEHANDLES; ValueData: 48
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SYSFLAGS; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LOW MEMORY USAGE LIMIT; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: AUTO ODBC; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: DEFAULT DRIVER; ValueData: PARADOX
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MEMSIZE; ValueData: 16
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SHAREDMEMSIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SHAREDMEMLOCATION; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: DATA REPOSITORY; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MTS POOLING; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\DBD\7.0\Configuration\PrivDir; ValueType: string; ValueName: ; ValueData: {cf32}\CodeGear Shared\Database Desktop\PrivDir
Root: HKLM; SubKey: SOFTWARE\Borland\DBD\7.0\Configuration\Workdir; ValueType: string; ValueName: ; ValueData: {cf32}\CodeGear Shared\Database Desktop\WorkDir
Root: HKLM; SubKey: SOFTWARE\Borland\DBD\7.0\INIT; ValueType: dword; ValueName: LANGUAGE; ValueData: $00000009
Root: HKLM; SubKey: SOFTWARE\Borland\Debugging\11.0\Evaluators; ValueType: string; ValueName: dcc100.dll; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Debugging\11.0\Evaluators; ValueType: string; ValueName: ; ValueData: dcc100.dll
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\LicenseManager.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\bds.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\bdsreg.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\dbexplor.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\dbkwmc100.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\dcc32.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\imagedit.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\serverinfo.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\tregsvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\scktsrvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\xmlmapper.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\webappdbg.exe; ValueData: 

Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open; ValueType: string; ValueName: FriendlyName; ValueData: CodeGear RAD Studio 2007
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system

Root: HKCR; SubKey: .BDSDEPLOY; ValueType: string; ValueName: ; ValueData: BDS.BDSDEPLOYFile; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: string; ValueName: ; ValueData: "BDS Deploy File  "; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\deployide100.bpl"",0"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSDEPLOY

Root: HKCR; SubKey: .BDSGROUP; ValueType: string; ValueName: ; ValueData: BDS.ProjectGroup; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Project Group; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSGROUP

Root: HKCR; SubKey: .BDSPROJ; ValueType: string; ValueName: ; ValueData: BDS.ProjectFile; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Project File; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",1"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSPROJ

Root: HKCR; SubKey: .CONFIG; ValueType: string; ValueName: ; ValueData: BDS.ConfigFile; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Config File; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\dotnetaspide100.bpl"",6"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\CONFIG

Root: HKCR; SubKey: .DFM; ValueType: string; ValueName: ; ValueData: BDS.DfmFile; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: string; ValueName: ; ValueData: Delphi Form; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",1"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DFM

Root: HKCR; SubKey: .DPK; ValueType: string; ValueName: ; ValueData: BDS.DpkFile; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",2"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPK

Root: HKCR; SubKey: .DPKW; ValueType: string; ValueName: ; ValueData: BDS.DpkwFile; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",2"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPKW

Root: HKCR; SubKey: .DPR; ValueType: string; ValueName: ; ValueData: BDS.DprFile; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",3"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPR

Root: HKCR; SubKey: .DPROJ; ValueType: string; ValueName: ; ValueData: BDS.DProjFile; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",3"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPROJ

Root: HKCR; SubKey: .GROUPPROJ; ValueType: string; ValueName: ; ValueData: BDS.GroupProjFile; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Project Group; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\GROUPPROJ

Root: HKCR; SubKey: .PAS; ValueType: string; ValueName: ; ValueData: BDS.PasFile; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: string; ValueName: ; ValueData: Delphi Source File; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",4"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\PAS

Root: HKCU; Subkey: Environment; ValueType: string; ValueName: BDSCOMMONDIR; ValueData: {commondocs}\RAD Studio\5.0; Flags: uninsdeletevalue noerror
Root: HKLM; Subkey: SYSTEM\CurrentControlSet\Control\Session Manager\Environment; ValueType: string; ValueName: BDSCOMMONDIR; ValueData: {commondocs}\RAD Studio\5.0; Flags: uninsdeletevalue noerror

[Code]

const
  conNetCfgFwMgr        = 'HNetCfg.FwMgr';
  conNetCfgFwAuthorized = 'HNetCfg.FwAuthorizedApplication';

const
  idxAssocLow           = 10;
  idxAssocHigh          = 20;

  idxTogether           = 1;

const
  NET_FW_SCOPE_ALL          = 0;
  NET_FW_SCOPE_LOCAL_SUBNET = 1;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2006.08.25
//功能：添加 WINDOWS XP SP2 防火墙规则
//参数：
////////////////////////////////////////////////////////////////////////////////
function ActiveWindowsFireWallRule(const AName, APath: string;
  Active, Allow: Boolean): Boolean;
var
  cFwMgr,
  cProfile,
  cAuthApps,
  cAuthApp: Variant;
begin
  Result := False;
  try
    cFwMgr := CreateOleObject(conNetCfgFwMgr);
    cProfile := cFwMgr.LocalPolicy.CurrentProfile;
    if not cProfile.FirewallEnabled then { 防火墙没有开启则直接退出 }
      Exit;
    if cProfile.ExceptionsNotAllowed then
      cProfile.ExceptionsNotAllowed := False;

    cAuthApps := cProfile.AuthorizedApplications;
    if Active then
    begin
      cAuthApp := CreateOleObject(conNetCfgFwAuthorized);
      cAuthApp.Name := AName;
      cAuthApp.ProcessImageFileName := APath;
      cAuthApp.Scope := NET_FW_SCOPE_ALL;
      cAuthApp.Enabled := Allow;
      cAuthApps.Add(cAuthApp);
    end
    else cAuthApps.Remove(AName);
    Result := True;
  except
    Result := False;
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
  FileName := ExpandConstant('{app}\Bin\bds.exe');
  ActiveWindowsFireWallRule('CodeGear RAD Studio for Windows', FileName, Active, False);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.09.18
//功能：检查能否安装 Together
//参数：
////////////////////////////////////////////////////////////////////////////////
function CanInstallTogether(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\vjc.exe')) or FileExists(ExpandConstant('{src}\vjredist.exe'));
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：检查文件路径是否已经关联
//参数：
////////////////////////////////////////////////////////////////////////////////
function CheckFileAssoc(const AExt: string): Boolean;
var
  S, V: string;
begin
  if not RegQueryStringValue(HKEY_CLASSES_ROOT, AExt, '', S) then
  begin
    Result := False;
    Exit;
  end;
  S := S + '\Shell\Open\Command';
  if RegQueryStringValue(HKEY_CLASSES_ROOT, S, '', V) then
    Result := V <> ''
  else Result := False;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：检查 .NET 2.0 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsFrameworkInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\MSBuild.exe'));
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：检查 VJ# 支持是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsVisualJSharpInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\vjc.exe'));
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.11.20
//功能：兼容 ANSI/UNICODE 的装载方法
//参数：
////////////////////////////////////////////////////////////////////////////////
function LoadStringFromFileEx(const FileName: String; var S: String): Boolean;
var
  T: AnsiString;
begin
  Result := LoadStringFromFile(FileName, T);
  if Result then S := T;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
  FileName, FileUrl: string;
begin
  if IsWin64 then
  begin
    FileName := ExpandConstant('{src}\NetFx20SP2_x64.exe');
    FileUrl := 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x64.exe';
  end
  else begin
    FileName := ExpandConstant('{src}\NetFx20SP2_x86.exe');
    FileUrl := 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x86.exe';
  end;
  if not IsFrameworkInstalled and not FileExists(FileName) then
  begin
    if MsgBox('The Microsoft .NET Framework 2.0 Service Pack 2 is not installed. Would you like to download Setup anyway?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = idYes then
      ShellExec('open', FileUrl, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
    Result := False;
    Exit;
  end
  else Result := True;
  FileName := ExpandConstant('{src}\vjredist.exe');
  if not IsVisualJSharpInstalled and not FileExists(FileName) then
  begin
    if MsgBox('The Microsoft Visual J# 2.0 Redistributable Package is not installed. Would you like to download Setup anyway? or Delphi Together Component disabled.',
      mbConfirmation, MB_YESNO or MB_DEFBUTTON1) = idYes then
      ShellExec('open', 'http://download.microsoft.com/download/9/a/0/9a01eb1e-fe80-41af-a3f8-ea41220918f7/vjredist.exe', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
    else MsgBox('Delphi Together Component disabled.', mbConfirmation, MB_OK);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化界面
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
var
  I: Integer;
begin
  with WizardForm.ComponentsList do
  begin
    for I := idxAssocLow to idxAssocHigh do
      Checked[I] := not CheckFileAssoc(ItemCaption[I]);
  end;
  with WizardForm do
  begin
    LicenseAcceptedRadio.Checked := True;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：全局注册 .NET 程序集
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterAssembly(const AFile: string; ARegister: Boolean);
var
  FileName, Params: string;
  ResultCode: Integer;
begin
  FileName := ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\regasm.exe');
  Params := ExpandConstant(AFile);
  if ARegister then
    Params := AddQuotes(Params) + ' /silent'
  else Params := AddQuotes(Params) + ' /unregister /silent';
  Exec(FileName, Params, '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：全局注册 .NET 程序集
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterGacAssembly(AList: TStrings; const WorkingDir: string; ARegister: Boolean);
var
  FileName, Params,
  ListFile: String;
  ResultCode: Integer;
begin
  FileName := ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\GacUtil.exe');
  ListFile := ExpandConstant('{tmp}\List.lst');
  AList.SaveToFile(ListFile);
  if ARegister then
    Params := '/nologo /silent /il "' + ListFile + '"'
  else Params := '/nologo /silent /ul "' + ListFile + '"';
  Exec(FileName, Params, WorkingDir, SW_HIDE, ewWaitUntilTerminated, ResultCode);
  DeleteFile(ListFile);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.09.18
//功能：注册 OCX/DLL/TLB 模块
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterServer(const AFile: string; ARegister: Boolean);
var
  FileName, Params, BaseDir: string;
  ResultCode: Integer;
begin
  FileName := ExpandConstant('{app}\bin\tregsvr.exe');
  Params := ExpandConstant(AFile);
  BaseDir := ExtractFileDir(Params);
  if ARegister then
    Params := AddQuotes(Params)
  else Params := AddQuotes(Params) + ' /u';
  Exec(FileName, Params, BaseDir, SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：注册必要的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterFiles(ARegister: Boolean);
begin
//  RegisterAssembly('{app}\bin\', ARegister);

  RegisterAssembly('{app}\Bin\Borland.Build.Tasks.Common.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Interop.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Refactoring.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.ToolsAPI.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.UnitTest.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Together.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Data.Explorer.dll', ARegister);

//  RegisterServer('{cf32}\Borland Shared\BDE\disp.dll', ARegister);
//  RegisterServer('{cf32}\Borland Shared\BDE\idsql32.dll', ARegister);
//  RegisterServer('{cf32}\Borland Shared\BDE\idsql32.dll', ARegister);

  RegisterServer('{app}\Bin\Borland.Build.Tasks.Common.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.Interop.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.ToolsAPI.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.Together.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Data.Explorer.tlb', ARegister);

  RegisterServer('{sys}\midas.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk105.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk105N.dll', ARegister);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：全局注册 .NET 程序集
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure RegisterSharedAssemblys(ARegister: Boolean);
var
  BaseName,
  FileName, S: String;
  FindRec: TFindRec;
  List: TStringList;
begin
  List := TStringList.Create;
  try
    List.Sorted := True;
    BaseName := ExpandConstant('{cf32}\CodeGear Shared\RAD Studio\Shared Assemblies\5.0\');
    FileName := BaseName + '*.dll';
    if FindFirst(FileName, FindRec) then
    try
      repeat
        if FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 then
        begin
          if ARegister then
            S := BaseName + FindRec.Name
          else begin
            S := FindRec.Name;
            S := Copy(S, 1, Length(S) - 4); { 去除 .dll }
          end;
          List.Add(S);
        end;
      until not FindNext(FindRec);
    finally
      FindClose(FindRec);
    end;
    if List.Count > 0 then RegisterGacAssembly(List, BaseName, ARegister);
  finally
    List.Free;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：处理 dcc32.cfg 等实际环境相关的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ReplaceConfigFile;
var
  AppPath, FileName,
  S, T: String;
  Ret: Integer;
begin
  AppPath := ExpandConstant('{app}');
  FileName := AppPath + '\Bin\dcc32.cfg';
  if LoadStringFromFileEx(FileName, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\CodeGear\RAD Studio\5.0', AppPath, True);
    if Ret > 0 then SaveStringToFile(FileName, S, False);
  end;
  FileName := AppPath + '\Bin\rsvars.bat';
  if LoadStringFromFileEx(FileName, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\CodeGear\RAD Studio\5.0', AppPath, True);
    T := ExpandConstant('{commondocs}');
    Ret := Ret + StringChangeEx(S, 'C:\Documents and Settings\All Users\Documents', T, True);
    T := ExpandConstant('{win}');
    Ret := Ret + StringChangeEx(S, 'c:\WINDOWS', T, True);
    if Ret > 0 then SaveStringToFile(FileName, S, False);
  end;
  FileName := AppPath + '\Bin\cglm.ini';
  if LoadStringFromFileEx(FileName, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\CodeGear\RAD Studio\5.0', AppPath, True);
    if Ret > 0 then SaveStringToFile(FileName, S, False);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.09.23
//功能：更新环境变量
//参数：
////////////////////////////////////////////////////////////////////////////////
function SetEnvironmentVariableW(lpName, lpValue: PChar): BOOL; external 'SetEnvironmentVariableW@kernel32.dll stdcall';

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.03.20
//功能：更新环境变量
//参数：
//注意：卸载期间不能使用 IsTaskSelected 判断
////////////////////////////////////////////////////////////////////////////////
procedure UpdateEnvironment(AInstall: Boolean);
var
  AppPath, S, Prex: string;
begin
  if AInstall and not IsTaskSelected('ENV') then
    Exit;
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', S) then
    Exit;
  AppPath := ExpandConstant('{commondocs}\RAD Studio\5.0\bpl');
  Prex := ';' + AppPath;
  if AInstall then
  begin
    if Pos(Prex, S) <> 0 then
      Exit;
    S := S + Prex;
  end
  else begin
    if Pos(Prex, S) = 0 then
      Exit;
    StringChangeEx(S, Prex, '', True);
  end;
  RegWriteExpandStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', S);
  SetEnvironmentVariableW('Path', S);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.09.24
//功能：更新界面状态
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure CurPageChanged(CurPageID: Integer);
var
  OK: Boolean;
begin
  case CurPageID of
    wpSelectComponents:
      with WizardForm.ComponentsList do
      begin
        OK := CanInstallTogether();
        if not OK then
          Checked[idxTogether] := False;
        ItemEnabled[idxTogether] := OK;
      end;
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
        UpdateEnvironment(True);
      end;
    ssPostInstall:
      begin
        RegisterSharedAssemblys(True);
        RegisterFiles(True);
        ReplaceConfigFile;
        SetWindowsFireWallRule(False);
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
        RegisterSharedAssemblys(False);
        UpdateEnvironment(False);
      end;
    usPostUninstall:
      begin
        RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Borland\BDS\5.0');
        RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'SOFTWARE\Borland\BDS\5.0');
        SetWindowsFireWallRule(False);
      end;
  end;
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
