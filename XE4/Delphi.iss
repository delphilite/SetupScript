;{ *********************************************************************** }
;{                                                                         }
;{   Embarcadero Delphi XE4 Lite 安装脚本                                  }
;{                                                                         }
;{   设计：Lsuper 2013.04.24                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2013 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   GetFileVersion("Files\Embarcadero\RAD Studio\11.0\bin\bds.exe")
#define AppLiteVersion  "7.1"
#define AppFileNamePrex "Embarcadero.Delphi.XE4.RTM.Inc.Update1"
#define AppNamePrex     "Embarcadero Delphi XE4 Lite"

#define AppSetupID      "{4070750E-B38E-4BF5-B626-B3D6F538879B}"
#define AppSetupMutex   "{4070934A-B0B7-4BE9-A391-37268B8E08D1}"

#define xFULLMODE

[Setup]
AllowUNCPath=false
AppComments=All rights reserved Embarcadero
AppContact=Embarcadero Technologies, Inc.
AppCopyright=Copyright ? 1996-2013 Embarcadero Technologies, Inc.
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
DefaultDirName={pf32}\Embarcadero\RAD Studio\11.0
DefaultGroupName=Embarcadero RAD Studio XE4
MinVersion=0,5.0.2195sp3
#ifdef FULLMODE
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
#endif
#ifndef FULLMODE
OutputBaseFilename={#AppFileNamePrex}.v{#AppBinVersion}.WinOnly.v{#AppLiteVersion}
#endif
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayIcon={app}\Bin\bds.exe
UninstallDisplayName=Embarcadero RAD Studio XE4
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright © 1996-2013 Embarcadero Technologies, Inc.
VersionInfoDescription=Embarcadero RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\Embarcadero\RAD Studio\11.0\license_en.rtf
SetupIconFile=Others\Utils\Setup.ico
WizardImageFile=Others\Utils\SetupModern.bmp
WizardSmallImageFile=Others\Utils\SetupModernSmall.bmp

Compression=lzma2/max
SolidCompression=true

SignedUninstaller=true
SignedUninstallerDir=Others\Utils

[Languages]
Name: en; MessagesFile: compiler:Default.isl
Name: chs; MessagesFile: compiler:Languages\Chinese.isl

Name: br; MessagesFile: compiler:Languages\BrazilianPortuguese.isl
Name: ca; MessagesFile: compiler:Languages\Catalan.isl
Name: cz; MessagesFile: compiler:Languages\Czech.isl
Name: da; MessagesFile: compiler:Languages\Danish.isl
Name: nl; MessagesFile: compiler:Languages\Dutch.isl
Name: fi; MessagesFile: compiler:Languages\Finnish.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: de; MessagesFile: compiler:Languages\Greek.isl
Name: he; MessagesFile: compiler:Languages\Hebrew.isl
Name: hu; MessagesFile: compiler:Languages\Hungarian.isl
Name: it; MessagesFile: compiler:Languages\Italian.isl
Name: ja; MessagesFile: compiler:Languages\Japanese.isl
Name: no; MessagesFile: compiler:Languages\Norwegian.isl
Name: pl; MessagesFile: compiler:Languages\Polish.isl
Name: pt; MessagesFile: compiler:Languages\Portuguese.isl
Name: ru; MessagesFile: compiler:Languages\Russian.isl
;Name: sr_cyrillic; MessagesFile: compiler:Languages\SerbianCyrillic.isl
;Name: sr_latin; MessagesFile: compiler:Languages\SerbianLatin.isl
Name: sl2; MessagesFile: compiler:Languages\Slovenian.isl
Name: sp; MessagesFile: compiler:Languages\Spanish.isl
Name: uk; MessagesFile: compiler:Languages\Ukrainian.isl

[Messages]
BeveledLabel=XE4

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
en.AddEnvironment=Add Bpl Path Environment Variable

chs.StatusInstalling=正在安装 %1...
chs.StatusUninstalling=正在卸载 %1...
chs.StatusRegister=正在注册 %1...
chs.StatusUnregister=正在反注册 %1...
chs.StatusRunning=正在执行 %1...
chs.StatusSavingUninstall=正在保存卸载信息...
chs.AdditionalOptions=附加选项:
chs.AdditionalFiles=附加文件:
chs.IncludeFile=整合 %1
chs.AddEnvironment=添加包输出路径到环境变量

[CustomMessages]
en.IsxLanguage=isxdl.ini.en
chs.IsxLanguage=isxdl.ini.chs
de.IsxLanguage=isxdl.ini.de
fr.IsxLanguage=isxdl.ini.fr
ru.IsxLanguage=isxdl.ini.ru

[Types]
Name: LITE; Description: Lite installation
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: Delphi Core Files; Types: FULL LITE CUSTOM; Flags: fixed
Name: FMX; Description: FireMonkey; Types: LITE FULL
Name: OSX; Description: OS X Cross Platform Development; Types: LITE FULL
Name: X64; Description: 64 Bit Delphi Compiler; Types: LITE FULL
;Name: BDE; Description: Borland Database Engine; Types: FULL
;Name: DATABASE; Description: Database Features; Types: FULL
;Name: INTERBASE; Description: InterBase XE4; Types: FULL
Name: IOS; Description: Mobile Features; Types: LITE FULL
Name: TOGETHER; Description: Delphi Together; Types: FULL
Name: EXPERTS; Description: Delphi Experts; Types: FULL
Name: EXPERTS\BEYOND; Description: Beyond Compare IDE Package; Types: FULL
;Name: EXPERTS\DISTILLER; Description: XE4 Distiller; Types: FULL
Name: QC; Description: Delphi Quality Central; Types: FULL
Name: SHARE; Description: Delphi Share Files; Types: FULL
Name: SHARE\IMAGE; Description: Image Files; Types: FULL
Name: SHARE\SAMPLE; Description: Samples; Types: FULL
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
Name: ASSOC\FMX; Description: .fmx; Types: LITE FULL
Name: ASSOC\PAS; Description: .pas; Types: LITE FULL

[Tasks]
Name: ICON;  Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalOptions}
Name: QUICK; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked; OnlyBelowVersion: 5.0,6.1
Name: ENV;   Description: {cm:AddEnvironment}; GroupDescription: {cm:AdditionalOptions}; Flags: unchecked
Name: PATCH; Description: {cm:IncludeFile,DarkRapt0r's slipgen and Kerlingen's patch}; GroupDescription: {cm:AdditionalFiles}

[Dirs]
Name: {userappdata}\Embarcadero\RAD Studio\11.0

[InstallDelete]
Type: files; Name: {app}\bin\bds.exe.bak
Type: files; Name: {app}\bin\borlndmm.dll.bak
Type: files; Name: {app}\license_en.rtf

[UninstallDelete]
Type: files; Name: {app}\bin\bds.exe.bak
Type: files; Name: {app}\bin\borlndmm.dll.bak
Type: filesandordirs; Name: {app}\Redist

[Files]
;If you use a 'files:' prefix and solid compression is enabled, be sure to list your DLLs at (or near) the top of the [Files] section @ topic_scriptdll.htm

;Isxdl
Source: Others\Include\isxdl.ini.chs; Flags: dontcopy
Source: Others\Include\isxdl.ini.en; Flags: dontcopy
Source: Others\Include\isxdl.ini.de; Flags: dontcopy
Source: Others\Include\isxdl.ini.fr; Flags: dontcopy
Source: Others\Include\isxdl.ini.ru; Flags: dontcopy
Source: Others\Include\isxdl.dll; Flags: dontcopy

;.NET framework
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFramework20Installed and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFramework20Installed and not IsWin64; ExternalSize: 25001480

Source: Files\Embarcadero\RAD Studio\11.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

;Source: Files\Embarcadero\RAD Studio\InterBaseXE4\*; DestDir: {app}\InterBaseXE4; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: INTERBASE

#ifdef FULLMODE
Source: Files\Embarcadero\RAD Studio\IOS\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: IOS
Source: Files\Embarcadero\RAD Studio\OSX\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: OSX
#endif
Source: Files\Embarcadero\RAD Studio\X64\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: X64

Source: Files\Embarcadero\RAD Studio\Images\*; DestDir: {app}\Images; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\IMAGE
Source: Files\Embarcadero\RAD Studio\QualityCentral\*; DestDir: {app}\QualityCentral; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: QC
Source: Files\Embarcadero\RAD Studio\Samples\*; DestDir: {app}\Samples; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: SHARE\SAMPLE

Source: Files\Common Files\Borland Shared\*; DestDir: {cf32}\Borland Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension sharedfile uninsnosharedfileprompt
Source: Files\Common Files\CodeGear Shared\*; DestDir: {cf32}\CodeGear Shared; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Common Files\Embarcadero\*; DestDir: {cf32}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

Source: Files\Application Data\Embarcadero\*; DestDir: {commonappdata}\Embarcadero; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Documents\RAD Studio\*; DestDir: {commondocs}\RAD Studio; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension

Source: Files\System32\*; DestDir: {sys}; Flags: sortfilesbyextension sharedfile uninsnosharedfileprompt

Source: Others\Utils\GacUtil.*; DestDir: {win}\Microsoft.NET\Framework\v2.0.50727; Flags: ignoreversion sortfilesbyextension
Source: Others\Utils\ReadMe.txt; DestDir: {app}; Flags: isreadme ignoreversion sortfilesbyextension
Source: Others\Utils\UninsHs.exe; DestDir: {app}; Flags: ignoreversion sortfilesbyextension

;Source: Others\Utils\Default_RTM.displ; DestDir: {app}\Utils; Flags: ignoreversion sortfilesbyextension; Components: EXPERTS\DISTILLER
;Source: Others\Utils\XE4Distiller.exe; DestDir: {app}\Utils; Flags: ignoreversion sortfilesbyextension; Components: EXPERTS\DISTILLER

Source: Others\Utils\BorCreateUDL.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension
Source: Others\Utils\SetACL.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension
Source: Others\Utils\vjredist.exe; DestDir: {tmp}; Flags: deleteafterinstall ignoreversion sortfilesbyextension; Check: not IsVisualJSharpInstalled

Source: Others\v3.5\*; DestDir: {win}\Microsoft.NET\Framework\v3.5; Flags: sortfilesbyextension; Check: not IsFramework35Installed

Source: Others\Keygen\*; DestDir: {app}\Keygen; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Tasks: PATCH

[Icons]
Name: {group}\Delphi XE4; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE4 Program
;Name: {group}\Embarcadero RAD Studio XE4; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Comment: This will run the Embarcadero RAD Studio XE4 Program
Name: {group}\License Manager; Filename: {app}\bin\LicenseManager.exe; WorkingDir: {app}\bin; Parameters: ; Comment: This will run the License Manager Program
Name: {group}\RAD Studio Command Prompt; Filename: %comspec%; WorkingDir: {app}\bin; Parameters: "/K ""{app}\bin\rsvars.bat"""; Comment: Open RAD Studio Command Prompt
Name: {group}\Samples; Filename: {app}\Samples; WorkingDir: {app}\Samples; Components: SHARE\SAMPLE
;Name: {group}\XE4 Distiller; Filename: {app}\Utils\XE4Distiller.exe; Comment: XE4 Distiller; Components: EXPERTS\DISTILLER
Name: {group}\XML Mapper; Filename: {app}\bin\xmlmapper.exe; WorkingDir: {app}\bin; Comment: Run the XML Mapper tool
Name: {group}\Modify, Repair, Uninstall; Filename: {app}\UninsHs.exe; Parameters: /u0={{#AppSetupID}; Comment: Removes this Embarcadero product
Name: {group}\Uninstall; Filename: {uninstallexe}; Comment: Uninstall this Embarcadero product

Name: {userdesktop}\Delphi XE4; Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Comment: This will run the Delphi XE Program

Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Delphi XE4; Filename: {app}\bin\bds.exe; Parameters: -pDelphi; Tasks: QUICK; OnlyBelowVersion: 5.0,6.1

[Run]
Filename: {tmp}\NetFx20SP2.exe;     WorkingDir: {tmp}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and CheckExecuteFramework20
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and not IsWin64

Filename: {tmp}\vjredist.exe; WorkingDir: {src}; Parameters: "/Q /C:""install.exe /q"""; StatusMsg: {cm:StatusInstalling,Microsoft Visual J Sharp 2.0 Redistributable Package}; Check: not IsVisualJSharpInstalled

Filename: {tmp}\SetACL.exe; WorkingDir: {tmp}; Parameters: "-on ""{app}\Samples"" -ot file -actn ace -ace ""n:S-1-5-32-545;p:full;s:y;i:sc,so"""; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized; Components: SHARE\SAMPLE
Filename: {tmp}\SetACL.exe; WorkingDir: {tmp}; Parameters: "-on ""{commonappdata}\Embarcadero"" -ot file -actn ace -ace ""n:S-1-5-32-545;p:full;s:y;i:sc,so"""; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized
Filename: {tmp}\BorCreateUDL.exe; WorkingDir: {tmp}; Parameters: """{cf32}\System\ole db\Data Links\DBDEMOS.udl"" ""Microsoft.Jet.OLEDB.4.0"" ""{cf32}\CodeGear Shared\Data\DBDEMOS.mdb"""; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\Keygen\Activator.exe; WorkingDir: {app}\Keygen; Parameters: -process; StatusMsg: {cm:StatusRunning,Embarcadero Delphi XE4 Activator}; Flags: runminimized; Tasks: PATCH
Filename: {app}\UninsHs.exe; WorkingDir: {app}; Parameters: /r0={{#AppSetupID},{language},{srcexe}; StatusMsg: {cm:StatusSavingUninstall}; Flags: runminimized

Filename: {app}\bin\bds.exe; WorkingDir: {app}\bin; Parameters: -pDelphi; Description: {cm:LaunchProgram,Embarcadero Delphi XE4}; Flags: nowait postinstall

[UninstallRun]

[Registry]
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: App; ValueData: {app}\bin\bds.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: Compatible; ValueData: 43494
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: Edition; ValueData: Architect
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: InstallLanguage; ValueData: English
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: ProductVersion; ValueData: 18
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: RegCompany; ValueData: Embarcadero
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: RegMergeTimeStamp; ValueData: 04-24-2013 02|02|02
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: RegOwner; ValueData: Delphi
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: RootDir; ValueData: {app}\
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0; ValueType: string; ValueName: UseSharedFiles; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ActiveX Controls; ValueType: string; ValueName: PalettePage; ValueData: ActiveX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ActiveX Controls; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSUSERDIR)\Imports
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\C++\Paths\OSX32; ValueType: string; ValueName: BPIOutput; ValueData: $(BDSCOMMONDIR)\DCP\OSX32; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\C++\Paths\OSX32; ValueType: string; ValueName: BPLOutput; ValueData: $(BDSCOMMONDIR)\BPL\OSX32; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\C++\Paths\OSX32; ValueType: string; ValueName: IncludePath; ValueData: "$(BDSINCLUDE);$(BDSINCLUDE)\dinkumware;$(BDSINCLUDE)\osx\crtl;$(BDSINCLUDE)\osx\rtl"; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\C++\Paths\OSX32; ValueType: string; ValueName: LibraryPath; ValueData: "$(BDSLIB)\osx32\release;$(BDS)\Redist\OSX32"; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\DBExpress; ValueType: string; ValueName: Connection Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\11.0\dbxconnections.ini
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\DBExpress; ValueType: string; ValueName: DLLPATH; ValueData: {commondocs}\RAD Studio\dbExpress\11.0
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\DBExpress; ValueType: string; ValueName: Driver Registry File; ValueData: {commondocs}\RAD Studio\dbExpress\11.0\dbxdrivers.ini
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueName: ; ValueData: dcc32180.dll
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Debugging\Embarcadero Debuggers\Evaluators; ValueType: string; ValueName: dcc32180.dll; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Disabled Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\DotNetFramework; ValueType: string; ValueName: AssemblyLinker; ValueData: {win}\Microsoft.NET\Framework\v2.0.50727\al.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Environment Variables; ValueType: string; ValueName: DEMOSDIR; ValueData: {app}\Samples\
;Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Environment Variables; ValueType: string; ValueName: IB_Protocol; ValueData: gds_db
;Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Environment Variables; ValueType: string; ValueName: InterBase; ValueData: {app}\InterBaseXE4
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Environment Variables; ValueType: string; ValueName: Path; ValueData: "{commondocs}\InterBase\redist\InterBaseXE4\win32_togo;{commondocs}\InterBase\redist\InterBaseXE4\win64_togo;$(PATH)"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Experts; ValueType: string; ValueName: Beyond Compare IDE Package; ValueData: $(BDS)\Bin\Scooter.BeyondCompare.Expert.dll; Components: EXPERTS\BEYOND
Root: HKLM; SubKey: Software\Embarcadero\BDS\11.0\Globals; ValueType: string; ValueName: AlwaysCheckPathOnStartup; ValueData: 0; Check: not IsTaskSelected('ENV')
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Globals; ValueType: string; ValueName: InstalledDemosDir; ValueData: {app}\Samples\
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Globals; ValueType: string; ValueName: TargetLocation; ValueData: $(MSBuildBinPath)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\InstalledUpdates; ValueType: string; ValueName: Main Product Update; ValueData: Delphi XE4 and C++Builder XE4 Update 1
;Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\InterBase; ValueType: string; ValueName: IBRedist; ValueData: {commondocs}\InterBase\redist\InterBaseXE4
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\asmview180.bpl; ValueData: Assembly Browser Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\codetemplates180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\comcore180.bpl; ValueData: HtmlHelp Viewer
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\comptoolbar180.bpl; ValueData: Component Toolbar Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\coreproide180.bpl; ValueData: Core IDE Pro Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorerIDE180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dbkdebugide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\dbkdebugproide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphiosx32180.bpl; ValueData: Delphi OSX32 Platform; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphiwin32180.bpl; ValueData: Delphi Win32 Platform
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\delphiwin64180.bpl; ValueData: Delphi Win64 Platform; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\dotnetcoreide180.bpl; ValueData: .NET Core IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\exceptiondiag180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\fileexplorer180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\gdbdebugcore180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\gdbdebugide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\historyide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\htmide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2180.bpl; ValueData: HtmlHelp Viewer
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\idefilefilters180.bpl; ValueData: IDE File filters
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\iosdebugide180.bpl; ValueData: (Untitled); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\iteidew32180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\macosxdebugide180.bpl; ValueData: (Untitled); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\mlcc180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\plugview180.bpl; ValueData: Pluggable Tree View Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\profiledeployide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\profilemgride180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\projecttargets180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\projpageide180.bpl; ValueData: Value Data: Project and template library package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\refactoride180.bpl; ValueData: Core Refactoring Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\sdkmgride180.bpl; ValueData: Embarcadero SDK Manager
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\startpageide180.bpl; ValueData: Start Page IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\tgide180.bpl; ValueData: (Untitled); Components: TOGETHER
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\tlbview180.bpl; ValueData: TypeLibrary Browser Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\bin\todoide180.bpl; ValueData: ToDo
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\unittestide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\vclmenudesigner180.bpl; ValueData: .NET Core IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\VisualizationServiceIDE180.bpl; ValueData: Visualization IDE Service Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\win64debugide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoment180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicompro180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphicoreproide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphide180.bpl; ValueData: Delphi Win32 IDE Personality
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphierrorinsite180.bpl; ValueData: Delphi Error Insite Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\bin\delphifmxide180.bpl; ValueData: Embarcadero FMX Designer IDE Package; Components: FMX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphifmxmobile180.bpl; ValueData: Delphi OSX32 Platform; Components: FMX and IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphiios32180.bpl; ValueData: Delphi OSX32 Platform; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphipro180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\delphivclide180.bpl; ValueData: Delphi VCL Designer IDE Package
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\fmxmobiledesigner180.bpl; ValueData: (Untitled); Components: FMX and IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known IDE Packages\Delphi; ValueType: string; ValueName: $(BDS)\Bin\win32debugproide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\applet180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorerDBXPlugin180.bpl; ValueData: CodeGear DBX Common Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorerDBXPluginEnt180.bpl; ValueData: Embarcadero DBX Enterprise Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorerDBXPluginInt180.bpl; ValueData: Embarcadero DBX Interbase Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\DataExplorerService180.bpl; ValueData: CodeGear DBX Common Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcl31w180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclact180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclado180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclbde180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclbindcomp180.bpl; ValueData: Embarcadero Databinding Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclbindcompdbx180.bpl; ValueData: Embarcadero DBX Databinding Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclbindcompfmx180.bpl; ValueData: Embarcadero Databinding Components; Components: FMX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclbindcompvcl180.bpl; ValueData: Embarcadero Databinding Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclCloudService180.bpl; ValueData: Embarcadero Cloud management components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDataSnapClient180.bpl; ValueData: Embarcadero DataSnap Client Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDataSnapConnectors180.bpl; ValueData: Embarcadero DataSnap Connector Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDataSnapIndy10ServerTransport180.bpl; ValueData: Embarcadero DataSnap Server Transport Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDataSnapProviderClient180.bpl; ValueData: Embarcadero DataSnap Provider Client Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDataSnapServer180.bpl; ValueData: Embarcadero DataSnap Server Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcldb180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcldbx180.bpl; ValueData: Embarcadero dbExpress Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dcldbxcds180.bpl; ValueData: Embarcadero dbExpress SimpleDS Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDBXDrivers180.bpl; ValueData: CodeGear DBX Common Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDBXDriversEnt180.bpl; ValueData: Embarcadero DBX Enterprise Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclDBXDriversInt180.bpl; ValueData: Embarcadero DBX Interbase Driver Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclemacsedit180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclfmxhrh180.bpl; ValueData: Embarcadero FMX Components; Components: FMX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclfmxstd180.bpl; ValueData: Embarcadero FMX Components; Components: FMX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclFMXtee9180.bpl; ValueData: (Untitled); Components: FMX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclib180.bpl; ValueData: VCL IBX Components for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclie180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyCore180.bpl; ValueData: Indy 10 Core Design Time
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIndyProtocols180.bpl; ValueData: Indy 10 Protocols Design Time
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclIntraweb_140_180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclIPIndyImpl180.bpl; ValueData: Embarcadero Indy Implementation for Win32
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmcn180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclMetropolisUILiveTile180.bpl; ValueData: Embarcadero Metropolis UI Live Tile Standard Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmid180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclmlwiz180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclnet180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcloffice2k180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclofficexp180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclribbon180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmp180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsmpedit180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclsoap180.bpl; ValueData: Embarcadero SOAP Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\dclstd180.bpl; ValueData: Embarcadero Standard Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltee9180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dcltouch180.bpl; ValueData: Embarcadero Touch Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\dclwbm180.bpl; ValueData: Embarcadero InternetExpress Components
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\Bin\MobileWizardExpert180.bpl; ValueData: Embarcadero Mobile Wizard Help; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\samplevisualizers180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Known Packages; ValueType: string; ValueName: $(BDS)\bin\svnide180.bpl; ValueData: (Untitled)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;"; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(PLATFORM)\debug; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp\$(Platform)\$(Configuration); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl\$(PLATFORM)\$(Configuration); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl\$(PLATFORM)\Release; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Search Path; ValueData: $(BDSLIB)\$(PLATFORM)\Release; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSDevice; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;"; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(PLATFORM)\debug; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp\$(Platform)\$(Configuration); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform)\$(Configuration); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Package Search Output; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform)\$(Configuration); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Search Path; ValueData: $(BDSLIB)\$(PLATFORM)\Release; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\iOSSimulator; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\osx;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\rtl\posix;$(BDS)\source\rtl\posix\osx;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;"; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(Platform)\debug; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: HPP Output Directory; ValueData: $(BDSCOMMONDIR)\hpp; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Language Library Path; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp\$(Platform); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Search Path; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp\$(Platform);$(BDS)\include"; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\OSX32; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\win;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(Platform)\debug
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: HPP Output Directory; ValueData: $(BDSCOMMONDIR)\hpp
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Language Library Path; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Search Path; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp;$(BDS)\include"
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win32; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Browsing Path; ValueData: "$(BDS)\OCX\Servers;$(BDS)\SOURCE\VCL;$(BDS)\source\rtl\common;$(BDS)\SOURCE\RTL\SYS;$(BDS)\source\rtl\win;$(BDS)\source\ToolsAPI;$(BDS)\SOURCE\IBX;$(BDS)\source\Internet;$(BDS)\SOURCE\PROPERTY EDITORS;$(BDS)\source\soap;$(BDS)\SOURCE\XML;$(BDS)\source\Indy10\Core;$(BDS)\source\Indy10\System;$(BDS)\source\Indy10\Protocols;$(BDS)\source\fmx;$(BDS)\source\databinding\components;$(BDS)\source\databinding\engine;$(BDS)\source\databinding\graph;$(BDS)\source\data;$(BDS)\source\data\ado;$(BDS)\source\data\bde;$(BDS)\source\data\cloud;$(BDS)\source\data\datasnap;$(BDS)\source\data\dbx;$(BDS)\source\data\dsnap;$(BDS)\source\data\Test;$(BDS)\source\data\vclctrls;$(BDS)\source\data\datasnap\connectors;$(BDS)\source\data\datasnap\proxygen;$(BDS)\source\DataExplorer;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\Common\dunit;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\Common;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject;$(BDS)\source\DUnit\Contrib\DUnitWizard\Source\DelphiExperts\DUnitProject\dunit;$(BDS)\source\DUnit\src;$(BDS)\source\DUnit\tests;$(BDS)\source\Experts;$(BDS)\source\indy\abstraction;$(BDS)\source\indy\implementation;$(BDS)\source\indyimpl;$(BDS)\source\LiveTile;$(BDS)\source\Property Editors\Indy10;$(BDS)\source\soap\wsdlimporter;$(BDS)\source\Visualizers;$(BDS)\source\xtab;$(BDS)\source\DUnit\Contrib\XMLReporting;$(BDS)\source\DUnit\Contrib\XPGen;"; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Debug DCU Path; ValueData: $(BDSLIB)\$(Platform)\debug; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: HPP Output Directory; ValueData: $(BDSCOMMONDIR)\hpp; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Language Library Path; ValueData: "$(BDSLIB)\$(Platform)\release\$(LANGDIR);$(BDS)\lib\$(LANGDIR)"; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Package DCP Output; ValueData: $(BDSCOMMONDIR)\Dcp\$(Platform); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Package DPL Output; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Package Search Path; ValueData: $(BDSCOMMONDIR)\Bpl\$(Platform); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Search Path; ValueData: "$(BDSLIB)\$(Platform)\release;$(BDSUSERDIR)\Imports;$(BDS)\Imports;$(BDSCOMMONDIR)\Dcp\$(Platform);$(BDS)\include"; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Translated Debug Library Path; ValueData: $(BDSLIB)\$(Platform)\debug\$(LANGDIR); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Translated Library Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Library\Win64; ValueType: string; ValueName: Translated Resource Path; ValueData: $(BDSLIB)\$(Platform)\release\$(LANGDIR); Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Maintenance; ValueType: string; ValueName: InstallDir; ValueData: {app}
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Maintenance; ValueType: string; ValueName: OSX32; ValueData: TRUE; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Maintenance; ValueType: string; ValueName: OSX32; ValueData: FALSE; Components: not OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Maintenance; ValueType: string; ValueName: WIN64; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\New Component; ValueType: string; ValueName: PalettePage; ValueData: Samples
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\New Component; ValueType: string; ValueName: UnitDirName; ValueData: $(BDSPROJECTSDIR)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Personalities; ValueType: string; ValueName: ; ValueData: RAD Studio XE4
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Personalities; ValueType: string; ValueName: Delphi.Win32; ValueData: Delphi XE4
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\iOSDevice-Ad-hoc; ValueType: string; ValueName: DeveloperIdentity; ValueData: iPhone Distribution; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\iOSDevice-AppStore; ValueType: string; ValueName: DeveloperIdentity; ValueData: iPhone Distribution; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\iOSDevice-Debug; ValueType: string; ValueName: DeveloperIdentity; ValueData: iPhone Developer; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\iOSDevice-Debug; ValueType: string; ValueName: ProvisioningProfile; ValueData: iPhone Developer; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\OSX32-OSXSandBox; ValueType: string; ValueName: DeveloperIdentity; ValueData: Mac Developer; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Provision\OSX32-OSXSandBox; ValueType: string; ValueName: ProvisioningProfile; ValueData: 3rd Party Mac Developer Installer; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: ActiveX; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Additional; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: BDE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: C# Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Code Snippets; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: CodeGear Data Provider; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Copied Palette Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Data Access; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Data Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Client; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Datasnap Server; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: DB Web; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: dbExpress; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects | New Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi for .NET Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Active X; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects | Delphi Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Delphi Projects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Enterprise Core Objects; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: HTML Elements; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Markup Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Other Files; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Palette Hidden Items; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Standard; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: System; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Web Controls; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Win 3.1; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Win32; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Window Forms; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Data Components; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\ToolForm\Mapping; ValueType: string; ValueName: Windows Forms Dialogs; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer; ValueType: string; ValueName: Order; ValueData: @(IDE, sQualityCentral),@(IDE, sVCLStyleDesigner),@(IDE, sXMLMapper)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer; ValueType: string; ValueName: Params; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: Params; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: Path; ValueData: {app}\Bin\BitmapStyleDesigner.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: Title; ValueData: @(IDE, sBitmapStyleDesigner)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sBitmapStyleDesigner); ValueType: string; ValueName: WorkingDir; ValueData: {app}\bin
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sQualityCentral); ValueType: string; ValueName: Params; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sQualityCentral); ValueType: string; ValueName: Path; ValueData: {app}\QualityCentral\QCClientDownload.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sQualityCentral); ValueType: string; ValueName: Title; ValueData: @(IDE, sQualityCentral)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sQualityCentral); ValueType: string; ValueName: WorkingDir; ValueData: {app}\QualityCentral
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: Params; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: Path; ValueData: {app}\Bin\xmlmapper.exe
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: Title; ValueData: @(IDE, sXMLMapper)
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\11.0\Transfer\@(IDE, sXMLMapper); ValueType: string; ValueName: WorkingDir; ValueData: {app}\Bin
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Borland Shared; ValueType: string; ValueName: SharedFilesDir; ValueData: {cf32}\Borland Shared
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\AuditsCLI.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\bds.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\BDSLauncher.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\bdsreg.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\BDSSetLang.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\BitmapStyleDesigner.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\cgconfig.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\convert.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dbexplor.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dcc32.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dcc64.exe; ValueData: EN; Components: X64
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dccios32.exe; ValueData: EN; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dcciosarm.exe; ValueData: EN; Components: IOS
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\dccosx.exe; ValueData: EN; Components: OSX
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\drinterop.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\etm.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\FMXMetropolisUIStyleViewer.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\FMXMobileStyleViewer.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\FMXStyleViewer.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\Formatter.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\GenDocCLI.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\LicenseManager.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\paclient.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\scktsrvr.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\serverinfo.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\sqlmon.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\tregsvr.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\VCLStyleViewer.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\webappdbg.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\WSDLImp.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {app}\Bin\xmlmapper.exe; ValueData: EN
Root: HKLM; SubKey: SOFTWARE\Embarcadero\Locales; ValueType: string; ValueName: {win}\Microsoft.NET\Framework\v3.5\MSBuild.exe; ValueData: EN

