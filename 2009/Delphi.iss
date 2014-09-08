;{ *********************************************************************** }
;{                                                                         }
;{   CodeGear Delphi 2009 Lite 安装脚本                                    }
;{                                                                         }
;{   设计：Lsuper 2008.09.04                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2008 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion GetFileVersion("Files\CodeGear\RAD Studio\6.0\bin\bds.exe")
#define AppLiteVersion "2.8"
#define AppFileNamePrex "CodeGear.Delphi.2009.RTM.Inc.Update4"
#define AppNamePrex "CodeGear Delphi 2009 Lite"
#define AppWebURL "http://www.codegear.com"

[Setup]
AllowUNCPath=false
AppComments=CodeGear Delphi 2009
AppCopyright=Copyright ? 1996-2009 Embarcadero Technologies, Inc.
AppID={{132560D4-C091-4730-A56D-7B7978D14D39}
AppModifyPath="{app}\UninsHs.exe" /m0={{132560D4-C091-4730-A56D-7B7978D14D39}
AppMutex={{5EEA1EC5-576E-427D-B028-76496B867A5A}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppWebURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
DefaultDirName={pf32}\CodeGear\RAD Studio\6.0
DefaultGroupName=CodeGear RAD Studio 2009
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayName=CodeGear Delphi 2009
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright ? 1996-2009 Embarcadero Technologies, Inc.
VersionInfoDescription=CodeGear RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\CodeGear\RAD Studio\6.0\license.rtf
SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=lzma
SolidCompression=true

SignedUninstaller=true
SignedUninstallerDir=Files\Utils

[_ISToolPreCompile]
Name: ..\Sign\SignFile.cmd; Parameters: Files\Utils\UninsHs.exe
Name: ..\Sign\SignFile.cmd; Parameters: Files\Utils\uninst-5.1.2-848a484d18.e32

[_ISToolPostCompile]
Name: ..\Sign\SignFile.cmd; Parameters: Output\{#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}.exe

[Languages]
Name: chs; MessagesFile: Files\Setup\Chinese.isl
Name: en; MessagesFile: Files\Setup\English.isl

[Messages]
BeveledLabel=BDS

[CustomMessages]
chs.StatusInstalling=正在安装 %1...
en.StatusInstalling=Installing %1...

chs.StatusUninstalling=正在卸载 %1...
en.StatusUninstalling=Uninstalling %1...

chs.StatusRegister=正在注册 %1...
en.StatusRegister=Register %1...

chs.StatusUnregister=正在反注册 %1...
en.StatusUnregister=Unregister %1...

chs.StatusRunning=正在启动 %1...
en.StatusRunning=Running %1...

chs.StatusStopping=正在停止 %1...
en.StatusStopping=Stopping %1...

chs.SetEnvironment=添加 BDS 路径到环境变量
en.SetEnvironment=Setup BDS Path Environment

chs.StatusSavingUninstall=正在保存卸载信息...
en.StatusSavingUninstall=Saving uninstall information...

chs.RunEntryExec=运行 %1
en.RunEntryExec=Run %1

[Types]
Name: LITE; Description: Lite installation
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: Delphi Core Files; Types: FULL LITE CUSTOM; Flags: fixed
Name: TOGETHER; Description: Delphi Together; Types: FULL; Check: CanInstallTogether
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
;Name: ENV; Description: {cm:SetEnvironment}; Flags: unchecked
Name: ICON; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Dirs]
Name: {commondocs}\RAD Studio\6.0
Name: {commonappdata}\Embarcadero\.licenses

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480
Source: {src}\vjredist.exe; Flags: external dontcopy; Components: TOGETHER; Check: not IsVisualJSharpInstalled; ExternalSize: 3796672

Source: Crack\D2009OpenFix.bpl; DestDir: {app}\Bin; Flags: ignoreversion

Source: Files\CodeGear\RAD Studio\6.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\CodeGear\RAD Studio\Demos\*; DestDir: {app}\Demos; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: DEMOS
Source: Files\CodeGear\RAD Studio\QualityCentral\*; DestDir: {app}\QualityCentral; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: QC
Source: Files\CodeGear\RAD Studio\Together\*; DestDir: {app}\Bin; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: TOGETHER
Source: Files\Common Files\Borland Shared\*; DestDir: {cf32}\Borland Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Common Files\CodeGear Shared\*; DestDir: {cf32}\CodeGear Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Data\*; DestDir: {cf32}\CodeGear Shared\Data; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\DATA
Source: Files\Common Files\Images\*; DestDir: {cf32}\CodeGear Shared\Images; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\IMAGE
;Source: Files\Common Files\Application Data\*; DestDir: {commonappdata}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Documents\*; DestDir: {commondocs}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Utils\DelphiDistiller.exe; DestDir: {app}
Source: Files\Utils\GacUtil.*; DestDir: {win}\Microsoft.NET\Framework\v2.0.50727; Flags: sortfilesbyextension
Source: Files\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Files\Utils\UninsHs.exe; DestDir: {app}; Flags: ignoreversion

[Icons]
Name: {group}\Delphi 2009; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi 2009 Program
Name: {group}\Delphi Distiller; Filename: {app}\DelphiDistiller.exe; Comment: Delphi Distiller
Name: {group}\Demos; Filename: {app}\Demos; WorkingDir: {app}\Demos; Components: DEMOS
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{132560D4-C091-4730-A56D-7B7978D14D39}; Comment: Removes this CodeGear product
Name: {group}\RAD Studio Command Prompt; Filename: %comspec%; WorkingDir: {app}\bin; Parameters: "/K ""{app}\bin\rsvars.bat"""; Comment: Open RAD Studio Command Prompt
Name: {group}\XML Mapper; Filename: {app}\bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: Run the XML Mapper tool
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Uninstall this CodeGear product

Name: {userdesktop}\Delphi 2009; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi 2009 Program

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64
Filename: {src}\vjredist.exe; WorkingDir: {src}; Parameters: "/Q /C:""install.exe /q"""; StatusMsg: {cm:StatusInstalling,Microsoft Visual J Sharp 2.0 Redistributable Package}; Components: TOGETHER; Check: not IsVisualJSharpInstalled

Filename: {app}\Bin\Borland.Data.BlackfishSQL.InstallHelp.exe; WorkingDir: {app}\Bin; Parameters: -register; StatusMsg: {cm:StatusRegister,Blackfish SQLServer}; Flags: runminimized
Filename: {app}\Bin\BSQLServer.exe; WorkingDir: {app}\Bin; Parameters: -install; StatusMsg: {cm:StatusInstalling,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {sys}\Cmd.exe; WorkingDir: {app}\Bin; Parameters: "/c ""net start BlackfishSQL"""; StatusMsg: {cm:StatusRunning,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{132560D4-C091-4730-A56D-7B7978D14D39},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\Bin\bds.exe; Description: {cm:RunEntryExec,CodeGear Delphi 2009}; Flags: nowait postinstall

[UninstallRun]
Filename: {sys}\Cmd.exe; WorkingDir: {app}\Bin; Parameters: "/c ""net stop BlackfishSQL"""; StatusMsg: {cm:StatusStopping,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\Bin\BSQLServer.exe; WorkingDir: {app}\Bin; Parameters: -remove; StatusMsg: {cm:StatusUninstalling,Blackfish SQLServer}; Components: BLACKFISH; Flags: runminimized
Filename: {app}\Bin\Borland.Data.BlackfishSQL.InstallHelp.exe; WorkingDir: {app}\Bin; Parameters: -unregister; StatusMsg: {cm:StatusUnregister,Blackfish SQLServer}; Flags: runminimized

[InstallDelete]
Type: filesandordirs; Name: {app}\license.rtf

[UninstallDelete]

[Registry]
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: App; ValueData: {app}\bin\bds.exe
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: Personalities; ValueData: Borland Developer Studio 2007
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: ProductVersion; ValueData: 12
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: RegCompany; ValueData: Borland
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: RegOwner; ValueData: CodeGear
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: RootDir; ValueData: {app}\
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: UseSharedFiles; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: Edition; ValueData: Architect
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: RegMergeTimeStamp; ValueData: 03-22-2009 12|12|12
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ActiveX Controls; ValueType: string; ValueName: PalettePage; ValueData: ActiveX
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ActiveX Controls; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSUSERDIR)\Imports\
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\DBExpress; ValueType: string; ValueName: Connection Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\dbxconnections.ini
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\DBExpress; ValueType: string; ValueName: DLLPATH; ValueData: {commondocs}\RAD Studio\dbExpress
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\DBExpress; ValueType: string; ValueName: Driver Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\dbxdrivers.ini
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\DBPack; ValueType: string; ValueName: BSQL; ValueData: 1
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Debugging\CodeGear Debuggers\Evaluators; ValueType: string; ValueName: dcc120.dll; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Debugging\CodeGear Debuggers\Evaluators; ValueType: string; ValueName: ; ValueData: dcc120.dll
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\DotNetFramework; ValueType: string; ValueName: AssemblyLinker; ValueData: {win}\Microsoft.NET\Framework\v2.0.50727\al.exe
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Globals; ValueType: string; ValueName: InstalledDemosDir; ValueData: {commondocs}\Demos
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Globals; ValueType: string; ValueName: TargetLocation; ValueData: $(MSBuildBinPath)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\InstalledUpdates; ValueType: string; ValueName: Main Product Update; ValueData: Delphi and C++Builder 2009 Update 3
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\InstalledUpdates; ValueType: string; ValueName: DBPack Update; ValueData: Delphi and C++Builder 2009 Update 4 (Database Pack Update)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Assemblies; ValueType: string; ValueName: $(BDS)\bin\Borland.Vcl.Design.DbxSimpleCtrl.dll; ValueData: CodeGear Simple Dataset (Dbx)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\asmview120.bpl; ValueData: Assembly Browser Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\codetemplates120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\coreproide120.bpl; ValueData: Core IDE Pro Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dbkdebugide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dbkdebugproide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dotnetcoreide120.bpl; ValueData: .NET Core IDE Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\exceptiondiag120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\fileexplorer120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\historyide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2120.bpl; ValueData: Borland HtmlHelp Viewer
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\idefilefilters120.bpl; ValueData: IDE File filters
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\plugview120.bpl; ValueData: Pluggable Tree View Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\projecttargets120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\refactoride120.bpl; ValueData: Borland Core Refactoring Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\startpageide120.bpl; ValueData: Borland Start Page IDE Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\tlbview120.bpl; ValueData: TypeLibrary Browser Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\todoide120.bpl; ValueData: Borland ToDo
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphidotnetcore120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorer120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmltidy120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\mlcc120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmlide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicompro120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoreproide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphide120.bpl; ValueData: Delphi Win32 IDE Personality
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphierrorinsite120.bpl; ValueData: Delphi Error Insite Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphipro120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\comcore120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphivclide120.bpl; ValueData: Delphi VCL Designer IDE Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\vclmenudesigner120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugproide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoment120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\iteidew32120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\TGIDE120.bpl; ValueData: (Untitled); Components: TOGETHER
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\unittestide120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\applet120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcl31w120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclact120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclbde120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldb120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclemacsedit120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmlwiz120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmpedit120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclstd120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmcn120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmid120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltee8120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclib120.bpl; ValueData: Borland VCL IBX Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclado120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyCore120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyProtocols120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIntraweb_100_120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmp120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclie120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclwebsnap120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclnet120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsoap120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclribbon120.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapIndy10ServerTransport120.bpl; ValueData: CodeGear DataSnap Server Transport Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapProviderClient120.bpl; ValueData: CodeGear DataSnap Provider Client Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDataSnapServer120.bpl; ValueData: CodeGear DataSnap Server Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDBXDrivers120.bpl; ValueData: CodeGear DBX Common Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbx120.bpl; ValueData: CodeGear dbExpress Components
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclDBXDriversEnt120.bpl; ValueData: CodeGear DBX Enterprise Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldbxcds120.bpl; ValueData: CodeGear dbExpress SimpleDS Components
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\SOURCE\WIN32\VCL;$(BDS)\source\Win32\rtl\common;$(BDS)\SOURCE\WIN32\RTL\SYS;$(BDS)\source\Win32\rtl\win;$(BDS)\SOURCE\WIN32\WEBSNAP;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\WIN32\IBX;$(BDS)\source\Win32\Internet;$(BDS)\SOURCE\WIN32\PROPERTY EDITORS;$(BDS)\source\Win32\soap;$(BDS)\SOURCE\WIN32\XML;$(BDS)\source\Win32\db;$(BDS)\source\Indy\Indy10\Core;$(BDS)\source\Indy\Indy10\System;$(BDS)\source\Indy\Indy10\Protocols;$(BDS)\source\database;"
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Debug DCU Path; ValueData: "$(BDS)\lib\Debug;$(BDS)\Lib\Debug\Indy10"
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Library; ValueType: string; ValueName: Search Path; ValueData: "$(BDS)\lib;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDS)\Lib\Indy10;$(BDSCOMMONDIR)\Dcp;$(BDS)\include"
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Component; ValueType: string; ValueName: PalettePage; ValueData: Samples
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Component; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSPROJECTSDIR)
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Menu Items; ValueType: string; ValueName: NewDelphiPackage; ValueData: Package
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Menu Items; ValueType: string; ValueName: NewDelphiUnit; ValueData: Unit
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiApp; ValueData: VCL Forms Application
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiForm; ValueData: Form
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\New Menu Items; ValueType: string; ValueName: Seperator.IDString4; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Personalities; ValueType: string; ValueName: Delphi.Win32; ValueData: CodeGear Delphi for Microsoft Windows
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Personalities; ValueType: string; ValueName: ; ValueData: CodeGear RAD Studio for Microsoft Windows
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Palette Hidden Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Copied Palette Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Window Forms; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Web Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: HTML Elements; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: CodeGear Data Provider; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: DB Web; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Enterprise Core Objects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Standard; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Additional; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Win32; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: System; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Win 3.1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Data Access; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Data Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: dbExpress; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Client; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Server; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: BDE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: ActiveX; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Code Snippets; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Delphi Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: C# Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Active X; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects | New Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Markup Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\ToolForm\Mapping; ValueType: string; ValueName: Other Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Params0; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Path0; ValueData: {app}\QualityCentral\QCClientDownload.exe
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Title0; ValueData: &QualityCentral
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: WorkingDir0; ValueData: {app}\QualityCentral
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Count; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Params1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Path1; ValueData: {app}\Bin\xmlmapper.exe
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: Title1; ValueData: &XML Mapper
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\Transfer; ValueType: string; ValueName: WorkingDir1; ValueData: {app}\Bin
Root: HKLM; SubKey: SOFTWARE\CodeGear\Borland Shared; ValueType: string; ValueName: SharedFilesDir; ValueData: {cf32}\Borland Shared
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\LicenseManager.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\bds.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\bdsreg.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\dbexplor.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\dcc32.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\serverinfo.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\tregsvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\scktsrvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\xmlmapper.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\Locales; ValueType: string; ValueName: {app}\Bin\webappdbg.exe; ValueData: 

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

Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open; ValueType: string; ValueName: FriendlyName; ValueData: CodeGear RAD Studio 2009
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system

Root: HKCR; SubKey: .BDSDEPLOY; ValueType: string; ValueName: ; ValueData: BDS.BDSDEPLOYFile; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: string; ValueName: ; ValueData: "BDS Deploy File  "; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\deployide120.bpl"",0"; Components: ASSOC\BDSDEPLOY
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
Root: HKCR; SubKey: BDS.ConfigFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\dotnetaspide120.bpl"",6"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\CONFIG

Root: HKCR; SubKey: .DFM; ValueType: string; ValueName: ; ValueData: BDS.DfmFile; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: string; ValueName: ; ValueData: Delphi Form; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",1"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DFM

Root: HKCR; SubKey: .DPK; ValueType: string; ValueName: ; ValueData: BDS.DpkFile; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",2"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPK

Root: HKCR; SubKey: .DPKW; ValueType: string; ValueName: ; ValueData: BDS.DpkwFile; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",2"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPKW

Root: HKCR; SubKey: .DPR; ValueType: string; ValueName: ; ValueData: BDS.DprFile; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",3"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPR

Root: HKCR; SubKey: .DPROJ; ValueType: string; ValueName: ; ValueData: BDS.DProjFile; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",3"; Components: ASSOC\DPROJ
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
Root: HKCR; SubKey: BDS.PasFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide120.bpl"",4"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\PAS

[Code]
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
function CheckFileAssoc(Ext: string): Boolean;
var
  S, V: string;
begin
  Result := False;
  if not RegQueryStringValue(HKEY_CLASSES_ROOT, Ext, '', S) then
    Exit;
  S := S + '\Shell';
  if RegKeyExists(HKEY_CLASSES_ROOT, S) then
  begin
    if RegQueryStringValue(HKEY_CLASSES_ROOT, S, '', V) then
      Result := V <> ''
    else Result := False;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.03.20
//功能：删除空文件夹
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure DelEmptyTree(Dir: string; DelRoot: Boolean);
var
  FindRec: TFindRec;
begin
  Dir := AddBackslash(Dir);
  if FindFirst(Dir + '*', FindRec) then
  try
    repeat
      if (FindRec.Name <> '.') and (FindRec.Name <> '..') and (FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY <> 0) then
      begin
{
        SetFileAttributes(Dir + FindRec.Name), FILE_ATTRIBUTE_NORMAL);
}
        DelEmptyTree(Dir + FindRec.Name, True);
      end;
    until not FindNext(FindRec);
  finally
    FindClose(FindRec);
  end;
  if DelRoot then RemoveDir(Dir);
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
    if MsgBox('The Microsoft Visual J# 2.0 Redistributable Package is not installed. Would you like to download Setup anyway? or Borland Together Component disabled.',
      mbConfirmation, MB_YESNO or MB_DEFBUTTON1) = idYes then
      ShellExec('open', 'http://download.microsoft.com/download/9/a/0/9a01eb1e-fe80-41af-a3f8-ea41220918f7/vjredist.exe', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
    else MsgBox('Borland Together Component disabled.', mbConfirmation, MB_OK);
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化界面
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
begin
  with WizardForm do
  begin
    PasswordEdit.Visible := False;
    PasswordEdit.Enabled := False;
    PasswordPage.Visible := False;
    PasswordPage.Enabled := False;
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
  RegisterAssembly('{app}\Bin\', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Build.Tasks.Common.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Interop.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Refactoring.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.ToolsAPI.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.UnitTest.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Studio.Together.dll', ARegister);
  RegisterAssembly('{app}\Bin\Borland.Data.Explorer.dll', ARegister);

  RegisterServer('{sys}\midas.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk120.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk120N.dll', ARegister);

  RegisterServer('{app}\Bin\Borland.Build.Tasks.Common.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.Interop.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.ToolsAPI.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Studio.Together.tlb', ARegister);
  RegisterServer('{app}\Bin\Borland.Data.Explorer.tlb', ARegister);
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
    BaseName := ExpandConstant('{cf32}\CodeGear Shared\RAD Studio\Shared Assemblies\6.0\');
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
  AppPath, S,
  FileName: String;
begin
  AppPath := ExpandConstant('{app}');
  FileName := AppPath + '\Bin\dcc32.cfg';
  if LoadStringFromFileEx(FileName, S) then
  begin
    if StringChangeEx(S, 'C:\Program Files\CodeGear\RAD Studio\6.0', AppPath, True) > 0 then
      SaveStringToFile(FileName, S, False);
  end;
  FileName := AppPath + '\Bin\cglm.ini';
  if LoadStringFromFileEx(FileName, S) then
  begin
    if StringChangeEx(S, 'C:\Program Files\CodeGear\RAD Studio\6.0', AppPath, True) > 0 then
      SaveStringToFile(FileName, S, False);
  end;
  S :=
     '@SET BDS=' + ExpandConstant('{app}') + #13#10 +
     '@SET BDSCOMMONDIR=' + ExpandConstant('{commondocs}\RAD Studio\5.0')+ #13#10 +
     '@SET FrameworkDir=' + ExpandConstant('{win}') + '\Microsoft.NET\Framework\' + #13#10 +
     '@SET FrameworkVersion=v2.0.50727' + #13#10 +
     '@SET FrameworkSDKDir=' + #13#10#13#10+
     '@ECHO Setting environment for using CodeGear RAD Studio tools'+#13#10#13#10+
     '@SET PATH=%FrameworkDir%%FrameworkVersion%;%FrameworkSDKDir%;%PATH%';
  FileName := AppPath + '\Bin\rsvars.bat';
  SaveStringToFile(FileName, S, False);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.03.20
//功能：更新环境变量
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure UpdateEnvironment(AInstall: Boolean);
var
  AppPath,
  S, T: string;
begin
{
  if AInstall and not IsTaskSelected('ENV') then
}
    Exit;
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', S) then
    Exit
  else T := S;
  AppPath := ExpandConstant('{app}\bin');
  if Pos(AppPath, S) = 0 then
    S := S + ';' + AppPath
  else if not AInstall then
    StringChange(S, ';' + AppPath, '');
  AppPath := ExpandConstant('{commondocs}\RAD Studio\5.0\bpl');
  if Pos(AppPath, S) = 0 then
    S := S + ';' + AppPath
  else if not AInstall then
    StringChange(S, ';' + AppPath, '');
  if S <> T then
    RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', S);
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
        RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\CodeGear\BDS\6.0');
        RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'SOFTWARE\CodeGear\BDS\6.0');
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



