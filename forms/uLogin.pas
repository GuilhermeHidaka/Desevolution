unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    pnlLogin: TPanel;
    imgLogin: TImage;
    btnEntrar: TButton;
    btnFechar: TSpeedButton;
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblLogin: TLabel;
    lblSenha: TLabel;
    lblTitulo: TLabel;
    lblVersao: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uMenu;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  if (edtLogin.Text = 'Supervisor') and (edtSenha.Text = 'c3i9e5!#') then
  begin
    frmMenu := TfrmMenu.Create(self);
    frmLogin.Hide;
    frmMenu.Show;
  end
  else
  begin
    ShowMessage('Login ou Senha incorretos!');
  end;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