Root: HKLM; SubKey: SOFTWARE\Borland\BLW32; ValueType: string; ValueName: BLAPIPATH; ValueData: {cf32}\Borland Shared\BDE\
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: CONFIGFILE01; ValueData: {cf32}\Borland Shared\BDE\IDAPI32.CFG
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: DLLPath; ValueData: {cf32}\Borland Shared\BDE\
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: RESOURCE; ValueData: 0009
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: SaveConfig; ValueData: WIN32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine; ValueType: string; ValueName: UseCount; ValueData: 1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 7
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: MDX BLOCK SIZE; ValueData: 1024
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\DBASE\TABLE CREATE; ValueType: string; ValueName: MEMO FILE BLOCK SIZE; ValueData: 1024
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\FOXPRO\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 25
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft Access Driver (*.mdb)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Access Driver (*.mdb)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft dBase Driver (*.dbf)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft dBase Driver (*.dbf)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BATCH COUNT; ValueData: 200
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BLOB SIZE; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: BLOBS TO CACHE; ValueData: 64
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ENABLE BCD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ENABLE SCHEMA CACHE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: MAX ROWS; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ODBC DSN; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: ROWSET SIZE; ValueData: 20
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE DIR; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE SIZE; ValueData: 8
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SCHEMA CACHE TIME; ValueData: -1
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SQLPASSTHRU MODE; ValueData: SHARED AUTOCOMMIT
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DLL; ValueData: IDODBC01.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DLL32; ValueData: IDODBC32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: ODBC DRIVER; ValueData: Microsoft Excel Driver (*.xls)
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\Microsoft Excel Driver (*.xls)\INIT; ValueType: string; ValueName: VERSION; ValueData: 5.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: DATABASE NAME; ValueData: DRIVE:/PATH/DATABASE.MDB
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: LANGDRIVER; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: OPEN MODE; ValueData: READ/WRITE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: SYSTEM DATABASE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\DB OPEN; ValueType: string; ValueName: USER NAME; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: DLL32; ValueData: IDDAO32.DLL
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: DRIVER FLAGS; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: TRACE MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: TYPE; ValueData: SERVER
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\MSACCESS\INIT; ValueType: string; ValueName: VERSION; ValueData: 1.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: TYPE; ValueData: FILE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: BLOCK SIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: FILL FACTOR; ValueData: 95
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: LEVEL; ValueData: 7
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\DRIVERS\PARADOX\TABLE CREATE; ValueType: string; ValueName: STRICTINTEGRTY; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: FOURDIGITYEAR; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: LEADINGZEROD; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: LEADINGZEROM; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: MODE; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: SEPARATOR; ValueData: /
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\DATE; ValueType: string; ValueName: YEARBIASED; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: DECIMALDIGITS; ValueData: 2
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: DECIMALSEPARATOR; ValueData: .
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: LEADINGZERON; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\NUMBER; ValueType: string; ValueName: THOUSANDSEPARATOR; ValueData: ,
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: AMSTRING; ValueData: AM
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: MILSECONDS; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: PMSTRING; ValueData: PM
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: SECONDS; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\FORMATS\TIME; ValueType: string; ValueName: TWELVEHOUR; ValueData: TRUE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: AUTO ODBC; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: DATA REPOSITORY; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: DEFAULT DRIVER; ValueData: PARADOX
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LANGDRIVER; ValueData: DBWINUS0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LOCAL SHARE; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: LOW MEMORY USAGE LIMIT; ValueData: 32
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MAXBUFSIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MAXFILEHANDLES; ValueData: 48
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MEMSIZE; ValueData: 16
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MINBUFSIZE; ValueData: 128
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: MTS POOLING; ValueData: FALSE
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SHAREDMEMLOCATION; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SHAREDMEMSIZE; ValueData: 2048
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SQLQRYMODE; ValueData: 
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: SYSFLAGS; ValueData: 0
Root: HKLM; SubKey: SOFTWARE\Borland\Database Engine\Settings\SYSTEM\INIT; ValueType: string; ValueName: VERSION; ValueData: 4.0

Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open; ValueType: string; ValueName: FriendlyName; ValueData: Embarcadero RAD Studio XE4
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher
Root: HKCR; SubKey: Applications\bdsLauncher.exe\shell\open\command\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system

