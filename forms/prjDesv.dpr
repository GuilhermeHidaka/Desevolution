program prjDesv;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {frmLogin},
  uMenu in 'uMenu.pas' {frmMenu},
  uClientes in 'uClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.Run;
end.
