program prjDesv;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {frmLogin},
  uMenu in 'uMenu.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
