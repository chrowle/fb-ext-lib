; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D60E6A7A-A036-49DD-AAD7-386B93CD9634}
AppName=FreeBASIC Extended Library
AppVersion=0.3.1
;AppVerName=FreeBASIC Extended Library 0.3.1
AppPublisher=FreeBASIC Extended Library Development Team
AppPublisherURL=http://ext.freebasic.net
AppSupportURL=http://ext.freebasic.net
AppUpdatesURL=http://ext.freebasic.net
DefaultDirName={pf}\FreeBASIC
DirExistsWarning=no
AllowRootDirectory=yes
DefaultGroupName=FreeBASIC Extended Library
AllowNoIcons=yes
LicenseFile=C:\Projects\ext\COPYING
InfoBeforeFile=C:\Projects\ext\WIN32-installer.txt
OutputDir=C:\Users\Ebben\Desktop
OutputBaseFilename=setup-ext-0-3-1
Compression=lzma2
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Projects\ext\inc\*"; DestDir: "{app}\inc"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\lib\*"; DestDir: "{app}\lib"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\bin\*"; DestDir: "{app}\ext-bin"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\docs\FramedHTML\*"; DestDir: "{app}\docs\ext\html"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\docs\freetype\*"; DestDir: "{app}\docs\ext\freetype"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\docs\jpeg\*"; DestDir: "{app}\docs\ext\jpeg"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\docs\zlib\*"; DestDir: "{app}\docs\ext\zlib"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\docs\LICENSE.txt"; DestDir: "{app}\docs\ext\"; Flags: ignoreversion 
Source: "C:\Projects\ext\examples\*.bas"; DestDir: "{app}\ext-examples"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Projects\ext\examples\*.bi"; DestDir: "{app}\ext-examples"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,FreeBASIC Extended Library}"; Filename: "http://ext.freebasic.net"
Name: "{group}\{cm:UninstallProgram,FreeBASIC Extended Library}"; Filename: "{uninstallexe}"
Name: "{group}\API Reference"; Filename: "{app}\docs\ext\html\index.html"