Root: HKCR; SubKey: .BDSDEPLOY; ValueType: string; ValueName: ; ValueData: BDS.BDSDEPLOYFile; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: string; ValueName: ; ValueData: "BDS Deploy File  "; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1700; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\deployide180.bpl"",0"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSDEPLOY
Root: HKCR; SubKey: BDS.BDSDEPLOYFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSDEPLOY

Root: HKCR; SubKey: .BDSGROUP; ValueType: string; ValueName: ; ValueData: BDS.ProjectGroup; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project Group; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1713; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSGROUP
Root: HKCR; SubKey: BDS.ProjectGroup\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSGROUP

Root: HKCR; SubKey: .BDSPROJ; ValueType: string; ValueName: ; ValueData: BDS.ProjectFile; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project File; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1711; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",1"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\BDSPROJ
Root: HKCR; SubKey: BDS.ProjectFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\BDSPROJ

Root: HKCR; SubKey: .CONFIG; ValueType: string; ValueName: ; ValueData: BDS.ConfigFile; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Config File; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1702; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\dotnetaspide180.bpl"",6"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\CONFIG
Root: HKCR; SubKey: BDS.ConfigFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\CONFIG

Root: HKCR; SubKey: .DFM; ValueType: string; ValueName: ; ValueData: BDS.DfmFile; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: string; ValueName: ; ValueData: Delphi Form; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1706; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",1"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DFM
Root: HKCR; SubKey: BDS.DfmFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DFM

