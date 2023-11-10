unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TfrmConsulta = class(TForm)
    pnlBG: TPanel;
    pnlTopCOnsulta: TPanel;
    pnlDBgrid: TPanel;
    DBGridConsulta: TDBGrid;
    cbxCampoConsulta: TComboBox;
    edtBuscaConsulta: TEdit;
    dsParceiros: TDataSource;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

uses uClientes, uDM;

procedure TfrmConsulta.BitBtn1Click(Sender: TObject);
begin
  //par_cod
  if cbxCampoConsulta.ItemIndex = 0 then
  begin
    DM.Parceiros.Locate('PAR_COD', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  //PAR_CPF
  if cbxCampoConsulta.ItemIndex = 1 then
  begin
    DM.Parceiros.Locate('PAR_CPF', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  //para razao
  if cbxCampoConsulta.ItemIndex = 2 then
  begin
    DM.Parceiros.Locate('PAR_RAZAO', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  if cbxCampoConsulta.ItemIndex = 3 then
  begin
    DM.Parceiros.Locate('PAR_APELIDO', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  if cbxCampoConsulta.ItemIndex = 4 then
  begin
    DM.Parceiros.Locate('PAR_EMAIL', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

  if cbxCampoConsulta.ItemIndex = 5 then
  begin
    DM.Parceiros.Locate('PAR_CELULAR', edtBuscaConsulta.Text,
      [loPartialKey, loCaseInsensitive]);
  end;

(*
0 - Código
1 - CPF
2 - Apelido
3 - Razao
4 - Email
5 - Celular
6 - Bairro
7 - Logradouro
8 - Cidade
9 - UF
*)
end;

procedure TfrmConsulta.DBGridConsultaDblClick(Sender: TObject);
begin
  frmConsulta.Hide;
  // ocultar db click
  frmParceiros.Show;
end;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
cbxCampoConsulta.ItemIndex:=0;
end;

procedure TfrmConsulta.SpeedButton1Click(Sender: TObject);
begin
  frmConsulta.Hide;
  // close
  frmParceiros.Show;
end;

end.
