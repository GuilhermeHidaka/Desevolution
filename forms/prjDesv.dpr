program prjDesv;

uses
  Vcl.Forms,
  uLogin in 'uLogin.pas' {frmLogin},
  uMenu in 'uMenu.pas' {frmMenu},
  uClientes in 'uClientes.pas' {frmParceiros},
  uDM in 'uDM.pas' {DM: TDataModule},
  uConsulta in 'uConsulta.pas' {frmConsultaParceiros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