Root: HKCR; SubKey: .DPK; ValueType: string; ValueName: ; ValueData: BDS.DpkFile; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1707; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",2"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPK
Root: HKCR; SubKey: BDS.DpkFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPK

Root: HKCR; SubKey: .DPKW; ValueType: string; ValueName: ; ValueData: BDS.DpkwFile; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: string; ValueName: ; ValueData: Delphi Package; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1707; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",2"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPKW
Root: HKCR; SubKey: BDS.DpkwFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPKW

Root: HKCR; SubKey: .DPR; ValueType: string; ValueName: ; ValueData: BDS.DprFile; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1709; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",3"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPR
Root: HKCR; SubKey: BDS.DprFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPR

Root: HKCR; SubKey: .DPROJ; ValueType: string; ValueName: ; ValueData: BDS.DProjFile; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: string; ValueName: ; ValueData: Delphi Project File; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1709; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",3"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\DPROJ
Root: HKCR; SubKey: BDS.DProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\DPROJ

Root: HKCR; SubKey: .FMX; ValueType: string; ValueName: ; ValueData: BDS.FmxFile; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile; ValueType: string; ValueName: ; ValueData: FireMonkey Form; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1717; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",4"; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\FMX
Root: HKCR; SubKey: BDS.FmxFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\FMX

