; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=wxWidgets 3.0.0
AppVerName=wxWidgets 3.0.0
AppPublisherURL=http://codelite.org
AppSupportURL=http://codelite.org
AppUpdatesURL=http://codelite.org
DefaultDirName={sd}\wxWidgets-3.0.0
DefaultGroupName=wxWidgets-3.0.0
OutputDir=.
OutputBaseFilename=wxwidgets-3.0-tdm-gcc-471-32-devel
ChangesEnvironment=yes
FlatComponentsList=yes
SetupIconFile=box_software.ico
Compression=lzma/ultra
SolidCompression=true
InternalCompressLevel=ultra
PrivilegesRequired=none
DirExistsWarning=no
DisableDirPage=no
ChangesAssociations=yes

[Tasks]
Name: modifypath; Description: Add wxWidgets directory to your PATH environment variable;

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"

[Components]
Name: "wxWidgets"; Description: "wxWidgets, Cross-Platform GUI Library (v3.0.0)"; Types: full; Flags: fixed

[Files]
Source: "..\Runtime\wxWidgets-3.0.0\*"; DestDir: "{app}"; Flags: recursesubdirs ignoreversion ; Components: wxWidgets
Source: "..\sdk\wxconfig\wx-config.exe"; DestDir: "{app}\lib\gcc_dll"; Flags: ignoreversion; Components: wxWidgets

[Icons] 
Name: "{group}\{cm:UninstallProgram, wxWidgets}"; Filename: "{uninstallexe}"

[Registry]
; set WXWIN
Root: HKCU; Subkey: "Environment"; ValueType:string; ValueName:"WXWIN"; ValueData: "{app}"; Flags: preservestringtype
Root: HKCU; Subkey: "Environment"; ValueType:string; ValueName:"WXCFG"; ValueData: "gcc_dll\mswu"; Flags: preservestringtype

[code]
const 
    ModPathName = 'modifypath'; 
    ModPathType = 'user'; 

function ModPathDir(): TArrayOfString; 
begin 
    setArrayLength(Result, 1) 
    Result[0] := ExpandConstant('{app}\lib\gcc_dll'); 
end; 
#include "modpath.iss"
