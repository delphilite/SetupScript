;{ *********************************************************************** }
;{                                                                         }
;{   Borland Delphi 2006 Help 安装脚本                                     }
;{                                                                         }
;{   设计：Lsuper 2010.02.02                                               }
;{   备注：                                                                }
;{   审核：                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2010 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   "10.0.2558.35231"
#define AppLiteVersion  "1.3"
#define AppFileNamePrex "Borland.Delphi.2006.Help"
#define AppNamePrex     "Borland Delphi 2006 Help"
#define AppWebURL       "http://www.borland.com"
#define AppSupportURL   "http://support.borland.com/"

[Setup]
AllowUNCPath=false
AppComments=Borland Delphi 2006 Help
AppCopyright=Copyright ? 1996-2007 Borland Software Corporation
AppID={{8A28FF5A-7B88-4D43-AE4D-D060B906CF6A}
AppMutex={{C523678D-1C4F-489C-8B30-6341222879DD}
AppName={#AppNamePrex} v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL={#AppWebURL}
AppSupportURL={#AppSupportURL}
AppUpdatesURL={#AppWebURL}
AppVerName={#AppNamePrex} v{#AppLiteVersion}
AppVersion={#AppBinVersion}
ChangesAssociations=yes
DefaultDirName={reg:HKLM\Software\Borland\BDS\4.0,RootDir|{pf32}\Borland\BDS\4.0}
DefaultGroupName=Borland Developer Studio 2006
DirExistsWarning=no
OutputBaseFilename={#AppFileNamePrex}.Repack.v{#AppLiteVersion}
OutputDir=Output
PrivilegesRequired=admin
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayName=Borland Delphi 2006 Help
VersionInfoCompany=Borland Software Corporation
VersionInfoCopyright=Copyright ? 1996-2007 Borland Software Corporation
VersionInfoDescription=Borland? Developer Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Files\Borland\BDS\4.0\license.rtf
SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=zip
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

chs.RunEntryExec=运行 %1
en.RunEntryExec=Run %1

[Tasks]
Name: ICON; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}

[Dirs]

[Files]
Source: {src}\NetFx20SP2_x64.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and IsWin64; ExternalSize: 48524296
Source: {src}\NetFx20SP2_x86.exe; Flags: external dontcopy; Check: not IsFrameworkInstalled and not IsWin64; ExternalSize: 25001480

Source: Files\Borland\BDS\4.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\DExplore\*; DestDir: {app}\Help\DExplore; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Utils\ReadMe.txt; DestDir: {app}\Help; Flags: isreadme ignoreversion sortfilesbyextension

[Icons]
Name: {group}\Documentation; Filename: {cf32}\Microsoft Shared\Help 8\dexplore.exe; Parameters: /helpcol ms-help://borland.bds4; Comment: Opens CodeGear RAD Studio Documentation
Name: {group}\Uninstall Documentation; Filename: {uninstallexe}; Comment: Uninstall this CodeGear RAD Studio Documentation

Name: {userdesktop}\Documentation; Filename: {cf32}\Microsoft Shared\Help 8\dexplore.exe; Parameters: /helpcol ms-help://borland.bds4; Comment: Opens CodeGear RAD Studio Documentation; Tasks: ICON

[Run]
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFrameworkInstalled and not IsWin64

Filename: {app}\Help\DExplore\install.exe; WorkingDir: {app}\Help\DExplore; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft Document Explorer 2005}; Check: not IsDocumentExplorerInstalled
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusInstalling,CodeGear RAD Studio Documentation}

Filename: {cf32}\Microsoft Shared\Help 8\dexplore.exe; Parameters: /helpcol ms-help://borland.bds4; Flags: postinstall unchecked nowait runascurrentuser; Description: {cm:RunEntryExec,RAD Studio Documentation}

[UninstallRun]
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusUninstalling,CodeGear RAD Studio Documentation}

[InstallDelete]

[UninstallDelete]
Name: {app}\Help\Doc\H2Reg_Log.txt; Type: files

[Registry]
Root: HKLM; SubKey: Software\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2100.bpl; ValueData: Borland HtmlHelp Viewer; Check: IsDelphiInstalled
Root: HKCU; SubKey: Software\Borland\BDS\4.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2100.bpl; ValueData: Borland HtmlHelp Viewer; Check: IsDelphiInstalled and IsDelphiInited

[Code]
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Delphi 2006 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInstalled(): Boolean;
var
  BDS: String;
begin
  Result := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Borland\BDS\4.0', 'App', BDS) and FileExists(BDS);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Delphi 2006 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInited(): Boolean;
begin
  Result := RegKeyExists(HKEY_CURRENT_USER, 'Software\Borland\BDS\4.0');
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2010.02.10
//功能：检查 Microsoft Document Explorer 2005 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsDocumentExplorerInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{cf32}\Microsoft Shared\Help 8\dexplore.exe'));
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
      end;
    usPostUninstall:
      begin
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