Root: HKCR; SubKey: .GROUPPROJ; ValueType: string; ValueName: ; ValueData: BDS.GroupProjFile; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile; ValueType: string; ValueName: ; ValueData: Embarcadero RAD Studio Project Group; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1713; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bds.exe"",2"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\GROUPPROJ
Root: HKCR; SubKey: BDS.GroupProjFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\GROUPPROJ

Root: HKCR; SubKey: .PAS; ValueType: string; ValueName: ; ValueData: BDS.PasFile; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: string; ValueName: ; ValueData: Delphi Source File; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile; ValueType: expandsz; ValueName: FriendlyTypeName; ValueData: @%CommonProgramFiles%\Embarcadero\Shell\BDSSR.dll,-1710; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: """{app}\Bin\delphicoreide180.bpl"",6"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\Command; ValueType: string; ValueName: ; ValueData: """{app}\Bin\bdsLauncher.exe"" ""{app}\Bin\bds.exe"" /np"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec; ValueType: string; ValueName: ; ValueData: "[open(""%1"")]"; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\application; ValueType: string; ValueName: ; ValueData: bdslauncher; Components: ASSOC\PAS
Root: HKCR; SubKey: BDS.PasFile\Shell\Open\ddeexec\topic; ValueType: string; ValueName: ; ValueData: system; Components: ASSOC\PAS

