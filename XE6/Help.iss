;{ *********************************************************************** }
;{                                                                         }
;{   Embarcadero Delphi XE6 Help ��װ�ű�                                  }
;{                                                                         }
;{   ��ƣ�Lsuper 2013.04.24                                               }
;{   ��ע��                                                                }
;{   ��ˣ�                                                                }
;{                                                                         }
;{   Copyright (c) 1998-2014 Super Studio                                  }
;{                                                                         }
;{ *********************************************************************** }

#define AppBinVersion   "20.0.16277.1276"
#define AppLiteVersion  "9.1"
#define AppFileNamePrex "Embarcadero.Delphi.XE6.RTM.Help.Update1"
#define AppNamePrex     "Embarcadero Delphi XE6 Help Lite"

#define AppSetupID      "{6010D7CF-1847-4BE6-A070-116D4BD9E520}"
#define AppSetupMutex   "{605C774B-C156-4162-8789-1240F7138463}"

[Setup]
AllowUNCPath=false
AppComments=All rights reserved Embarcadero
AppContact=Embarcadero Technologies, Inc.
AppCopyright=Copyright ? 1996-2014 Embarcadero Technologies, Inc.
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
DefaultDirName={reg:HKLM\SOFTWARE\Embarcadero\BDS\14.0,RootDir|{pf32}\Embarcadero\Studio\14.0}
DefaultGroupName=Embarcadero RAD Studio XE6
DirExistsWarning=no
MinVersion=0,5.0.2195sp3
OutputBaseFilename={#AppFileNamePrex}.Lite.v{#AppLiteVersion}
OutputDir=Output
ShowLanguageDialog=auto
ShowTasksTreeLines=true
UninstallDisplayIcon={app}\Bin\bds.exe
UninstallDisplayName=Embarcadero Delphi and C++Builder XE6 Help System
VersionInfoCompany=Embarcadero Technologies, Inc.
VersionInfoCopyright=Copyright ? 1996-2014 Embarcadero Technologies, Inc.
VersionInfoDescription=Embarcadero RAD Studio for Windows
VersionInfoTextVersion={#AppBinVersion}
VersionInfoVersion={#AppBinVersion}

LicenseFile=Others\Utils\radstudio_license_en.rtf
SetupIconFile=Others\Utils\Setup.ico
WizardImageFile=Others\Utils\SetupModern.bmp
WizardSmallImageFile=Others\Utils\SetupModernSmall.bmp

Compression=lzma2/max
SolidCompression=true

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
BeveledLabel=XE6

[CustomMessages]
en.AdditionalOptions=Additional options:
en.StatusInstalling=Installing %1...
en.StatusUninstalling=Uninstalling %1...

chs.AdditionalOptions=����ѡ��:
chs.StatusInstalling=���ڰ�װ %1...
chs.StatusUninstalling=����ж�� %1...

[Types]
Name: FULL; Description: Full installation
Name: CUSTOM; Description: Custom installation; Flags: iscustom

[Components]
Name: CORE; Description: RAD Studio Help; Types: FULL CUSTOM; Flags: fixed
Name: COMP; Description: Third-Party Help; Types: FULL
Name: COMP\DINKUM; Description: Dinkum C++ Library Reference; Types: FULL
Name: COMP\INDY; Description: Internet Direct (Indy) 10; Types: FULL
Name: COMP\INTRAWEB; Description: Intraweb; Types: FULL
;Name: COMP\RAVE; Description: Rave Reports; Types: FULL
Name: COMP\TEECHART; Description: TeeChart 8 Standard; Types: FULL
Name: PSDK; Description: Microsoft SDK Help; Types: FULL

[Tasks]
Name: ICON;  Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalOptions}

[Dirs]
Name: {userappdata}\Embarcadero\Studio\14.0

[InstallDelete]
Type: files; Name: {app}\Help\Doc\H2Reg_Log.txt

[UninstallDelete]
Type: files; Name: {app}\Help\Doc\H2Reg_Log.txt

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

Source: Files\Embarcadero\Studio\14.0\Help\Doc\Main\*; DestDir: {app}\Help\Doc; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Files\Embarcadero\Studio\14.0\Help\Doc\Dinkumware\*; DestDir: {app}\Help\Doc\Dinkumware; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\DINKUM
Source: Files\Embarcadero\Studio\14.0\Help\Doc\Indy\*; DestDir: {app}\Help\Doc\Indy; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\INDY
Source: Files\Embarcadero\Studio\14.0\Help\Doc\Intraweb\*; DestDir: {app}\Help\Doc\Intraweb; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\INTRAWEB
Source: Files\Embarcadero\Studio\14.0\Help\Doc\PSDK\*; DestDir: {app}\Help\Doc\PSDK; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: PSDK
Source: Files\Embarcadero\Studio\14.0\Help\Doc\TeeChartStdHelp\*; DestDir: {app}\Help\Doc\TeeChartStdHelp; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension; Components: COMP\TEECHART

Source: Others\DExplore\*; DestDir: {app}\Help\DExplore; Flags: recursesubdirs ignoreversion createallsubdirs sortfilesbyextension
Source: Others\Utils\ReadMe.txt; DestDir: {app}\Help; Flags: isreadme ignoreversion sortfilesbyextension

[Icons]
Name: {group}\RAD Studio Documentation; Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_XE6; Comment: Opens Embarcadero RAD Studio XE6 Documentation
Name: {group}\Uninstall Documentation; Filename: {uninstallexe}; Comment: Uninstall this Embarcadero RAD Studio XE6 Documentation

Name: {userdesktop}\RAD Studio Documentation; Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_XE6; Comment: Opens Embarcadero RAD Studio XE6 Documentation; IconFilename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Tasks: ICON

[Run]
Filename: {tmp}\NetFx20SP2.exe;     WorkingDir: {tmp}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and CheckExecuteFramework20
Filename: {src}\NetFx20SP2_x64.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and IsWin64
Filename: {src}\NetFx20SP2_x86.exe; WorkingDir: {src}; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft .NET Framework 2.0}; Check: not IsFramework20Installed and not IsWin64

Filename: {app}\Help\DExplore\install.exe; WorkingDir: {app}\Help\DExplore; Parameters: /q; StatusMsg: {cm:StatusInstalling,Microsoft Document Explorer 2008}; Check: not IsDocumentExplorerInstalled
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusInstalling,Embarcadero RAD Studio XE6 Documentation}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\filters.ini"""; StatusMsg: {cm:StatusInstalling,Embarcadero RAD Studio XE6 Documentation Filters}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-r cmdfile=""{app}\Help\Doc\psdk.ini"""; StatusMsg: {cm:StatusInstalling,Microsoft Windows Platform SDK}; Components: PSDK

