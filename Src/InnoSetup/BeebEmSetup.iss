; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=BeebEm
AppVerName=BeebEm V3.7
AppPublisher=Mike Wyatt
AppPublisherURL=http://www.mikebuk.dsl.pipex.com/beebem/index.html
AppSupportURL=http://www.mikebuk.dsl.pipex.com/beebem/index.html
AppUpdatesURL=http://www.mikebuk.dsl.pipex.com/beebem/index.html
DefaultDirName={pf}\BeebEm
DefaultGroupName=BeebEm
OutputDir=.
OutputBaseFilename=BeebEm37
Compression=lzma
SolidCompression=yes
VersionInfoVersion=3.7.0.0

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[InstallDelete]
Name: {app}\msvcp80.dll; Type: files
Name: {app}\msvcr80.dll; Type: files
Name: {app}\Documents; Type: filesandordirs
Name: {app}\Hardware; Type: filesandordirs

[Dirs]
Name: {userdocs}\BeebEm

[Files]
Source: ..\..\BeebEm.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\Documents\*; DestDir: {app}\Documents; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\Hardware\*; DestDir: {app}\Hardware; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\UserData\*; DestDir: {app}\UserData; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\BeebEm.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\BeebEmLocal.vbs; DestDir: {app}; Flags: ignoreversion
Source: ..\..\BeebEmTorch.vbs; DestDir: {app}; Flags: ignoreversion
Source: ..\..\CHANGES.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\COPYRIGHT.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\README.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\README_Z80.TXT; DestDir: {app}; Flags: ignoreversion
Source: ..\..\RelayOff.snd; DestDir: {app}; Flags: ignoreversion
Source: ..\..\RelayOn.snd; DestDir: {app}; Flags: ignoreversion
Source: ..\..\Src.zip; DestDir: {app}; Flags: ignoreversion
Source: ..\..\Teletext.fnt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\zlib1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\UserData\*; DestDir: {userdocs}\BeebEm; Flags: ignoreversion recursesubdirs createallsubdirs onlyifdoesntexist
Source: {app}\BeebFile\*; DestDir: {userdocs}\BeebEm\BeebFile; AfterInstall: DeleteOldDataDir('{app}\BeebFile'); Flags: uninsneveruninstall external skipifsourcedoesntexist recursesubdirs
Source: {app}\BeebState\*; DestDir: {userdocs}\BeebEm\BeebState; AfterInstall: DeleteOldDataDir('{app}\BeebState'); Flags: uninsneveruninstall external skipifsourcedoesntexist recursesubdirs
Source: {app}\DiscIms\*; DestDir: {userdocs}\BeebEm\DiscIms; AfterInstall: DeleteOldDataDir('{app}\DiscIms'); Flags: uninsneveruninstall external skipifsourcedoesntexist recursesubdirs
Source: {app}\Phroms\*; DestDir: {userdocs}\BeebEm\Phroms; AfterInstall: DeleteOldDataDir('{app}\Phroms'); Flags: uninsneveruninstall external skipifsourcedoesntexist recursesubdirs
Source: {app}\Tapes\*; DestDir: {userdocs}\BeebEm\Tapes; AfterInstall: DeleteOldDataDir('{app}\Tapes'); Flags: uninsneveruninstall external skipifsourcedoesntexist recursesubdirs
Source: {app}\Econet.cfg; DestDir: {userdocs}\BeebEm; AfterInstall: DeleteOldDataFile('{app}\Econet.cfg'); Flags: uninsneveruninstall external skipifsourcedoesntexist
Source: {app}\Phroms.cfg; DestDir: {userdocs}\BeebEm; AfterInstall: DeleteOldDataFile('{app}\Phroms.cfg'); Flags: uninsneveruninstall external skipifsourcedoesntexist
Source: {app}\Roms.cfg; DestDir: {userdocs}\BeebEm; AfterInstall: DeleteOldDataFile('{app}\Roms.cfg'); Flags: uninsneveruninstall external skipifsourcedoesntexist
Source: {app}\Roms_Torch.cfg; DestDir: {userdocs}\BeebEm; AfterInstall: DeleteOldDataFile('{app}\Roms_Torch.cfg'); Flags: uninsneveruninstall external skipifsourcedoesntexist

[Icons]
Name: {group}\BeebEm; Filename: {app}\BeebEm.exe
Name: {group}\View CHANGES log; Filename: {app}\CHANGES.txt
Name: {group}\View COPYRIGHT notice; Filename: {app}\COPYRIGHT.txt
Name: {group}\View README; Filename: {app}\README.txt
Name: {group}\{cm:ProgramOnTheWeb,BeebEm}; Filename: http://www.mikebuk.dsl.pipex.com/beebem/index.html
Name: {group}\{cm:UninstallProgram,BeebEm}; Filename: {uninstallexe}
Name: {commondesktop}\BeebEm; Filename: {app}\BeebEm.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\BeebEm; Filename: {app}\BeebEm.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\BeebEm.exe; Description: {cm:LaunchProgram,BeebEm}; Flags: nowait postinstall skipifsilent

[Code]
procedure DeleteOldDataDir(dirName: String);
var
  fullDirName: String;
begin
  fullDirName := ExpandConstant(dirName);
  if DirExists(fullDirName) then begin
    DelTree(fullDirName, True, True, True);
  end;
end;

procedure DeleteOldDataFile(fileName: String);
var
  fullFileName: String;
begin
  fullFileName := ExpandConstant(fileName);
  if FileExists(fullFileName) then begin
    DeleteFile(fullFileName);
  end;
end;