[Code]
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2012.12.12
//功能：引入外部 ISS 支持例程
//参数：
////////////////////////////////////////////////////////////////////////////////
#include "Others\Include\DirectX.iss"
#include "Others\Include\FireWall.iss"
#include "Others\Include\Isxdl.iss"
#include "Others\Include\RegSvr.iss"

const
  dotnetfx20sp2_url_x86 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x86.exe';
  dotnetfx20sp2_url_x64 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x64.exe';

const
  defFileAssocCaption   = 'Delphi File Associations';

  defIOSCaption         = 'Mobile Features';
  defOSXCaption         = 'OS X Cross Platform Development';

var
  idxAssocLow, idxAssocHigh: Integer;

var
  NeedDownLoadNetFx20: Boolean;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2011.08.08
//功能：判断是否需要安装网上下载的 NetFx20SP2_x86/NetFx20SP2_x64
//参数：
////////////////////////////////////////////////////////////////////////////////
function CheckExecuteFramework20(): Boolean;
var
  DownLoadSize: Integer;
  FileName: string;
begin
  if not NeedDownLoadNetFx20 then
    Result := False
  else begin
    FileName := ExpandConstant('{tmp}\NetFx20SP2.exe');
    Result := FileSize(FileName, DownLoadSize) and (DownLoadSize > 24 * 1024 * 1024);
  end;
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
//设计：Lsuper 2011.08.18
//功能：判断是否需要注册 MSBUILD GAC 文件
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsBuildFrameworkInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v3.5\Microsoft.Build.Framework.dll'));
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：检查 .NET 2.0 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsFramework20Installed(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v2.0.50727\MSBuild.exe'));
end;

function IsFramework35Installed(): Boolean;
begin
  Result := FileExists(ExpandConstant('{win}\Microsoft.NET\Framework\v3.5\MSBuild.exe'));
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
//设计：Lsuper 2011.09.10
//功能：判断是否 Win8 或以上版本
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsWin8OrHight: Boolean;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result := Version.NTPlatform and ((Version.Major > 6) or ((Version.Major = 6) and (Version.Minor = 2)));
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2012.10.24
//功能：开始下载文件
//参数：
////////////////////////////////////////////////////////////////////////////////
function LaunchDownLoadFiles(): Boolean;
var
  FileName, FileUrl: string;
  MainWnd: Integer;
begin
  if not NeedDownLoadNetFx20 then
  begin
    Result := True;
    Exit;
  end;
  try
    FileName := CustomMessage('IsxLanguage');
    ExtractTemporaryFile(FileName);
    FileName := ExpandConstant('{tmp}\') + FileName;
    isxdl_SetOption('language', FileName);
  except
    Log('LaunchDownLoadFiles: set language error for ' + ActiveLanguage());
  end;
  if IsWin64 then
    FileUrl := dotnetfx20sp2_url_x64
  else FileUrl := dotnetfx20sp2_url_x86;
  FileName := ExpandConstant('{tmp}\NetFx20SP2.exe');
  DeleteFile(FileName);
  isxdl_ClearFiles();
  isxdl_AddFile(FileUrl, FileName);
  MainWnd := StrToInt(ExpandConstant('{wizardhwnd}'));
  Result := isxdl_DownloadFiles(MainWnd) <> 0;
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
  if IsComponentSelected('X64') then
    RedistPlatformFiles('{app}\bin64', '{app}\Redist\win64', '{app}\Redist\win64.redistlist');
  if IsComponentSelected('OSX') then
    RedistPlatformFiles('{app}\binosx32', '{app}\Redist\osx32', '{app}\Redist\osx32.redistlist');

  RedistStyleFiles('{commondocs}\RAD Studio\11.0\Styles', '{app}\Redist\styles\Fmx', '*.style');
  RedistStyleFiles('{commondocs}\RAD Studio\11.0\Styles', '{app}\Redist\styles\vcl', '*.vsf');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2011.08.08
//功能：修改安装时间
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure SetInstallInformation();
var
  S: string;
begin
  S := GetDateTimeString('mm/dd/yyyy hh:nn:ss', '-', '|');
  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\Embarcadero\BDS\11.0', 'RegMergeTimeStamp', S);
  S := GetComputerNameString;
  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\Embarcadero\BDS\11.0', 'RegCompany', S); { 'Embarcadero' }
  S := GetUserNameString;
  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'Software\Embarcadero\BDS\11.0', 'RegOwner', S); { 'Delphi' }
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
  FileName := ExpandConstant('{app}\bin\dbkw64_17_0.exe');
  ActiveWindowsFireWallRule('Embarcadero Debugger Kernel', FileName, Active, True);
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
  RegisterServer('{app}\bin\bordbk180.dll', ARegister);
  RegisterServer('{app}\bin\bordbk180N.dll', ARegister);
  RegisterServer('{app}\bin\midas.dll', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.Common.tlb', ARegister);
  RegisterServer('{app}\bin\Borland.Data.Explorer.tlb', ARegister);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：处理 dcc32.cfg 等实际环境相关的文件
//参数：
////////////////////////////////////////////////////////////////////////////////
procedure ReplaceAppPathFile(const AFile, AppPath: string);
var
  S: string;
  Ret: Integer;
begin
  if LoadStringFromFileEx(AFile, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\Embarcadero\RAD Studio\11.0', AppPath, True);
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
  AppPath, FileName,
  S, T: String;
  Ret: Integer;
begin
  AppPath := ExpandConstant('{app}');
  FileName := AppPath + '\Bin\dcc32.cfg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\dcc64.cfg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\dccosx.cfg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\dccios32.cfg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\dcciosarm.cfg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\EnableIDEUpdateCheck.reg';
  ReplaceAppPathFile(FileName, AppPath);

  FileName := AppPath + '\Bin\rsvars.bat';
  if LoadStringFromFileEx(FileName, S) then
  begin
    Ret := StringChangeEx(S, 'C:\Program Files\Embarcadero\RAD Studio\11.0', AppPath, True);
    T := ExpandConstant('{commondocs}');
    Ret := Ret + StringChangeEx(S, 'C:\Documents and Settings\All Users\Documents', T, True);
    T := ExpandConstant('{win}');
    Ret := Ret + StringChangeEx(S, 'c:\WINDOWS', T, True);
    if Ret > 0 then SaveStringToFile(FileName, S, False);
  end;
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
    Ret := MsgBox('Do you want to remove all Embarcadero RAD Studio XE4 entries from your registry?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2);
    if Ret = IDNO then
      Exit;
  end;
  RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'Software\Embarcadero\BDS\11.0');
  RegDeleteKeyIncludingSubkeys(HKEY_CURRENT_USER_32, 'SOFTWARE\Embarcadero\ETM\17.1');
  RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE_32, 'Software\Embarcadero\BDS\11.0');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.09.23
//功能：更新环境变量
//参数：
////////////////////////////////////////////////////////////////////////////////
function SetEnvironmentVariableA(lpName, lpValue: PAnsiChar): BOOL; external 'SetEnvironmentVariableA@kernel32.dll stdcall';

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2009.03.20
//功能：更新环境变量
//参数：
//注意：卸载期间不能使用 IsTaskSelected 判断
////////////////////////////////////////////////////////////////////////////////
procedure UpdateEnvironment(AInstall: Boolean);
var
  AppPath, S, Prex: string;
  V: AnsiString;
begin
  if AInstall and not IsTaskSelected('ENV') then
    Exit;
  if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SYSTEM\CurrentControlSet\Control\Session Manager\Environment', 'Path', S) then
    Exit;
  AppPath := ExpandConstant('{commondocs}\RAD Studio\11.0\Bpl');
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
  V := S;
  SetEnvironmentVariableA('Path', PAnsiChar(S));
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
  Ret: Integer;
begin
  if IsWin8OrHight and not IsFramework35Installed then
  begin
    MsgBox('The Microsoft .NET Framework 3.5.1 is not installed. Please go to "Control Panel" – Programs – "Turn Windows features on or off" – Check "Microsoft .NET Framework 3.5.1"', mbConfirmation, MB_OK);
    Result := False;
    Exit;
  end;
  if not IsDirectXInstalled then
  begin
    MsgBox('The Microsoft DirectX 9 is not installed. Please upgrade your DirectX Version at http://www.microsoft.com/windows/directx/default.mspx', mbInformation, MB_OK);
    Result := False;
    Exit;
  end;
  if IsWin64 then
  begin
    FileName := ExpandConstant('{src}\NetFx20SP2_x64.exe');
    FileUrl := dotnetfx20sp2_url_x64;
  end
  else begin
    FileName := ExpandConstant('{src}\NetFx20SP2_x86.exe');
    FileUrl := dotnetfx20sp2_url_x86;
  end;
  if IsFramework20Installed or FileExists(FileName) then
  begin
    Result := True;
    Exit;
  end;
  Ret := MsgBox('The Microsoft .NET Framework 2.0 Service Pack 2 is not installed. Would you like to download Setup anyway?', mbConfirmation, MB_YESNOCANCEL or MB_DEFBUTTON2);
  case Ret of
    IDYES:
      begin
        ShellExec('open', FileUrl, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
        Result := False;
      end;
    IDNO:
      begin
        NeedDownLoadNetFx20 := True;
        Result := True;
      end;
  else
    Result := False; { IDCANCEL }
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化界面
//参数：
//注意：通过 CreateMutex 避免第二个安装实例同时运行
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
var
  I: Integer;
  S: string;
begin
  CreateMutex('{#AppSetupMutex}');

  with WizardForm.ComponentsList do
  begin
    for I := 0 to Items.Count - 1 do
    begin
      S := ItemCaption[I];
      if S = defFileAssocCaption then
        idxAssocLow := I + 1
      else if (S <> '') and (S[1] = '.') then
        idxAssocHigh := I;
    end;
    for I := idxAssocLow to idxAssocHigh do
      Checked[I] := not CheckFileAssoc(ItemCaption[I]);
#ifndef FULLMODE
    for I := 0 to Items.Count - 1 do
    begin
      S := ItemCaption[I];
      if (S = defIOSCaption) or (S = defOSXCaption) then
      begin
        Checked[I] := False;
        ItemEnabled[I] := False;
      end;
    end;
#endif
  end;
  with WizardForm do
  begin
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
  if Pos('/SP-', UpperCase(GetCmdTail)) > 0 then
    case CurPageID of
      wpSelectComponents:
        WizardForm.BackButton.Visible := False;
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
        RegisterFiles(True);
        ReplaceConfigFile;
        RedistSetupFiles;
        SetInstallInformation;
        SetWindowsFireWallRule(True);
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
        UpdateEnvironment(False);
      end;
    usPostUninstall:
      begin
        RemoveRegistryEntries;
        SetWindowsFireWallRule(False);
      end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2012.10.23
//功能：设置下载信息
//参数：
//注意：Only run this at the "Ready To Install" wizard page.
////////////////////////////////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then
    Result := LaunchDownLoadFiles()
  else Result := True;
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
