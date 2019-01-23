program chirashi;

uses
  Forms,
  Windows,
  Dialogs,
  main in 'main.pas' {FormMain},
  option in 'option.pas' {FormOption},
  About in 'About.pas' {AboutForm};

{$R *.res}

const
 MutexName = 'denmemo_Mutex';
var
 hMutex: THANDLE;


begin
  hMutex := OpenMutex(MUTEX_ALL_ACCESS, False, MutexName);
  if hMutex <> 0 then
  begin
   CloseHandle(hMutex);
   ShowMessage('�u�`���V�̗��v�͂��łɋN�����Ă��܂��B');
   Exit;
  end;
  hMutex := CreateMutex(nil, False, MutexName);

  Application.Initialize;
  Application.Title := '�`���V�̗�';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;

  ReleaseMutex(hMutex);

end.