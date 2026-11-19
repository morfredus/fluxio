; Installateur Fluxio (Inno Setup 6). Compile par scripts\windows\package-win.ps1 : ISCC /DAppVersion=<version> installer\fluxio.iss
; Installation par utilisateur (sans droits administrateur) ; les donnees (%APPDATA%\Fluxio) ne sont jamais touchees, ni a la mise a jour ni a la desinstallation.
#ifndef AppVersion
  #define AppVersion "0.0.0"
#endif

[Setup]
AppId={{6B0F7C1E-4D52-4C0B-9A47-F1A5E0C3D9B2}
AppName=Fluxio
AppVersion={#AppVersion}
AppPublisher=Frederic Biron
AppPublisherURL=https://github.com/morfredus/fluxio
DefaultDirName={autopf}\Fluxio
DefaultGroupName=Fluxio
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
SetupIconFile=..\resources\fluxio.ico
UninstallDisplayIcon={app}\Fluxio.exe
LicenseFile=..\LICENSE
OutputDir=..\dist
OutputBaseFilename=Fluxio-{#AppVersion}-win64-setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
DisableProgramGroupPage=yes

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\dist\Fluxio\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Fluxio"; Filename: "{app}\Fluxio.exe"
Name: "{autodesktop}\Fluxio"; Filename: "{app}\Fluxio.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Fluxio.exe"; Description: "{cm:LaunchProgram,Fluxio}"; Flags: nowait postinstall skipifsilent
