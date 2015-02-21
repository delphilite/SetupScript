;{ *********************************************************************** }
;{                                                                         }
;{   Embarcadero Delphi XE Lite 安装脚本                                   }
;{                                                                         }
;{   设计：Lsuper 2010.08.28                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2010 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   GetFileVersion("Files\Embarcadero\RAD Studio\8.0\bin\bds.exe")
#define AppLiteVersion  "4.3"
#define AppFileNamePrex "Embarcadero.Delphi.XE.RTM.Inc.Update1"
#define AppNamePrex     "Embarcadero Delphi XE Lite"
#define AppWebURL       "http://www.embarcadero.com/"
#define AppSupportURL   "http://support.embarcadero.com/"

[Setup]
AllowUNCPath=false
AppComments=Embarcadero RAD Studio for Windows
AppCopyright=Copyright ? 1996-2010 Embarcadero Technologies, Inc.
AppID={{A127FEDA-E0A5-49F5-973F-A3271C7135DC}
AppModifyPath="{app}\UninsHs.exe" /m0={{A127FEDA-E0A5-49F5-973F-A3271C7135DC}
AppMutex={{5B3B7FBD-6014-4113-BB83-233B2998BF13}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppSupportURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
ChangesEnvironment=true
DefaultDirName={pf32}\Embarcadero\RAD Studio\8.0
DefaultGroupName=Embarcadero RAD Studio XE
MinVersion=,5.0.2195sp3
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayIcon={app}\Bin\bds.exe
UninstallDisplayName=Embarcadero Delphi XE
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright ? 1996-2010 Embarcadero Technologies, Inc.
VersionInfoDescription=Embarcadero Technologies, Inc.
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\Embarcadero\RAD Studio\8.0\license_en.rtf
SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=lzma2/max
SolidCompression=true

SignedUninstaller=true
SignedUninstallerDir=Files\Utils

[_ISToolPreCompile]
;Name: ..\Sign\SignFile.cmd; Parameters: Files\Utils\UninsHs.exe

[_ISToolPostCompile]
;Name: ..\Sign\SignFile.cmd; Parameters: Output\{#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}.exe

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
BeveledLabel=RSD

[CustomMessages]
en.StatusInstalling=Installing %1...
en.StatusUninstalling=Uninstalling %1...
en.StatusRegister=Register %1...
en.StatusUnregister=Unregister %1...
en.StatusRunning=Running %1...
en.StatusStopping=Stopping %1...
en.StatusSavingUninstall=Saving uninstall information...
en.AdditionalOptions=Additional options:
en.AdditionalFiles=Additional files:
en.IncludeFile=Include %1:
en.AddEnvironment=Add Bpl Path Environment Variable

chs.StatusInstalling=正在安装 %1...
chs.StatusUninstalling=正在卸载 %1...
chs.StatusRegister=正在注册 %1...
chs.StatusUnregister=正在反注册 %1...
chs.StatusRunning=正在启动 %1...
chs.StatusStopping=正在停止 %1...
chs.StatusSavingUninstall=正在保存卸载信息...
chs.AdditionalOptions=附加选项:
chs.AdditionalFiles=附加文件:
chs.IncludeFile=整合 %1
chs.AddEnvironment=添加包输出路径到环境变量

[Types]
Name: LITE; Description: Lite installation
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: Delphi Core Files; Types: FULL LITE CUSTOM; Flags: fixed
Name: TOGETHER; Description: Delphi Together; Types: FULL; Check: CanInstallTogether
Name: EXPERTS; Description: Delphi Experts; Types: FULL
Name: EXPERTS\BEYOND; Description: Beyond Compare IDE Package; Types: FULL
Name: SAMPLES; Description: Delphi Samples; Types: FULL
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

[Tasks]
Name: ICON;   Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalOptions}
Name: QUICK;  Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked; OnlyBelowVersion: 5.0,6.1
Name: ENV;    Description: {cm:AddEnvironment}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked
Name: PATCH;  Description: {cm:IncludeFile,r0lex's Keygen}; GroupDescription: {cm:AdditionalFiles}

[Dirs]
Name: {userappdata}\Embarcadero\RAD Studio\8.0

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480
Source: {src}\vjredist.exe; Flags: external dontcopy; Components: TOGETHER; Check: not IsVisualJSharpInstalled; ExternalSize: 3796672

Source: Files\Embarcadero\RAD Studio\8.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Embarcadero\RAD Studio\Modeling\*; DestDir: {app}\Bin; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: TOGETHER
Source: Files\Embarcadero\RAD Studio\QualityCentral\*; DestDir: {app}\QualityCentral; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: QC
Source: Files\Embarcadero\RAD Studio\Samples\*; DestDir: {app}\Samples; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SAMPLES

Source: Files\Common Files\Borland Shared\*; DestDir: {cf32}\Borland Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Common Files\CodeGear Shared\*; DestDir: {cf32}\CodeGear Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Data\*; DestDir: {cf32}\CodeGear Shared\Data; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\DATA
Source: Files\Common Files\Images\*; DestDir: {cf32}\CodeGear Shared\Images; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\IMAGE

Source: Files\Application Data\Embarcadero\*; DestDir: {commonappdata}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Documents\RAD Studio\*; DestDir: {commondocs}\RAD Studio; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

;Source: Files\User Data\Embarcadero\*; DestDir: {userappdata}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt

Source: Files\Utils\GacUtil.*; DestDir: {win}\Microsoft.NET\Framework\v2.0.50727; Flags: sortfilesbyextension
Source: Files\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Files\Utils\UninsHs.exe; DestDir: {app}; Flags: restartreplace

Source: Files\Utils\XEDistiller.exe; DestDir: {app}

Source: Files\Utils\BorCreateUDL.exe; DestDir: {tmp}; Flags: deleteafterinstall
Source: Files\Utils\SetACL.exe; DestDir: {tmp}; Flags: deleteafterinstall

Source: Files\Keygen\*; DestDir: {app}\Keygen; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Tasks: PATCH

[Icons]
Name: {group}\Delphi XE; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE Program
Name: {group}\RAD Studio Command Prompt; Filename: %comspec%; WorkingDir: {app}\bin; Parameters: "/K ""{app}\bin\rsvars.bat"""; Comment: Open RAD Studio Command Prompt
Name: {group}\Samples; Filename: {app}\Samples; WorkingDir: {app}\Samples; Components: SAMPLES
Name: {group}\XE Distiller; Filename: {app}\XEDistiller.exe; Comment: XE Distiller
Name: {group}\XML Mapper; Filename: {app}\bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: Run the XML Mapper tool
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{A127FEDA-E0A5-49F5-973F-A3271C7135DC}; Comment: Removes this Embarcadero product
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Uninstall this Embarcadero product

Name: {userdesktop}\Delphi XE; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE Program

Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Delphi XE; Filename: {app}\bin\bds.exe; Parameters: -pDelphi; Tasks: QUICK; OnlyBelowVersion: 5.0,6.1

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64
Filename: {src}\vjredist.exe; WorkingDir: {src}; Parameters: "/Q /C:""install.exe /q"""; StatusMsg: {cm:StatusInstalling,Microsoft Visual J Sharp 2.0 Redistributable Package}; Components: TOGETHER; Check: not IsVisualJSharpInstalled

Filename: {tmp}\BorCreateUDL.exe; WorkingDir: {tmp}; Parameters: """{cf32}\System\ole db\Data Links\DBDEMOS.udl"" ""Microsoft.Jet.OLEDB.4.0"" ""{cf32}\CodeGear Shared\Data\DBDEMOS.mdb"""; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized
Filename: {tmp}\SetACL.exe; WorkingDir: {tmp}; Parameters: "-on ""{commonappdata}\Embarcadero"" -ot file -actn ace -ace ""n:S-1-5-32-545;p:full;s:y;i:sc,so"""; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized
Filename: {app}\Keygen\Activator.exe; WorkingDir: {app}\Keygen; Parameters: -process; StatusMsg: {cm:StatusRunning,Embarcadero Delphi XE Activator}; Flags: runminimized; Tasks: PATCH
Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{A127FEDA-E0A5-49F5-973F-A3271C7135DC},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Description: {cm:LaunchProgram,Embarcadero Delphi XE}; Flags: nowait postinstall

[UninstallRun]

[InstallDelete]
Type: files; Name: {app}\license_en.rtf
;Type: filesandordirs; Name: {commonappdata}\Embarcadero

[UninstallDelete]

[Registry]
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: App; ValueData: {app}\bin\bds.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: Compatible; ValueData: 33957
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: ProductVersion; ValueData: 15
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: RegCompany; ValueData: Embarcadero
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: RegOwner; ValueData: Delphi
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: RootDir; ValueData: {app}\
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: UseSharedFiles; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: Edition; ValueData: Architect
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0; ValueType: string; ValueName: RegMergeTimeStamp; ValueData: 9-9-2010 21|21|21
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ActiveX Controls; ValueType: string; ValueName: PalettePage; ValueData: ActiveX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ActiveX Controls; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSUSERDIR)\Imports\
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\AutoRun
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\DBExpress; ValueType: string; ValueName: Connection Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\8.0\dbxconnections.ini
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\DBExpress; ValueType: string; ValueName: DLLPATH; ValueData: {commondocs}\RAD Studio\dbExpress\8.0
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\DBExpress; ValueType: string; ValueName: Driver Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\8.0\dbxdrivers.ini
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueName: dcc150.dll; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueName: ; ValueData: dcc150.dll
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\DotNetFramework; ValueType: string; ValueName: AssemblyLinker; ValueData: {win}\Microsoft.NET\Framework\v2.0.50727\al.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Experts; ValueType: string; ValueName: Beyond Compare IDE Package; ValueData: $(BDS)\Bin\Scooter.BeyondCompare.Expert.dll; Components: EXPERTS\BEYOND
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Globals; ValueType: string; ValueName: AlwaysCheckPathOnStartup; ValueData: 0; Check: not IsTaskSelected('ENV')
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Globals; ValueType: string; ValueName: InstalledDemosDir; ValueData: {commondocs}\Demos
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Globals; ValueType: string; ValueName: TargetLocation; ValueData: $(MSBuildBinPath)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\InstalledUpdates; ValueType: string; ValueName: ; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\InstalledUpdates; ValueType: string; ValueName: Main Product Update; ValueData: Update 1 for Delphi XE and C++Builder XE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\asmview150.bpl; ValueData: Assembly Browser Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\comptoolbar150.bpl; ValueData: Component Toolbar Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dbkdebugide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dotnetcoreide150.bpl; ValueData: .NET Core IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\exceptiondiag150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\fileexplorer150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\historyide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmlhelp2150.bpl; ValueData: HtmlHelp Viewer
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\idefilefilters150.bpl; ValueData: IDE File filters
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\plugview150.bpl; ValueData: Pluggable Tree View Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\projecttargets150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\startpageide150.bpl; ValueData: Start Page IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\tlbview150.bpl; ValueData: TypeLibrary Browser Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\codetemplates150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\coreproide150.bpl; ValueData: Core IDE Pro Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dbkdebugproide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\refactoride150.bpl; ValueData: Core Refactoring Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\todoide150.bpl; ValueData: ToDo
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\delphidotnetcore150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\DataExplorer150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmltidy150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\mlcc150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmlide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphicompro150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphide150.bpl; ValueData: Delphi Win32 IDE Personality
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphierrorinsite150.bpl; ValueData: Delphi Error Insite Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphipro150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\comcore150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphivclide150.bpl; ValueData: Delphi VCL Designer IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\vclmenudesigner150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\win32debugide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\win32debugproide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphicoment150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphicoreproide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\iteidew32150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\TGIDE150.bpl; ValueData: Modeling IDE Integration; Components: TOGETHER
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\unittestide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmp150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\svnide150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltee9150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\applet150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcl31w150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclact150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclbde150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldb150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclemacsedit150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmlwiz150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmpedit150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclstd150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltouch150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\samplevisualizers150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmcn150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmid150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclib150.bpl; ValueData: VCL IBX Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclado150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIndyCore150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIndyProtocols150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIntraweb_110_150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclie150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclwebsnap150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclnet150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsoap150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclribbon150.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapIndy10ServerTransport150.bpl; ValueData: Embarcadero DataSnap Server Transport Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapProviderClient150.bpl; ValueData: Embarcadero DataSnap Provider Client Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapClient150.bpl; ValueData: Embarcadero DataSnap Client Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapServer150.bpl; ValueData: Embarcadero DataSnap Server Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclWindowsAzureManagement150.bpl; ValueData: Embarcadero Windows Azure Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDeployCloud150.bpl; ValueData: Embarcadero Deploy to the Cloud
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDBXDrivers150.bpl; ValueData: CodeGear DBX Common Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbx150.bpl; ValueData: CodeGear dbExpress Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDBXDriversEnt150.bpl; ValueData: CodeGear DBX Enterprise Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbxcds150.bpl; ValueData: CodeGear dbExpress SimpleDS Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\win;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\db;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\database;"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(Platform)\debug
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: HPP Output Directory; ValueData: $(BDSCOMMONDIR)\hpp
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Language Library Path; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Library; ValueType: string; ValueName: Search Path; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp;$(BDS)\include"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Component; ValueType: string; ValueName: PalettePage; ValueData: Samples
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Component; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSPROJECTSDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Menu Items; ValueType: string; ValueName: NewDelphiPackage; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Menu Items; ValueType: string; ValueName: NewDelphiUnit; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiApp; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiForm; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\New Menu Items; ValueType: string; ValueName: Seperator.IDString4; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Personalities; ValueType: string; ValueName: Delphi.Win32; ValueData: Delphi XE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Personalities; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio XE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Palette Hidden Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Copied Palette Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Window Forms; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Web Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: HTML Elements; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: CodeGear Data Provider; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: DB Web; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Enterprise Core Objects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Standard; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Additional; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Win32; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: System; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Win 3.1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Data Access; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Data Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: dbExpress; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Client; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Server; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: BDE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: ActiveX; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Code Snippets; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Delphi Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: C# Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Active X; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects | New Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Markup Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\ToolForm\Mapping; ValueType: string; ValueName: Other Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Params0; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Path0; ValueData: {app}\QualityCentral\QCClientDownload.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Title0; ValueData: @(IDE, sQualityCentral)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: WorkingDir0; ValueData: {app}\QualityCentral
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Count; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Params1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Path1; ValueData: {app}\bin\xmlmapper.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: Title1; ValueData: @(IDE, sXMLMapper)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Transfer; ValueType: string; ValueName: WorkingDir1; ValueData: {app}\bin
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Borland Shared; ValueType: string; ValueName: SharedFilesDir; ValueData: {cf32}\Borland Shared
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\BDSLauncher.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\BDSSetLang.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\convert.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\drinterop.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\Formatter.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\WSDLImp.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\LicenseManager.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\bds.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\bdsreg.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\cgconfig.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\dbexplor.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\dcc32.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\serverinfo.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\tregsvr.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\scktsrvr.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\xmlmapper.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\etm.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\AuditsCLI.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\GenDocCLI.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\webappdbg.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\bin\sqlmon.exe; ValueData: EN

Root: HKLM; SubKey: SOFTWARE\Borland\BLW32; ValueType: string; ValueName: BLAPIPATH; ValueData: {cf32}\Borland Shared\BDE\
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
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\REPOSITORIES
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

Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open; ValueType: string; ValueName: FriendlyName; ValueData: Embarcadero RAD Studio XE
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system

Root: HKCR; SubKey: .BDSDEPLOY; ValueType: string; ValueName: ; ValueData: BDS.BDSDEPLOYFile; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: string; ValueName: ; ValueData: "BDS Deploy File  "; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1700; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\deployide150.bpl"",0"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSDEPLOY

Root: HKCR; SubKey: .BDSGROUP; ValueType: string; ValueName: ; ValueData: BDS.ProjectGroup; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project Group; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1713; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\bds.exe"",2"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSGROUP

Root: HKCR; SubKey: .BDSPROJ; ValueType: string; ValueName: ; ValueData: BDS.ProjectFile; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project File; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1711; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\bds.exe"",1"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSPROJ

Root: HKCR; SubKey: .CONFIG; ValueType: string; ValueName: ; ValueData: BDS.ConfigFile; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Config File; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1702; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\dotnetaspide150.bpl"",6"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\CONFIG

Root: HKCR; SubKey: .DFM; ValueType: string; ValueName: ; ValueData: BDS.DfmFile; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: string; ValueName: ; ValueData: Delphi Form; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1706; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",1"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DFM

Root: HKCR; SubKey: .DPK; ValueType: string; ValueName: ; ValueData: BDS.DpkFile; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1707; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",2"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPK

Root: HKCR; SubKey: .DPKW; ValueType: string; ValueName: ; ValueData: BDS.DpkwFile; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1707; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",2"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPKW

Root: HKCR; SubKey: .DPR; ValueType: string; ValueName: ; ValueData: BDS.DprFile; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1709; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",3"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPR

Root: HKCR; SubKey: .DPROJ; ValueType: string; ValueName: ; ValueData: BDS.DProjFile; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1709; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",3"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPROJ

Root: HKCR; SubKey: .GROUPPROJ; ValueType: string; ValueName: ; ValueData: BDS.GroupProjFile; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project Group; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1713; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\bds.exe"",2"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\GROUPPROJ

Root: HKCR; SubKey: .PAS; ValueType: string; ValueName: ; ValueData: BDS.PasFile; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: string; ValueName: ; ValueData: Delphi Source File; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @BDSShellRes.dll,-1710; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\bin\delphicoreide150.bpl"",4"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\bin\bdsLauncher.exe"" ""{app}\bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\PAS

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
  FileName := ExpandConstant('{app}\bin\bds.exe');
  ActiveWindowsFireWallRule('Embarcadero RAD Studio for Windows', FileName, Active, False);
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
//  RegisterAssembly('{app}\bin\Borland.Studio.UnitTest.dll', ARegister);

  RegisterAssembly('{app}\bin\Borland.Build.Tasks.Common.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Cpp.Structure.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Interop.dll', ARegister);
  RegisterAssembly('{app}\bin\Embarcadero.Studio.Modeling.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Refactoring.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.ToolsAPI.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Studio.Toolsets.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Data.Explorer.Common.dll', ARegister);
  RegisterAssembly('{app}\bin\Borland.Data.Explorer.dll', ARegister);

//  RegisterServer('{cf32}\Borland Shared\BDE\disp.dll', ARegister);
//  RegisterServer('{cf32}\Borland Shared\BDE\idsql32.dll', ARegister);
//  RegisterServer('{cf32}\Borland Shared\BDE\idsql32.dll', ARegister);

  RegisterServer('{app}\bin\Borland.Studio.ToolsAPI.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Interop.tlb', ARegister);
  RegisterServer('{app}\bin\Embarcadero.Studio.Modeling.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Build.Tasks.Common.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Refactoring.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Studio.Toolsets.tlb', ARegister);
  RegisterServer('{app}\bin\bordbk150.dll', ARegister);
  RegisterServer('{app}\bin\bordbk150N.dll', ARegister);
  RegisterServer('{sys}\midas.dll', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.Common.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.tlb', ARegister);
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
    BaseName := ExpandConstant('{cf32}\CodeGear Shared\RAD Studio\Shared Assemblies\8.0\');
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
    Ret := StringChangeEx(S, 'C:\Program Files\Embarcadero\RAD Studio\8.0', AppPath, True);
    if Ret > 0 then SaveStringToFile(FileName, S, False);
  end;
  FileName := AppPath + '\Bin\rsvars.bat';
  if LoadStringFromFileEx(FileName, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\Embarcadero\RAD Studio\8.0', AppPath, True);
    T := ExpandConstant('{commondocs}');
    Ret := Ret + StringChangeEx(S, 'C:\Documents and Settings\All Users\Documents', T, True);
    T := ExpandConstant('{win}');
    Ret := Ret + StringChangeEx(S, 'c:\WINDOWS', T, True);
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
  AppPath := ExpandConstant('{commondocs}\RAD Studio\8.0\Bpl');
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
        RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Embarcadero\BDS\8.0');
        RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Embarcadero\ETM\15.0');
        RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'SOFTWARE\Embarcadero\BDS\8.0');
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
