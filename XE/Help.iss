;{ *********************************************************************** }
;{                                                                         }
;{   Embarcadero Delphi XE Help 安装脚本                                   }
;{                                                                         }
;{   设计：Lsuper 2010.09.26                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2010 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   "15.0.3890.34076"
#define AppLiteVersion  "4.1"
#define AppFileNamePrex "Embarcadero.Delphi.XE.RTM.Help"
#define AppNamePrex     "Embarcadero Delphi XE Help"
#define AppWebURL       "http://www.embarcadero.com/"
#define AppSupportURL   "http://support.embarcadero.com/"

[Setup]
AllowUNCPath=false
AppComments=Embarcadero RAD Studio for Windows
AppCopyright=Copyright ? 1996-2010 Embarcadero Technologies, Inc.
AppID={{B8DACD4E-3685-4EAF-939D-11B175421BC8}
AppModifyPath="{app}\UninsHs.exe" /m0={{B8DACD4E-3685-4EAF-939D-11B175421BC8}
AppMutex={{CF8BEF35-851D-4346-B879-C4B7497F687B}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppSupportURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=true
ChangesEnvironment=false
DefaultDirName={reg:HKLM\SOFTWARE\Embarcadero\BDS\8.0,RootDir|{pf32}\Embarcadero\RAD Studio\8.0}
DefaultGroupName=Embarcadero RAD Studio XE
DirExistsWarning=no
OutputBaseFilename={#AppFileNamePrex}.Repack.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
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

Name: de; MessagesFile: compiler:Languages\German.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: ru; MessagesFile: compiler:Languages\Russian.isl

[Messages]
BeveledLabel=RSD

[CustomMessages]
en.StatusInstalling=Installing %1...
en.StatusUninstalling=Uninstalling %1...

chs.StatusInstalling=正在安装 %1...
chs.StatusUninstalling=正在卸载 %1...

[Types]
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: RAD Studio Help; Types: FULL CUSTOM; Flags: fixed
Name: COMP; Description: Third-Party Help; Types: FULL
Name: COMP\DINKUM; Description: Dinkum C++ Library Reference; Types: FULL
Name: COMP\INDY; Description: Internet Direct (Indy) 10; Types: FULL
Name: COMP\INTRAWEB; Description: Intraweb; Types: FULL
Name: COMP\RAVE; Description: Rave Reports; Types: FULL
Name: COMP\TEECHART; Description: TeeChart 8 Standard; Types: FULL
Name: PSDK; Description: Microsoft Windows Platform SDK; Types: FULL

[Tasks]
Name: ICON; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Dirs]
Name: {userappdata}\Embarcadero\RAD Studio\8.0

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480

Source: Files\Embarcadero\RAD Studio\8.0\Help\Main\*; DestDir: {app}\Help\Doc; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\Dinkumware\*; DestDir: {app}\Help\Doc\Dinkumware; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\DINKUM
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\Indy\*; DestDir: {app}\Help\Doc\Indy; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\INDY
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\Intraweb\*; DestDir: {app}\Help\Doc\Intraweb; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\INTRAWEB
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\Rave\*; DestDir: {app}\Help\Doc\Rave; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\RAVE
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\TeeChart8Standard\*; DestDir: {app}\Help\Doc\TeeChart8Standard; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\TEECHART
Source: Files\Embarcadero\RAD Studio\8.0\Help\Doc\PSDK\*; DestDir: {app}\Help\Doc\PSDK; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: PSDK

Source: Files\DExplore\*; DestDir: {app}\Help\DExplore; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Utils\ReadMe.txt; DestDir: {app}\Help; Flags: isreadme ignoreversion sortfilesbyextension

[Icons]
Name: {group}\RAD Studio Documentation; Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_xe; Comment: Opens Embarcadero RAD Studio XE Documentation
Name: {group}\Uninstall Documentation; Filename: {uninstallexe}; Comment: Uninstall this Embarcadero RAD Studio XE Documentation

Name: {userdesktop}\RAD Studio Documentation; Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_xe; Comment: Opens Embarcadero RAD Studio XE Documentation; IconFilename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Tasks: ICON

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64

Filename: {app}\Help\DExplore\install.exe; WorkingDir: {app}\Help\DExplore; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft Document Explorer 2008}; Check: not IsDocumentExplorerInstalled
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusInstalling,Embarcadero RAD Studio XE Documentation}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\filters.ini"""; StatusMsg: {cm:StatusInstalling,Embarcadero RAD Studio XE Documentation Filters}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\psdk.ini"""; StatusMsg: {cm:StatusInstalling,Microsoft Windows Platform SDK}; Components: PSDK

Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_xe; Flags: postinstall nowait runascurrentuser; Description: {cm:LaunchProgram,RAD Studio Documentation}

[UninstallRun]
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusUninstalling,Embarcadero RAD Studio XE Documentation}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\filters.ini"""; StatusMsg: {cm:StatusUninstalling,Embarcadero RAD Studio XE Documentation Filters}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\psdk.ini"""; StatusMsg: {cm:StatusUninstalling,Microsoft Windows Platform SDK}; Components: PSDK

[InstallDelete]
Type: files; Name: {app}\Help\Doc\H2Reg_Log.txt

[UninstallDelete]
Name: {app}\Help\Doc\H2Reg_Log.txt; Type: files

[Registry]
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\InstalledUpdates; ValueType: string; ValueName: Help Update; ValueData: Help Release 1 for Delphi and C++Builder XE; Check: IsDelphiInstalled
Root: HKCU; SubKey: SOFTWARE\Embarcadero\BDS\8.0\InstalledUpdates; ValueType: string; ValueName: Help Update; ValueData: Help Release 1 for Delphi and C++Builder XE; Check: IsDelphiInstalled and IsDelphiInited
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2150.bpl; ValueData: HtmlHelp Viewer; Check: IsDelphiInstalled
Root: HKCU; SubKey: SOFTWARE\Embarcadero\BDS\8.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2150.bpl; ValueData: HtmlHelp Viewer; Check: IsDelphiInstalled and IsDelphiInited

[Code]
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Delphi XE 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInstalled(): Boolean;
var
  BDS: String;
begin
  Result := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Embarcadero\BDS\8.0', 'App', BDS) and FileExists(BDS);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Delphi XE 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInited(): Boolean;
begin
  Result := RegKeyExists(HKEY_CURRENT_USER, 'SOFTWARE\Embarcadero\BDS\8.0');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Microsoft Document Explorer 2008 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDocumentExplorerInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{cf32}\Microsoft Shared\Help 9\dexplore.exe'));
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