Filename: {cf32}\Microsoft Shared\Help 9\dexplore.exe; Parameters: /helpcol ms-help://embarcadero.rs_XE6; Flags: postinstall nowait runascurrentuser; Description: {cm:LaunchProgram,RAD Studio Documentation}

[UninstallRun]
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\h2reg.ini"""; StatusMsg: {cm:StatusUninstalling,Embarcadero RAD Studio XE6 Documentation}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\filters.ini"""; StatusMsg: {cm:StatusUninstalling,Embarcadero RAD Studio XE6 Documentation Filters}
Filename: {app}\Help\Doc\H2Reg.exe; WorkingDir: {app}\Help\Doc; Parameters: "-u cmdfile=""{app}\Help\Doc\psdk.ini"""; StatusMsg: {cm:StatusUninstalling,Microsoft Windows Platform SDK}; Components: PSDK

[Registry]
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\14.0\InstalledUpdates; ValueType: string; ValueName: Help Update; ValueData: Help Update 1 for Delphi XE6 and C++Builder XE6; Check: IsDelphiInstalled
Root: HKCU; SubKey: SOFTWARE\Embarcadero\BDS\14.0\InstalledUpdates; ValueType: string; ValueName: Help Update; ValueData: Help Update 1 for Delphi XE6 and C++Builder XE6; Check: IsDelphiInstalled and IsDelphiInited
Root: HKLM; SubKey: SOFTWARE\Embarcadero\BDS\14.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2200.bpl; ValueData: HtmlHelp Viewer; Check: IsDelphiInstalled
Root: HKCU; SubKey: SOFTWARE\Embarcadero\BDS\14.0\Known IDE Packages; ValueType: string; ValueName: $(BDS)\Bin\htmlhelp2200.bpl; ValueData: HtmlHelp Viewer; Check: IsDelphiInstalled and IsDelphiInited

[Code]
////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2012.12.12
//���ܣ������ⲿ ISS ֧������
//������
////////////////////////////////////////////////////////////////////////////////
#include "Others\Include\Isxdl.iss"

