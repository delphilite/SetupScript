;{ *********************************************************************** }
;{                                                                         }
;{   Borland Delphi 2006 Lite 安装脚本                                     }
;{                                                                         }
;{   设计：Lsuper 2008.09.06                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2010 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   GetFileVersion("Files\Borland\BDS\4.0\Bin\bds.exe")
#define AppLiteVersion  "1.3"
#define AppFileNamePrex "Borland.Delphi.2006.RTM.Inc.Update2"
#define AppNamePrex     "Borland Delphi 2006 Lite"
#define AppWebURL       "http://www.borland.com"
#define AppSupportURL   "http://support.borland.com/"

[Setup]
AllowUNCPath=false
AppComments=Borland Delphi 2006
AppCopyright=Copyright ? 1996-2007 Borland Software Corporation
AppID={{5F79C053-D7D5-469B-A005-AC3801F0766D}
AppModifyPath="{app}\UninsHs.exe" /m0={{5F79C053-D7D5-469B-A005-AC3801F0766D}
AppMutex={{E3ED297C-D115-4317-933B-C712F4F09024}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppSupportURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
ChangesEnvironment=true
DefaultDirName={pf32}\Borland\BDS\4.0
DefaultGroupName=Borland Developer Studio 2006
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayName=Borland Delphi 2006
VersionInfoCompany=Borland Software Corporation
VersionInfoCopyright=Copyright ? 1996-2007 Borland Software Corporation
VersionInfoDescription=Borland? Developer Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\Borland\BDS\4.0\license.rtf
SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=lzma
SolidCompression=true

SignedUninstaller=true
SignedUninstallerDir=Files\Utils

[_ISToolPreCompile]

[_ISToolPostCompile]

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
Name: ASSOC; Description: Delphi File Associations; Types: FULL
Name: ASSOC\BDSPROJ; Description: .bdsproj; Types: FULL
Name: ASSOC\BDSGROUP; Description: .bdsgroup; Types: FULL
Name: ASSOC\PAS; Description: .pas; Types: FULL
Name: ASSOC\DPR; Description: .dpr; Types: FULL
Name: ASSOC\DPK; Description: .dpk; Types: FULL
Name: ASSOC\DPKW; Description: .dpkw; Types: FULL
Name: ASSOC\DFM; Description: .dfm; Types: FULL
Name: ASSOC\RC; Description: .rc; Types: FULL

[Tasks]
Name: ICON; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Dirs]
Name: {commondocs}\BDS\4.0

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480

Source: Files\Borland\BDS\4.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Utils\DelphiDistiller.exe; DestDir: {app}
Source: Files\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Files\Utils\UninsHs.exe; DestDir: {app}; Flags: restartreplace

[Icons]
Name: {group}\Delphi for Microsoft Win32; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: Click here to start Borland Delphi for Microsoft Win32 personality
Name: {group}\Delphi Distiller; Filename: {app}\DelphiDistiller.exe; Comment: Delphi Distiller
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{5F79C053-D7D5-469B-A005-AC3801F0766D}; Comment: Removes this CodeGear product
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Removes this CodeGear product
Name: {group}\Tools\XML Mapper; Filename: {app}\Bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: xmlmapper.exe
Name: {group}\Tools\License Manager; Filename: {app}\Bin\LicenseManager.exe; WorkingDir: {app}\bin; Comment: LicenseManager.exe
Name: {group}\Tools\External Translation Manager; Filename: {app}\Bin\etm.exe; WorkingDir: {app}\bin; Comment: etm.exe
Name: {group}\Tools\Database Explorer; Filename: {app}\Bin\DataExplore.exe; WorkingDir: {app}\bin; Comment: DataExplore.exe

Name: {userdesktop}\Delphi for Microsoft Win32; Filename: {app}\Bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: Click here to start Borland Delphi for Microsoft Win32 personality

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64


Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{5F79C053-D7D5-469B-A005-AC3801F0766D},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized
Filename: {app}\Bin\bds.exe; Description: {cm:RunEntryExec,Borland Delphi 2006}; Flags: nowait postinstall

[UninstallRun]

[InstallDelete]
Name: {app}\license.rtf; Type: filesandordirs

[UninstallDelete]
Name: {commondocs}\BDS\4.0; Type: filesandordirs

[Registry]
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: App; ValueData: {app}\Bin\bds.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: Edition; ValueData: Architect
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: ProductVersion; ValueData: 10.0.2
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: RegCompany; ValueData: Borland
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: RegOwner; ValueData: Delphi
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: RootDir; ValueData: {app}\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: UpdatePackInstalled; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: string; ValueName: UseSharedFiles; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: dword; ValueName: HotfixLevel; ValueData: $0000000a
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0; ValueType: dword; ValueName: RegMergeLevel; ValueData: $00000002
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ActiveX Controls; ValueType: string; ValueName: PalettePage; ValueData: ActiveX
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ActiveX Controls; ValueType: string; ValueName: UnitDirName; ValueData: $(BDS)\Imports\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\AssemblyFolders\BorlandComponents; ValueType: string; ValueName: ; ValueData: {cf32}\Borland Shared\BDS\Shared Assemblies\4.0\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\CppPaths; ValueType: string; ValueName: SearchPath; ValueData: "$(BDS)\Lib\Indy9;$(BDS)\Include\Indy9;$(BDS)\Lib\Indy9"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\CppPaths; ValueType: string; ValueName: IncludePath; ValueData: $(BDS)\Include\Indy9
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\CppPaths; ValueType: string; ValueName: Browsing Path; ValueData: $(BDS)\source\Win32\Indy9
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\CppPaths; ValueType: string; ValueName: BrowsingPath; ValueData: $(BDS)\source\Win32\Indy9
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\DBExpress; ValueType: string; ValueName: DLLPATH; ValueData: {app}\dbExpress\
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\DBExpress; ValueType: string; ValueName: Connection Registry File; ValueData: {app}\dbExpress\dbxconnections.ini
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\DBExpress; ValueType: string; ValueName: Driver Registry File; ValueData: {app}\dbExpress\dbxdrivers.ini
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\DotNetFramework; ValueType: string; ValueName: AssemblyLinker; ValueData: {win}\Microsoft.NET\Framework\v2.0.50727\al.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\Borland.Caliber.IDE100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphidotnetcore100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmide100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dotnetcoreide100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\idefilefilters100.bpl; ValueData: IDE File filters
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\startpageide100.bpl; ValueData: Borland Start Page IDE Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dbkdebugide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\deployide100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\coreproide100.bpl; ValueData: Core IDE Pro Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\IDETools100.bpl; ValueData: Build Tools
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dbkdebugproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\historyide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\refactoride100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\todoide100.bpl; ValueData: Borland ToDo
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\exceptiondiag100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\plugview100.bpl; ValueData: Pluggable Tree View Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\asmview100.bpl; ValueData: Assembly Browser Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\codetemplates100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\stide100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorer100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmltidy100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\mlcc100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlide100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\iteidew32100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\TGIDE100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\unittestide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphide100.bpl; ValueData: Delphi Win32 IDE Personality
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphivclide100.bpl; ValueData: Delphi VCL Designer IDE Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\vclmenudesigner100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphierrorinsite100.bpl; ValueData: Delphi Error Insite Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphipro100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoreproide100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicompro100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\comcore100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoment100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclstd100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcldb100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclado100.bpl; ValueData: Borland dbGO Win32 Components
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcldbx100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclib100.bpl; ValueData: Borland VCL IBX Components for Win32
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIntraweb_80_100.bpl; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclnet100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclindy100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclofficexp100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclsmp100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclsoap100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcl31w100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclmid100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcltee100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclmcn100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcldbxcds100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclie100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclwebsnap100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclsmpedit100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclemacsedit100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclmlwiz100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\applet100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclact100.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclbde100.bpl; ValueData: Delphi Win32 BDE Components
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\source\Win32\vcl;$(BDS)\source\Win32\rtl\common;$(BDS)\source\Win32\rtl\sys;$(BDS)\source\Win32\rtl\win;$(BDS)\source\Win32\WebSnap;$(BDS)\source\ToolsAPI;$(BDS)\source\Win32\IBX;$(BDS)\source\Win32\Internet;$(BDS)\source\Win32\Property Editors;$(BDS)\source\Win32\soap;$(BDS)\source\win32\xml;$(BDS)\source\Win32\db;$(BDS)\source\Win32\Decision Cube;$(BDS)\source\Win32\Indy9"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Search Path; ValueData: "$(BDS)\lib;$(BDS)\Imports;$(BDS)\Lib\Indy9"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Debug DCU Path; ValueData: "$(BDS)\lib\Debug;$(BDS)\Lib\Debug\Indy9"
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSPROJECTSDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSPROJECTSDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Library; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSPROJECTSDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Component; ValueType: string; ValueName: PalettePage; ValueData: Samples
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Component; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSPROJECTSDIR)
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiApp; ValueData: VCL Forms Application
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Menu Items; ValueType: string; ValueName: NewDelphiPackage; ValueData: Package
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Menu Items; ValueType: string; ValueName: NewVCLDelphiForm; ValueData: Form
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\New Menu Items; ValueType: string; ValueName: NewDelphiUnit; ValueData: Unit
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Personalities; ValueType: string; ValueName: Delphi.Win32; ValueData: Borland Delphi for Microsoft Windows
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Personalities; ValueType: string; ValueName: ; ValueData: Borland Developer Studio 2006
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Palette Hidden Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Copied Palette Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Web Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: HTML Elements; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Borland Data Provider; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: DB Web; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Enterprise Core Objects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Standard; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Additional; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Win32; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: System; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Win 3.1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Data Access; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Data Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: dbExpress; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: DataSnap; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: BDE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: ActiveX; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Code Snippets; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: C# Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Delphi Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Active X; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects | New Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Crystal Reports; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Markup Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\ToolForm\Mapping; ValueType: string; ValueName: Other Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Params0; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Path0; ValueData: {app}\Bin\xmlmapper.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Title0; ValueData: &XML Mapper
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: WorkingDir0; ValueData: {app}\Bin
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Count; ValueData: 3
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Params1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Path1; ValueData: {app}\Bin\LicenseManager.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Title1; ValueData: &License Manager
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: WorkingDir1; ValueData: {app}\Bin
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Params2; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Path2; ValueData: {app}\QualityCentral\qualitycentral.exe
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: Title2; ValueData: &QualityCentral
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Transfer; ValueType: string; ValueName: WorkingDir2; ValueData: {app}\QualityCentral

Root: HKLM; SubKey: SOFTWARE\Borland\Debugging\10.0\Evaluators; ValueType: string; ValueName: dcc100.dll; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Debugging\10.0\Evaluators; ValueType: string; ValueName: comp32x.dll; ValueData: 1

Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\DataExplore.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\etm.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\webappdbg.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\xmlmapper.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\bds.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\dbkwmc100.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\LicenseManager.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\bdsreg.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\tregsvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\dcc32.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\DBExplorer.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\scktsrvr.exe; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Locales; ValueType: string; ValueName: {app}\Bin\serverinfo.exe; ValueData: 

Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Globals; ValueType: string; ValueName: MSBuildDelphi; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Globals; ValueType: string; ValueName: MSBuildGroup; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\BDS\4.0\Globals; ValueType: string; ValueName: MSBuildCpp; ValueData: 0

Root: HKCR; SubKey: .bdsgroup; ValueType: string; ValueName: ; ValueData: BDS.ProjectGroup; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: .bdsgroup; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: .bdsgroup; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: .bdsgroup\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Project Group; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSGROUP

Root: HKCR; SubKey: .bdsproj; ValueType: string; ValueName: ; ValueData: BDS.ProjectFile; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: .bdsproj; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: .bdsproj; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: .bdsproj\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: string; ValueName: ; ValueData: Borland Developer Studio Project File; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",1"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSPROJ

Root: HKCR; SubKey: .dfm; ValueType: string; ValueName: ; ValueData: BDS.DfmFile; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: string; ValueName: ; ValueData: Delphi Form; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",1"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DFM

Root: HKCR; SubKey: .dpk; ValueType: string; ValueName: ; ValueData: BDS.DpkFile; Components: ASSOC\DPK
Root: HKCR; SubKey: .dpk; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\DPK
Root: HKCR; SubKey: .dpk; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\DPK
Root: HKCR; SubKey: .dpk\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",2"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPK

Root: HKCR; SubKey: .dpkw; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\DPKW
Root: HKCR; SubKey: .dpkw; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\DPKW
Root: HKCR; SubKey: .dpkw; ValueType: string; ValueName: ; ValueData: BDS.DpkwFile; Components: ASSOC\DPKW
Root: HKCR; SubKey: .dpkw\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",2"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPKW

Root: HKCR; SubKey: .dpr; ValueType: string; ValueName: ; ValueData: BDS.DprFile; Components: ASSOC\DPR
Root: HKCR; SubKey: .dpr; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\DPR
Root: HKCR; SubKey: .dpr; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\DPR
Root: HKCR; SubKey: .dpr\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",3"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPR

Root: HKCR; SubKey: .pas; ValueType: string; ValueName: ; ValueData: BDS.PasFile; Components: ASSOC\PAS
Root: HKCR; SubKey: .pas; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\PAS
Root: HKCR; SubKey: .pas; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\PAS
Root: HKCR; SubKey: .pas\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: string; ValueName: ; ValueData: Delphi Source File; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",4"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\PAS

Root: HKCR; SubKey: .rc; ValueType: string; ValueName: ; ValueData: BDS.RCFile; Components: ASSOC\RC
Root: HKCR; SubKey: .rc; ValueType: string; ValueName: Content Type; ValueData: text/plain; Components: ASSOC\RC
Root: HKCR; SubKey: .rc; ValueType: string; ValueName: PerceivedType; ValueData: text; Components: ASSOC\RC
Root: HKCR; SubKey: .rc\PersistentHandler; ValueType: string; ValueName: ; ValueData: {{5e941d80-bf96-11cd-b579-08002b30bfeb}; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile; ValueType: string; ValueName: ; ValueData: Resource File; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide100.bpl"",2"; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\Shell\Open; ValueType: string; ValueName: ; ValueData: &Open with Borland Developer Studio; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\Shell\Open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\Shell\Open\ddeexec\Application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\RC
Root: HKCR; SubKey: BDS.RCFile\Shell\Open\ddeexec\Topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\RC

[Code]
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
  end
  else Result := True;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化界面
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
begin
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
  RegisterServer('{sys}\midas.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk100.dll', ARegister);
  RegisterServer('{app}\Bin\bordbk100N.dll', ARegister);
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
  if StringChangeEx(S, 'C:\Program Files\Borland\BDS\4.0', AppPath, True) > 0 then
    SaveStringToFile(FileName, S, False);
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
      end;
    ssPostInstall:
      begin
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
      end;
    usPostUninstall:
      begin
        RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Borland\BDS\4.0');
        RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'SOFTWARE\Borland\BDS\4.0');
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

