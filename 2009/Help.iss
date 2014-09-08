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

#define AppBinVersion "12.0.3170.16989"
#define AppLiteVersion "1.4"

[Setup]
AllowUNCPath=false
AppCopyright=Copyright ? 1996-2008 Embarcadero Technologies, Inc.
AppID={{6621D4FA-9FC3-467D-AF54-A829BD1D8664}
AppMutex={{AFDA6321-530C-4B8C-8D01-78525CBDAD68}
AppName=CodeGear RAD Studio Documentation Lite v{#AppLiteVersion}
AppPublisher=Lsuper
AppPublisherURL=http://www.codegear.com
AppSupportURL=http://www.codegear.com
AppUpdatesURL=http://www.codegear.com
AppVerName=CodeGear RAD Studio Documentation Lite v{#AppLiteVersion}
AppVersion={#AppBinVersion}
DefaultDirName={pf32}\CodeGear\RAD Studio\6.0
DefaultGroupName=CodeGear RAD Studio 2009
LicenseFile=Files\CodeGear\RAD Studio\6.0\license.rtf
OutputBaseFilename=CodeGear.RAD.Studio.Documentation.v{#AppBinVersion}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayName=CodeGear Delphi 2009
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright ? 1996-2008 Embarcadero Technologies, Inc.
VersionInfoDescription=CodeGear RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

SetupIconFile=Files\Setup\Setup.ico
WizardImageFile=Files\Setup\SetupModern.bmp
WizardSmallImageFile=Files\Setup\SetupModernSmall.bmp

Compression=lzma
Encryption=true
Password=CED2B0AEB8DFBAECCFBC
SolidCompression=true

[Languages]
Name: chs; MessagesFile: Files\Setup\Default.isl

[Files]
Source: Files\CodeGear\RAD Studio\6.0\*; DestDir: {app}; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Microsoft\*; DestDir: {tmp}; Flags: recursesubdirs createallsubdirs sortfilesbyextension


[Registry]
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0; ValueType: string; ValueName: RegMergeTimeStamp; ValueData: 8-28-2008 08|08|08
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\InstalledUpdates; ValueType: string; ValueName: ; ValueData: 
Root: HKLM; SubKey: SOFTWARE\CodeGear\BDS\6.0\InstalledUpdates; ValueType: string; ValueName: Help Update; ValueData: Delphi and C++Builder 2009 Help

[Run]
Filename: {tmp}\DExplore.exe; WorkingDir: {tmp}; StatusMsg: Microsoft Document Explorer 2008 Setup; Parameters: /q
Filename: {tmp}\dexplorelp.exe; WorkingDir: {tmp}; StatusMsg: Microsoft Document Explorer 2008 Language Pack - CHS Setup; Parameters: /q
Filename: {app}\Help\Doc\H2Reg.exe; Parameters: "-r cmdfile=""h2reg.ini"""; WorkingDir: {app}\Help\Doc; StatusMsg: 正在注册帮助文件

[UninstallRun]
Filename: {app}\Help\Doc\H2Reg.exe; Parameters: "-u cmdfile=""h2reg.ini"""; WorkingDir: {app}\Help\Doc; StatusMsg: 正在反注册帮助文件

[Icons]
Name: {group}\CodeGear RAD Studio Documentation; Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs2009; Comment: Opens CodeGear RAD Studio Documentation
Name: {group}\Uninstall Documentation; Filename: {uninstallexe}

[Code]
////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：检查 .NET 2.0 是否已安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function IsFrameworkInstalled(): Boolean;
var
  iRetVal: Cardinal;
begin
  Result := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v2.0.50727', 'Install', iRetVal);
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：初始化安装
//参数：
////////////////////////////////////////////////////////////////////////////////
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
begin
  Result := True;
  if not IsFrameworkInstalled then
  begin
    if MsgBox('The Microsoft .NET Framework 2.0 is not installed. Would you like to download Setup anyway?', mbConfirmation, MB_YESNO or MB_DEFBUTTON2) = idYes then
      ShellExec('open', 'http://download.microsoft.com/download/5/6/7/567758a3-759e-473e-bf8f-52154438565a/dotnetfx.exe', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
    Result := False;
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
//功能：注册用户设置
//参数：
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

const
  WM_LBUTTONDOWN      = $0201;
  WM_LBUTTONUP        = $0202;

var
  CheckPassWorded: Boolean;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：跳过密码页
//参数：
////////////////////////////////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if not CheckPassWorded and (CurPageID = wpLicense) then
    with WizardForm do
  begin
    PasswordEdit.Text := 'CED2B0AEB8DFBAECCFBC';
    PostMessage(NextButton.Handle, WM_LBUTTONDOWN, 0, 0);
    PostMessage(NextButton.Handle, WM_LBUTTONUP, 0, 0);
    CheckPassWorded := True;
  end;
  Result := True;
end;

////////////////////////////////////////////////////////////////////////////////
//设计：Lsuper 2008.08.10
//功能：跳过密码页
//参数：
////////////////////////////////////////////////////////////////////////////////
function BackButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
end;