const
  dotnetfx20sp2_url_x86 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x86.exe';
  dotnetfx20sp2_url_x64 = 'http://download.microsoft.com/download/c/6/e/c6e88215-0178-4c6c-b5f3-158ff77b1f38/NetFx20SP2_x64.exe';

var
  NeedDownLoadNetFx20: Boolean;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2011.08.08
//���ܣ��ж��Ƿ���Ҫ��װ�������ص� NetFx20SP2_x86/NetFx20SP2_x64
//������
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
//��ƣ�Lsuper 2010.02.10
//���ܣ���� Delphi XE6 �Ƿ��Ѱ�װ
//������
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInstalled(): Boolean;
var
  BDS: String;
begin
  Result := RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Embarcadero\BDS\14.0', 'App', BDS) and FileExists(BDS);
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2010.02.10
//���ܣ���� Delphi XE6 �Ƿ��Ѱ�װ
//������
////////////////////////////////////////////////////////////////////////////////
function IsDelphiInited(): Boolean;
begin
  Result := RegKeyExists(HKEY_CURRENT_USER, 'SOFTWARE\Embarcadero\BDS\14.0');
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2010.02.10
//���ܣ���� Microsoft Document Explorer 2008 �Ƿ��Ѱ�װ
//������
////////////////////////////////////////////////////////////////////////////////
function IsDocumentExplorerInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{cf32}\Microsoft Shared\Help 9\dexplore.exe'));
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2008.08.10
//���ܣ���� .NET 2.0 �Ƿ��Ѱ�װ
//������
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
//��ƣ�Lsuper 2011.09.10
//���ܣ��ж��Ƿ� Win8 �����ϰ汾
//������
////////////////////////////////////////////////////////////////////////////////
function IsWin8OrHight: Boolean;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result := Version.NTPlatform and ((Version.Major > 6) or ((Version.Major = 6) and (Version.Minor = 2)));
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2012.10.24
//���ܣ���ʼ�����ļ�
//������
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
//��ƣ�Lsuper 2011.08.08
//���ܣ��޸İ�װʱ��
//������
////////////////////////////////////////////////////////////////////////////////
procedure SetInstallInformation();
var
  S: string;
begin
  S := GetDateTimeString('mm/dd/yyyy hh:nn:ss', '-', '|');
  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Embarcadero\BDS\14.0', 'RegMergeTimeStamp', S);
//  S := GetComputerNameString;
//  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Embarcadero\BDS\14.0', 'RegCompany', S); { 'Embarcadero' }
//  S := GetUserNameString;
//  RegWriteStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\Embarcadero\BDS\14.0', 'RegOwner', S); { 'Delphi' }
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2008.08.10
//���ܣ���ʼ����װ
//������
////////////////////////////////////////////////////////////////////////////////
function InitializeSetup(): Boolean;
var
  ErrorCode: Integer;
  FileName, FileUrl: string;
  Ret: Integer;
begin
  if IsWin8OrHight and not IsFramework35Installed then
  begin
    MsgBox('The Microsoft .NET Framework 3.5.1 is not installed. Please go to "Control Panel" �C Programs �C "Turn Windows features on or off" �C Check "Microsoft .NET Framework 3.5.1"', mbConfirmation, MB_OK);
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
//��ƣ�Lsuper 2008.08.10
//���ܣ���ʼ������
//������
//ע�⣺ͨ�� CreateMutex ����ڶ�����װʵ��ͬʱ����
////////////////////////////////////////////////////////////////////////////////
procedure InitializeWizard();
begin
  CreateMutex('{#AppSetupMutex}');
  with WizardForm do
  begin
    LicenseAcceptedRadio.Checked := True;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2008.08.10
//���ܣ�ע���û�����
//������
//ע�⣺Ҫ������ˢ��ϵͳ����������Ȼ����Ч
////////////////////////////////////////////////////////////////////////////////
procedure CurStepChanged(CurStep: TSetupStep);
begin
  case CurStep of
    ssInstall:
      begin
      end;
    ssPostInstall:
      begin
        SetInstallInformation;
      end;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2012.10.23
//���ܣ�����������Ϣ
//������
//ע�⣺Only run this at the "Ready To Install" wizard page.
////////////////////////////////////////////////////////////////////////////////
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then
    Result := LaunchDownLoadFiles()
  else Result := True;
end;

////////////////////////////////////////////////////////////////////////////////
//��ƣ�Lsuper 2008.09.03
//���ܣ��޸�ʱ����ҳ��
//������
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
